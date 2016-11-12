	.text
	.file	"make-docfile.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, progname
	movl	$1, -20(%rbp)
	movl	-8(%rbp), %edi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, %edi
	jle	.LBB0_5
# BB#1:                                 # %land.lhs.true
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#2:                                 # %if.then
	movabsq	$.L.str.1, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	stdout, %rdx
	callq	freopen
	cmpq	$0, %rax
	jne	.LBB0_4
# BB#3:                                 # %if.then.7
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	perror
	movl	$1, -4(%rbp)
	jmp	.LBB0_41
.LBB0_4:                                # %if.end
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
.LBB0_5:                                # %if.end.12
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_10
# BB#6:                                 # %land.lhs.true.15
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_10
# BB#7:                                 # %if.then.20
	movabsq	$.L.str.3, %rsi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	stdout, %rdx
	callq	freopen
	cmpq	$0, %rax
	jne	.LBB0_9
# BB#8:                                 # %if.then.26
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	perror
	movl	$1, -4(%rbp)
	jmp	.LBB0_41
.LBB0_9:                                # %if.end.30
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
.LBB0_10:                               # %if.end.32
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_15
# BB#11:                                # %land.lhs.true.35
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.4, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#12:                                # %if.then.40
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	chdir
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.46
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	perror
	movl	$1, -4(%rbp)
	jmp	.LBB0_41
.LBB0_14:                               # %if.end.50
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -20(%rbp)
.LBB0_15:                               # %if.end.52
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB0_18
# BB#16:                                # %land.lhs.true.54
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.5, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_18
# BB#17:                                # %if.then.59
	movb	$1, generate_globals
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_18:                               # %if.end.60
	movq	stdout, %rdi
	callq	fileno
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	set_binary_mode
	testb	$1, generate_globals
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB0_20
# BB#19:                                # %if.then.64
	callq	start_globals
.LBB0_20:                               # %if.end.65
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_22
# BB#21:                                # %if.then.67
	movq	stdin, %rdi
	callq	scan_c_stream
	jmp	.LBB0_35
.LBB0_22:                               # %if.else
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_23:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_34
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_25:                               # %for.cond.69
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_30
# BB#26:                                # %for.body.71
                                        #   in Loop: Header=BB0_25 Depth=2
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_28
# BB#27:                                # %if.then.78
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_30
.LBB0_28:                               # %if.end.79
                                        #   in Loop: Header=BB0_25 Depth=2
	jmp	.LBB0_29
.LBB0_29:                               # %for.inc
                                        #   in Loop: Header=BB0_25 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_25
.LBB0_30:                               # %for.end
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB0_32
# BB#31:                                # %if.then.82
                                        #   in Loop: Header=BB0_23 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	scan_file
.LBB0_32:                               # %if.end.85
                                        #   in Loop: Header=BB0_23 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               # %for.inc.86
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_23
.LBB0_34:                               # %for.end.88
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.89
	testb	$1, generate_globals
	je	.LBB0_37
# BB#36:                                # %if.then.91
	callq	write_globals
.LBB0_37:                               # %if.end.92
	movq	stdout, %rdi
	callq	ferror
	cmpl	$0, %eax
	jne	.LBB0_39
# BB#38:                                # %lor.lhs.false
	movq	stdout, %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB0_40
.LBB0_39:                               # %if.then.97
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	fatal
.LBB0_40:                               # %if.end.98
	movl	$0, -4(%rbp)
.LBB0_41:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	start_globals,@function
start_globals:                          # @start_globals
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
	subq	$16, %rsp
	movabsq	$.L.str.50, %rdi
	callq	puts
	movabsq	$.L.str.51, %rdi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	puts
	movabsq	$.L.str.52, %rdi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	puts
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	start_globals, .Lfunc_end1-start_globals
	.cfi_endproc

	.align	16, 0x90
	.type	scan_c_stream,@function
scan_c_stream:                          # @scan_c_stream
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
	subq	$2016, %rsp             # imm = 0x7E0
	movq	%rdi, -8(%rbp)
	movl	$10, -24(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_66 Depth 2
                                        #     Child Loop BB2_76 Depth 2
                                        #     Child Loop BB2_84 Depth 2
                                        #     Child Loop BB2_498 Depth 2
                                        #     Child Loop BB2_522 Depth 2
                                        #       Child Loop BB2_528 Depth 3
                                        #     Child Loop BB2_593 Depth 2
                                        #     Child Loop BB2_602 Depth 2
                                        #     Child Loop BB2_609 Depth 2
                                        #     Child Loop BB2_616 Depth 2
                                        #     Child Loop BB2_625 Depth 2
                                        #     Child Loop BB2_644 Depth 2
                                        #     Child Loop BB2_650 Depth 2
                                        #     Child Loop BB2_655 Depth 2
                                        #     Child Loop BB2_561 Depth 2
                                        #     Child Loop BB2_568 Depth 2
                                        #     Child Loop BB2_579 Depth 2
	movq	-8(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB2_2
	jmp	.LBB2_665
.LBB2_2:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$0, -25(%rbp)
	movb	$0, -26(%rbp)
	movb	$0, -27(%rbp)
	movb	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$10, -24(%rbp)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$13, -24(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_5:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$32, -24(%rbp)
	jne	.LBB2_50
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                # %while.cond.6
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$32, -24(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %while.body.8
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_7
.LBB2_9:                                # %while.end
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$68, -24(%rbp)
	je	.LBB2_11
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_11:                               # %if.end.12
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$69, -24(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.15
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_13:                               # %if.end.16
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$70, -24(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.19
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_15:                               # %if.end.20
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$83, -24(%rbp)
	jne	.LBB2_25
# BB#16:                                # %if.then.23
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$89, -24(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.26
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_18:                               # %if.end.27
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$77, -24(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.30
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_20:                               # %if.end.31
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$32, -24(%rbp)
	je	.LBB2_24
# BB#21:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$9, -24(%rbp)
	je	.LBB2_24
# BB#22:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$40, -24(%rbp)
	je	.LBB2_24
# BB#23:                                # %if.then.38
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_24:                               # %if.end.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$4, -32(%rbp)
	jmp	.LBB2_49
.LBB2_25:                               # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$86, -24(%rbp)
	jne	.LBB2_47
# BB#26:                                # %if.then.41
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$65, -24(%rbp)
	je	.LBB2_28
# BB#27:                                # %if.then.44
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_28:                               # %if.end.45
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$82, -24(%rbp)
	je	.LBB2_30
# BB#29:                                # %if.then.48
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_30:                               # %if.end.49
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$95, -24(%rbp)
	je	.LBB2_32
# BB#31:                                # %if.then.52
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_32:                               # %if.end.53
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$80, -24(%rbp)
	sete	%cl
	andb	$1, %cl
	movb	%cl, -27(%rbp)
	testb	$1, generate_globals
	je	.LBB2_42
# BB#33:                                # %if.then.57
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$73, -24(%rbp)
	jne	.LBB2_35
# BB#34:                                # %if.then.59
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$2, -32(%rbp)
	jmp	.LBB2_41
.LBB2_35:                               # %if.else.60
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$76, -24(%rbp)
	jne	.LBB2_37
# BB#36:                                # %if.then.62
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -32(%rbp)
	jmp	.LBB2_40
.LBB2_37:                               # %if.else.63
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$66, -24(%rbp)
	jne	.LBB2_39
# BB#38:                                # %if.then.65
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$3, -32(%rbp)
.LBB2_39:                               # %if.end.66
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_40
.LBB2_40:                               # %if.end.67
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_41
.LBB2_41:                               # %if.end.68
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_42
.LBB2_42:                               # %if.end.69
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	testb	$1, generate_globals
	je	.LBB2_46
# BB#43:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$3, -32(%rbp)
	jne	.LBB2_46
# BB#44:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$79, -24(%rbp)
	je	.LBB2_46
# BB#45:                                # %if.then.76
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -32(%rbp)
.LBB2_46:                               # %if.end.77
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_48
.LBB2_47:                               # %if.else.78
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_48:                               # %if.end.79
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_49
.LBB2_49:                               # %if.end.80
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_58
.LBB2_50:                               # %if.else.81
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$68, -24(%rbp)
	jne	.LBB2_56
# BB#51:                                # %if.then.83
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$69, -24(%rbp)
	je	.LBB2_53
# BB#52:                                # %if.then.86
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_53:                               # %if.end.87
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$70, -24(%rbp)
	je	.LBB2_55
# BB#54:                                # %if.then.90
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_55:                               # %if.end.91
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$85, -24(%rbp)
	sete	%cl
	andb	$1, %cl
	movb	%cl, -26(%rbp)
	jmp	.LBB2_57
.LBB2_56:                               # %if.else.95
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_57:                               # %if.end.96
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_58
.LBB2_58:                               # %if.end.97
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, generate_globals
	je	.LBB2_65
# BB#59:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -28(%rbp)
	je	.LBB2_62
# BB#60:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -27(%rbp)
	jne	.LBB2_62
# BB#61:                                # %lor.lhs.false.102
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB2_65
.LBB2_62:                               # %land.lhs.true.104
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -26(%rbp)
	jne	.LBB2_65
# BB#63:                                # %land.lhs.true.106
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$4, -32(%rbp)
	je	.LBB2_65
# BB#64:                                # %if.then.108
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_65:                               # %if.end.109
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_66
.LBB2_66:                               # %while.cond.110
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$40, -24(%rbp)
	je	.LBB2_70
# BB#67:                                # %while.body.112
                                        #   in Loop: Header=BB2_66 Depth=2
	cmpl	$0, -24(%rbp)
	jge	.LBB2_69
# BB#68:                                # %if.then.114
	jmp	.LBB2_666
.LBB2_69:                               # %if.end.115
                                        #   in Loop: Header=BB2_66 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_66
.LBB2_70:                               # %while.end.117
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$4, -32(%rbp)
	je	.LBB2_74
# BB#71:                                # %if.then.119
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$34, -24(%rbp)
	je	.LBB2_73
# BB#72:                                # %if.then.122
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_73:                               # %if.end.123
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	read_c_string_or_comment
	movl	%eax, -24(%rbp)
.LBB2_74:                               # %if.end.125
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, generate_globals
	je	.LBB2_510
# BB#75:                                # %if.then.127
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB2_76:                               # %do.body
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
# BB#77:                                # %do.cond
                                        #   in Loop: Header=BB2_76 Depth=2
	movb	$1, %al
	cmpl	$44, -24(%rbp)
	movb	%al, -1129(%rbp)        # 1-byte Spill
	je	.LBB2_82
# BB#78:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB2_76 Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1129(%rbp)        # 1-byte Spill
	je	.LBB2_82
# BB#79:                                # %lor.lhs.false.132
                                        #   in Loop: Header=BB2_76 Depth=2
	movb	$1, %al
	cmpl	$9, -24(%rbp)
	movb	%al, -1129(%rbp)        # 1-byte Spill
	je	.LBB2_82
# BB#80:                                # %lor.lhs.false.134
                                        #   in Loop: Header=BB2_76 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1129(%rbp)        # 1-byte Spill
	je	.LBB2_82
# BB#81:                                # %lor.rhs
                                        #   in Loop: Header=BB2_76 Depth=2
	cmpl	$13, -24(%rbp)
	sete	%al
	movb	%al, -1129(%rbp)        # 1-byte Spill
.LBB2_82:                               # %lor.end
                                        #   in Loop: Header=BB2_76 Depth=2
	movb	-1129(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_76
# BB#83:                                # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_84
.LBB2_84:                               # %do.body.137
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -24(%rbp)
	jge	.LBB2_86
# BB#85:                                # %if.then.139
	jmp	.LBB2_666
.LBB2_86:                               # %if.end.140
                                        #   in Loop: Header=BB2_84 Depth=2
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, input_buffer(,%rdx)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
# BB#87:                                # %do.cond.142
                                        #   in Loop: Header=BB2_84 Depth=2
	movb	$1, %al
	cmpl	$44, -24(%rbp)
	movb	%al, -1130(%rbp)        # 1-byte Spill
	je	.LBB2_92
# BB#88:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB2_84 Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1130(%rbp)        # 1-byte Spill
	je	.LBB2_92
# BB#89:                                # %lor.lhs.false.148
                                        #   in Loop: Header=BB2_84 Depth=2
	movb	$1, %al
	cmpl	$9, -24(%rbp)
	movb	%al, -1130(%rbp)        # 1-byte Spill
	je	.LBB2_92
# BB#90:                                # %lor.lhs.false.151
                                        #   in Loop: Header=BB2_84 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1130(%rbp)        # 1-byte Spill
	je	.LBB2_92
# BB#91:                                # %lor.rhs.154
                                        #   in Loop: Header=BB2_84 Depth=2
	cmpl	$13, -24(%rbp)
	sete	%al
	movb	%al, -1130(%rbp)        # 1-byte Spill
.LBB2_92:                               # %lor.end.157
                                        #   in Loop: Header=BB2_84 Depth=2
	movb	-1130(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB2_84
# BB#93:                                # %do.end.159
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movb	$0, input_buffer(,%rax)
	movq	scan_c_stream.name_size, %rax
	cmpq	-40(%rbp), %rax
	jg	.LBB2_496
# BB#94:                                # %if.then.163
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name, %rdi
	callq	free
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, scan_c_stream.name_size
	testb	$1, %cl
	jne	.LBB2_95
	jmp	.LBB2_174
.LBB2_95:                               # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_96
	jmp	.LBB2_135
.LBB2_96:                               # %cond.true.164
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_98
# BB#97:                                # %cond.true.170
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	jmp	.LBB2_99
.LBB2_98:                               # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1136(%rbp)       # 4-byte Spill
.LBB2_99:                               # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1136(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB2_101
# BB#100:                               # %land.lhs.true.195
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB2_127
.LBB2_101:                              # %lor.lhs.false.200
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_102
	jmp	.LBB2_113
.LBB2_102:                              # %cond.true.201
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB2_107
# BB#103:                               # %cond.true.206
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1140(%rbp)       # 4-byte Spill
	jge	.LBB2_105
# BB#104:                               # %cond.true.216
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1144(%rbp)       # 4-byte Spill
	jmp	.LBB2_106
.LBB2_105:                              # %cond.false.226
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1144(%rbp)       # 4-byte Spill
.LBB2_106:                              # %cond.end.232
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1144(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-1140(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_127
	jmp	.LBB2_124
.LBB2_107:                              # %cond.false.236
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_108
	jmp	.LBB2_109
.LBB2_108:                              # %cond.true.237
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_127
	jmp	.LBB2_124
.LBB2_109:                              # %cond.false.238
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_111
# BB#110:                               # %cond.true.246
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	jmp	.LBB2_112
.LBB2_111:                              # %cond.false.266
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1148(%rbp)       # 4-byte Spill
.LBB2_112:                              # %cond.end.272
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1148(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	scan_c_stream.name_size, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_127
	jmp	.LBB2_124
.LBB2_113:                              # %cond.false.279
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_114
	jmp	.LBB2_115
.LBB2_114:                              # %cond.true.280
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_127
	jmp	.LBB2_124
.LBB2_115:                              # %cond.false.281
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB2_120
# BB#116:                               # %cond.true.286
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1152(%rbp)       # 4-byte Spill
	jge	.LBB2_118
# BB#117:                               # %cond.true.296
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	jmp	.LBB2_119
.LBB2_118:                              # %cond.false.316
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1156(%rbp)       # 4-byte Spill
.LBB2_119:                              # %cond.end.322
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1156(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-1152(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_127
	jmp	.LBB2_124
.LBB2_120:                              # %cond.false.327
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_122
# BB#121:                               # %cond.true.335
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1160(%rbp)       # 4-byte Spill
	jmp	.LBB2_123
.LBB2_122:                              # %cond.false.345
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1160(%rbp)       # 4-byte Spill
.LBB2_123:                              # %cond.end.351
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1160(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	scan_c_stream.name_size, %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_127
.LBB2_124:                              # %lor.lhs.false.358
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$1, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_126
# BB#125:                               # %land.lhs.true.366
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$1, %edx
	cmpl	$-128, %edx
	jl	.LBB2_127
.LBB2_126:                              # %lor.lhs.false.372
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$127, %eax
	movq	scan_c_stream.name_size, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$1, %esi
	cmpl	%esi, %eax
	jge	.LBB2_131
.LBB2_127:                              # %cond.true.378
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	cmpl	$127, %edx
	jg	.LBB2_129
# BB#128:                               # %cond.true.384
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1164(%rbp)       # 4-byte Spill
	jmp	.LBB2_130
.LBB2_129:                              # %cond.false.390
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1164(%rbp)       # 4-byte Spill
.LBB2_130:                              # %cond.end.398
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1164(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_131:                              # %cond.false.401
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	cmpl	$127, %edx
	jg	.LBB2_133
# BB#132:                               # %cond.true.407
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1168(%rbp)       # 4-byte Spill
	jmp	.LBB2_134
.LBB2_133:                              # %cond.false.413
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1168(%rbp)       # 4-byte Spill
.LBB2_134:                              # %cond.end.421
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1168(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_135:                              # %cond.false.424
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_137
# BB#136:                               # %cond.true.430
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB2_138
.LBB2_137:                              # %cond.false.447
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB2_138:                              # %cond.end.451
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1176(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_140
# BB#139:                               # %land.lhs.true.455
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_166
.LBB2_140:                              # %lor.lhs.false.458
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_141
	jmp	.LBB2_152
.LBB2_141:                              # %cond.true.459
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_146
# BB#142:                               # %cond.true.462
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jge	.LBB2_144
# BB#143:                               # %cond.true.468
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB2_145
.LBB2_144:                              # %cond.false.476
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB2_145:                              # %cond.end.480
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
	cqto
	movq	-1200(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_166
	jmp	.LBB2_163
.LBB2_146:                              # %cond.false.485
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_147
	jmp	.LBB2_148
.LBB2_147:                              # %cond.true.486
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_166
	jmp	.LBB2_163
.LBB2_148:                              # %cond.false.487
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_150
# BB#149:                               # %cond.true.493
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB2_151
.LBB2_150:                              # %cond.false.510
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB2_151:                              # %cond.end.514
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1208(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
	cqto
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_166
	jmp	.LBB2_163
.LBB2_152:                              # %cond.false.519
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_153
	jmp	.LBB2_154
.LBB2_153:                              # %cond.true.520
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_166
	jmp	.LBB2_163
.LBB2_154:                              # %cond.false.521
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_159
# BB#155:                               # %cond.true.524
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jge	.LBB2_157
# BB#156:                               # %cond.true.530
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB2_158
.LBB2_157:                              # %cond.false.547
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB2_158:                              # %cond.end.551
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1240(%rbp)       # 8-byte Spill
	cqto
	movq	-1240(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_166
	jmp	.LBB2_163
.LBB2_159:                              # %cond.false.556
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_161
# BB#160:                               # %cond.true.562
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB2_162
.LBB2_161:                              # %cond.false.570
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB2_162:                              # %cond.end.574
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1256(%rbp)       # 8-byte Spill
	cqto
	movq	-1256(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_166
.LBB2_163:                              # %lor.lhs.false.579
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_165
# BB#164:                               # %land.lhs.true.585
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	cmpq	$-128, %rax
	jl	.LBB2_166
.LBB2_165:                              # %lor.lhs.false.589
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	scan_c_stream.name_size, %rdx
	shlq	$1, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_170
.LBB2_166:                              # %cond.true.593
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	cmpl	$127, %edx
	jg	.LBB2_168
# BB#167:                               # %cond.true.599
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1260(%rbp)       # 4-byte Spill
	jmp	.LBB2_169
.LBB2_168:                              # %cond.false.605
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1260(%rbp)       # 4-byte Spill
.LBB2_169:                              # %cond.end.613
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1260(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_170:                              # %cond.false.616
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	cmpl	$127, %edx
	jg	.LBB2_172
# BB#171:                               # %cond.true.622
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1264(%rbp)       # 4-byte Spill
	jmp	.LBB2_173
.LBB2_172:                              # %cond.false.628
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$1, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1264(%rbp)       # 4-byte Spill
.LBB2_173:                              # %cond.end.636
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1264(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_174:                              # %cond.false.639
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_175
	jmp	.LBB2_254
.LBB2_175:                              # %cond.true.640
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_176
	jmp	.LBB2_215
.LBB2_176:                              # %cond.true.641
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_178
# BB#177:                               # %cond.true.649
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1268(%rbp)       # 4-byte Spill
	jmp	.LBB2_179
.LBB2_178:                              # %cond.false.669
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1268(%rbp)       # 4-byte Spill
.LBB2_179:                              # %cond.end.675
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1268(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB2_181
# BB#180:                               # %land.lhs.true.679
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB2_207
.LBB2_181:                              # %lor.lhs.false.684
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_182
	jmp	.LBB2_193
.LBB2_182:                              # %cond.true.685
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB2_187
# BB#183:                               # %cond.true.690
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1272(%rbp)       # 4-byte Spill
	jge	.LBB2_185
# BB#184:                               # %cond.true.700
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB2_186
.LBB2_185:                              # %cond.false.710
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1276(%rbp)       # 4-byte Spill
.LBB2_186:                              # %cond.end.716
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1276(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-1272(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_207
	jmp	.LBB2_204
.LBB2_187:                              # %cond.false.721
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_188
	jmp	.LBB2_189
.LBB2_188:                              # %cond.true.722
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_207
	jmp	.LBB2_204
.LBB2_189:                              # %cond.false.723
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_191
# BB#190:                               # %cond.true.731
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1280(%rbp)       # 4-byte Spill
	jmp	.LBB2_192
.LBB2_191:                              # %cond.false.751
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1280(%rbp)       # 4-byte Spill
.LBB2_192:                              # %cond.end.757
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1280(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	scan_c_stream.name_size, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_207
	jmp	.LBB2_204
.LBB2_193:                              # %cond.false.764
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_194
	jmp	.LBB2_195
.LBB2_194:                              # %cond.true.765
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_207
	jmp	.LBB2_204
.LBB2_195:                              # %cond.false.766
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB2_200
# BB#196:                               # %cond.true.771
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1284(%rbp)       # 4-byte Spill
	jge	.LBB2_198
# BB#197:                               # %cond.true.781
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	jmp	.LBB2_199
.LBB2_198:                              # %cond.false.801
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1288(%rbp)       # 4-byte Spill
.LBB2_199:                              # %cond.end.807
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1288(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-1284(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_207
	jmp	.LBB2_204
.LBB2_200:                              # %cond.false.812
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_202
# BB#201:                               # %cond.true.820
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1292(%rbp)       # 4-byte Spill
	jmp	.LBB2_203
.LBB2_202:                              # %cond.false.830
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1292(%rbp)       # 4-byte Spill
.LBB2_203:                              # %cond.end.836
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1292(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	scan_c_stream.name_size, %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_207
.LBB2_204:                              # %lor.lhs.false.843
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$1, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB2_206
# BB#205:                               # %land.lhs.true.851
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$1, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB2_207
.LBB2_206:                              # %lor.lhs.false.857
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movq	scan_c_stream.name_size, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$1, %esi
	cmpl	%esi, %eax
	jge	.LBB2_211
.LBB2_207:                              # %cond.true.863
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB2_209
# BB#208:                               # %cond.true.869
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1296(%rbp)       # 4-byte Spill
	jmp	.LBB2_210
.LBB2_209:                              # %cond.false.875
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1296(%rbp)       # 4-byte Spill
.LBB2_210:                              # %cond.end.883
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1296(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_211:                              # %cond.false.886
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB2_213
# BB#212:                               # %cond.true.892
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1300(%rbp)       # 4-byte Spill
	jmp	.LBB2_214
.LBB2_213:                              # %cond.false.898
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1300(%rbp)       # 4-byte Spill
.LBB2_214:                              # %cond.end.906
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1300(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_215:                              # %cond.false.909
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_217
# BB#216:                               # %cond.true.915
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB2_218
.LBB2_217:                              # %cond.false.932
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB2_218:                              # %cond.end.936
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1312(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_220
# BB#219:                               # %land.lhs.true.940
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_246
.LBB2_220:                              # %lor.lhs.false.943
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_221
	jmp	.LBB2_232
.LBB2_221:                              # %cond.true.944
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_226
# BB#222:                               # %cond.true.947
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jge	.LBB2_224
# BB#223:                               # %cond.true.953
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB2_225
.LBB2_224:                              # %cond.false.961
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB2_225:                              # %cond.end.965
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1336(%rbp)       # 8-byte Spill
	cqto
	movq	-1336(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_246
	jmp	.LBB2_243
.LBB2_226:                              # %cond.false.970
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_227
	jmp	.LBB2_228
.LBB2_227:                              # %cond.true.971
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_246
	jmp	.LBB2_243
.LBB2_228:                              # %cond.false.972
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_230
# BB#229:                               # %cond.true.978
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB2_231
.LBB2_230:                              # %cond.false.995
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB2_231:                              # %cond.end.999
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1352(%rbp)       # 8-byte Spill
	cqto
	movq	-1352(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_246
	jmp	.LBB2_243
.LBB2_232:                              # %cond.false.1004
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_233
	jmp	.LBB2_234
.LBB2_233:                              # %cond.true.1005
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_246
	jmp	.LBB2_243
.LBB2_234:                              # %cond.false.1006
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_239
# BB#235:                               # %cond.true.1009
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jge	.LBB2_237
# BB#236:                               # %cond.true.1015
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
	jmp	.LBB2_238
.LBB2_237:                              # %cond.false.1032
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
.LBB2_238:                              # %cond.end.1036
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1376(%rbp)       # 8-byte Spill
	cqto
	movq	-1376(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_246
	jmp	.LBB2_243
.LBB2_239:                              # %cond.false.1041
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_241
# BB#240:                               # %cond.true.1047
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB2_242
.LBB2_241:                              # %cond.false.1055
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
.LBB2_242:                              # %cond.end.1059
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1384(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1392(%rbp)       # 8-byte Spill
	cqto
	movq	-1392(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_246
.LBB2_243:                              # %lor.lhs.false.1064
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_245
# BB#244:                               # %land.lhs.true.1070
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB2_246
.LBB2_245:                              # %lor.lhs.false.1074
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	scan_c_stream.name_size, %rdx
	shlq	$1, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_250
.LBB2_246:                              # %cond.true.1078
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB2_248
# BB#247:                               # %cond.true.1084
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1396(%rbp)       # 4-byte Spill
	jmp	.LBB2_249
.LBB2_248:                              # %cond.false.1090
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1396(%rbp)       # 4-byte Spill
.LBB2_249:                              # %cond.end.1098
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1396(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_250:                              # %cond.false.1101
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB2_252
# BB#251:                               # %cond.true.1107
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1400(%rbp)       # 4-byte Spill
	jmp	.LBB2_253
.LBB2_252:                              # %cond.false.1113
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$1, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1400(%rbp)       # 4-byte Spill
.LBB2_253:                              # %cond.end.1121
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1400(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_254:                              # %cond.false.1124
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_255
	jmp	.LBB2_334
.LBB2_255:                              # %cond.true.1125
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_256
	jmp	.LBB2_295
.LBB2_256:                              # %cond.true.1126
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB2_258
# BB#257:                               # %cond.true.1133
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1404(%rbp)       # 4-byte Spill
	jmp	.LBB2_259
.LBB2_258:                              # %cond.false.1151
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1404(%rbp)       # 4-byte Spill
.LBB2_259:                              # %cond.end.1156
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1404(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB2_261
# BB#260:                               # %land.lhs.true.1160
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB2_287
.LBB2_261:                              # %lor.lhs.false.1164
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_262
	jmp	.LBB2_273
.LBB2_262:                              # %cond.true.1165
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB2_267
# BB#263:                               # %cond.true.1169
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1408(%rbp)       # 4-byte Spill
	jge	.LBB2_265
# BB#264:                               # %cond.true.1177
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1412(%rbp)       # 4-byte Spill
	jmp	.LBB2_266
.LBB2_265:                              # %cond.false.1186
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1412(%rbp)       # 4-byte Spill
.LBB2_266:                              # %cond.end.1191
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1412(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-1408(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_287
	jmp	.LBB2_284
.LBB2_267:                              # %cond.false.1196
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_268
	jmp	.LBB2_269
.LBB2_268:                              # %cond.true.1197
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_287
	jmp	.LBB2_284
.LBB2_269:                              # %cond.false.1198
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB2_271
# BB#270:                               # %cond.true.1205
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1416(%rbp)       # 4-byte Spill
	jmp	.LBB2_272
.LBB2_271:                              # %cond.false.1223
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1416(%rbp)       # 4-byte Spill
.LBB2_272:                              # %cond.end.1228
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1416(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	scan_c_stream.name_size, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_287
	jmp	.LBB2_284
.LBB2_273:                              # %cond.false.1234
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_274
	jmp	.LBB2_275
.LBB2_274:                              # %cond.true.1235
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_287
	jmp	.LBB2_284
.LBB2_275:                              # %cond.false.1236
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB2_280
# BB#276:                               # %cond.true.1240
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1420(%rbp)       # 4-byte Spill
	jge	.LBB2_278
# BB#277:                               # %cond.true.1248
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1424(%rbp)       # 4-byte Spill
	jmp	.LBB2_279
.LBB2_278:                              # %cond.false.1266
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1424(%rbp)       # 4-byte Spill
.LBB2_279:                              # %cond.end.1271
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1424(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-1420(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_287
	jmp	.LBB2_284
.LBB2_280:                              # %cond.false.1276
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB2_282
# BB#281:                               # %cond.true.1283
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1428(%rbp)       # 4-byte Spill
	jmp	.LBB2_283
.LBB2_282:                              # %cond.false.1292
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1428(%rbp)       # 4-byte Spill
.LBB2_283:                              # %cond.end.1297
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1428(%rbp), %eax       # 4-byte Reload
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movq	scan_c_stream.name_size, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_287
.LBB2_284:                              # %lor.lhs.false.1303
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB2_286
# BB#285:                               # %land.lhs.true.1310
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB2_287
.LBB2_286:                              # %lor.lhs.false.1315
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	scan_c_stream.name_size, %rcx
	movl	%ecx, %edx
	shll	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB2_291
.LBB2_287:                              # %cond.true.1320
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB2_289
# BB#288:                               # %cond.true.1325
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	%ecx, -1432(%rbp)       # 4-byte Spill
	jmp	.LBB2_290
.LBB2_289:                              # %cond.false.1328
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1432(%rbp)       # 4-byte Spill
.LBB2_290:                              # %cond.end.1333
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1432(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_291:                              # %cond.false.1336
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB2_293
# BB#292:                               # %cond.true.1341
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
	jmp	.LBB2_294
.LBB2_293:                              # %cond.false.1344
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
.LBB2_294:                              # %cond.end.1349
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1436(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_295:                              # %cond.false.1352
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_297
# BB#296:                               # %cond.true.1358
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB2_298
.LBB2_297:                              # %cond.false.1375
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
.LBB2_298:                              # %cond.end.1379
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1448(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_300
# BB#299:                               # %land.lhs.true.1383
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_326
.LBB2_300:                              # %lor.lhs.false.1386
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_301
	jmp	.LBB2_312
.LBB2_301:                              # %cond.true.1387
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_306
# BB#302:                               # %cond.true.1390
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	jge	.LBB2_304
# BB#303:                               # %cond.true.1396
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB2_305
.LBB2_304:                              # %cond.false.1404
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
.LBB2_305:                              # %cond.end.1408
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1464(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1472(%rbp)       # 8-byte Spill
	cqto
	movq	-1472(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_326
	jmp	.LBB2_323
.LBB2_306:                              # %cond.false.1413
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_307
	jmp	.LBB2_308
.LBB2_307:                              # %cond.true.1414
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_326
	jmp	.LBB2_323
.LBB2_308:                              # %cond.false.1415
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_310
# BB#309:                               # %cond.true.1421
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB2_311
.LBB2_310:                              # %cond.false.1438
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
.LBB2_311:                              # %cond.end.1442
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1480(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1488(%rbp)       # 8-byte Spill
	cqto
	movq	-1488(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_326
	jmp	.LBB2_323
.LBB2_312:                              # %cond.false.1447
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_313
	jmp	.LBB2_314
.LBB2_313:                              # %cond.true.1448
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_326
	jmp	.LBB2_323
.LBB2_314:                              # %cond.false.1449
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_319
# BB#315:                               # %cond.true.1452
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	jge	.LBB2_317
# BB#316:                               # %cond.true.1458
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB2_318
.LBB2_317:                              # %cond.false.1475
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB2_318:                              # %cond.end.1479
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1512(%rbp)       # 8-byte Spill
	cqto
	movq	-1512(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1496(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_326
	jmp	.LBB2_323
.LBB2_319:                              # %cond.false.1484
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_321
# BB#320:                               # %cond.true.1490
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB2_322
.LBB2_321:                              # %cond.false.1498
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
.LBB2_322:                              # %cond.end.1502
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1520(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1528(%rbp)       # 8-byte Spill
	cqto
	movq	-1528(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_326
.LBB2_323:                              # %lor.lhs.false.1507
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_325
# BB#324:                               # %land.lhs.true.1513
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB2_326
.LBB2_325:                              # %lor.lhs.false.1517
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	scan_c_stream.name_size, %rdx
	shlq	$1, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_330
.LBB2_326:                              # %cond.true.1521
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB2_328
# BB#327:                               # %cond.true.1526
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	%ecx, -1532(%rbp)       # 4-byte Spill
	jmp	.LBB2_329
.LBB2_328:                              # %cond.false.1529
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1532(%rbp)       # 4-byte Spill
.LBB2_329:                              # %cond.end.1534
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1532(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_330:                              # %cond.false.1537
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB2_332
# BB#331:                               # %cond.true.1542
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	%ecx, -1536(%rbp)       # 4-byte Spill
	jmp	.LBB2_333
.LBB2_332:                              # %cond.false.1545
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movl	%eax, %ecx
	shll	$1, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1536(%rbp)       # 4-byte Spill
.LBB2_333:                              # %cond.end.1550
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-1536(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_334:                              # %cond.false.1553
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_335
	jmp	.LBB2_414
.LBB2_335:                              # %cond.true.1554
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_336
	jmp	.LBB2_375
.LBB2_336:                              # %cond.true.1555
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_338
# BB#337:                               # %cond.true.1561
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB2_339
.LBB2_338:                              # %cond.false.1578
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB2_339:                              # %cond.end.1582
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1544(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_341
# BB#340:                               # %land.lhs.true.1586
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_367
.LBB2_341:                              # %lor.lhs.false.1589
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_342
	jmp	.LBB2_353
.LBB2_342:                              # %cond.true.1590
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_347
# BB#343:                               # %cond.true.1593
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	jge	.LBB2_345
# BB#344:                               # %cond.true.1599
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	jmp	.LBB2_346
.LBB2_345:                              # %cond.false.1607
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
.LBB2_346:                              # %cond.end.1611
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1560(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1568(%rbp)       # 8-byte Spill
	cqto
	movq	-1568(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_367
	jmp	.LBB2_364
.LBB2_347:                              # %cond.false.1616
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_348
	jmp	.LBB2_349
.LBB2_348:                              # %cond.true.1617
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_367
	jmp	.LBB2_364
.LBB2_349:                              # %cond.false.1618
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_351
# BB#350:                               # %cond.true.1624
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	jmp	.LBB2_352
.LBB2_351:                              # %cond.false.1641
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
.LBB2_352:                              # %cond.end.1645
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1576(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1584(%rbp)       # 8-byte Spill
	cqto
	movq	-1584(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_367
	jmp	.LBB2_364
.LBB2_353:                              # %cond.false.1650
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_354
	jmp	.LBB2_355
.LBB2_354:                              # %cond.true.1651
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_367
	jmp	.LBB2_364
.LBB2_355:                              # %cond.false.1652
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_360
# BB#356:                               # %cond.true.1655
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	jge	.LBB2_358
# BB#357:                               # %cond.true.1661
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1600(%rbp)       # 8-byte Spill
	jmp	.LBB2_359
.LBB2_358:                              # %cond.false.1678
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
.LBB2_359:                              # %cond.end.1682
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1600(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1608(%rbp)       # 8-byte Spill
	cqto
	movq	-1608(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1592(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_367
	jmp	.LBB2_364
.LBB2_360:                              # %cond.false.1687
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_362
# BB#361:                               # %cond.true.1693
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB2_363
.LBB2_362:                              # %cond.false.1701
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
.LBB2_363:                              # %cond.end.1705
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1616(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1624(%rbp)       # 8-byte Spill
	cqto
	movq	-1624(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_367
.LBB2_364:                              # %lor.lhs.false.1710
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_366
# BB#365:                               # %land.lhs.true.1716
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_367
.LBB2_366:                              # %lor.lhs.false.1720
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_371
.LBB2_367:                              # %cond.true.1724
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_369
# BB#368:                               # %cond.true.1728
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB2_370
.LBB2_369:                              # %cond.false.1730
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
.LBB2_370:                              # %cond.end.1734
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1632(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_371:                              # %cond.false.1736
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_373
# BB#372:                               # %cond.true.1740
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB2_374
.LBB2_373:                              # %cond.false.1742
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
.LBB2_374:                              # %cond.end.1746
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1640(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_375:                              # %cond.false.1748
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_377
# BB#376:                               # %cond.true.1754
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1648(%rbp)       # 8-byte Spill
	jmp	.LBB2_378
.LBB2_377:                              # %cond.false.1771
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
.LBB2_378:                              # %cond.end.1775
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1648(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_380
# BB#379:                               # %land.lhs.true.1779
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_406
.LBB2_380:                              # %lor.lhs.false.1782
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_381
	jmp	.LBB2_392
.LBB2_381:                              # %cond.true.1783
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_386
# BB#382:                               # %cond.true.1786
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	jge	.LBB2_384
# BB#383:                               # %cond.true.1792
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB2_385
.LBB2_384:                              # %cond.false.1800
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB2_385:                              # %cond.end.1804
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1672(%rbp)       # 8-byte Spill
	cqto
	movq	-1672(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_406
	jmp	.LBB2_403
.LBB2_386:                              # %cond.false.1809
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_387
	jmp	.LBB2_388
.LBB2_387:                              # %cond.true.1810
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_406
	jmp	.LBB2_403
.LBB2_388:                              # %cond.false.1811
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_390
# BB#389:                               # %cond.true.1817
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1680(%rbp)       # 8-byte Spill
	jmp	.LBB2_391
.LBB2_390:                              # %cond.false.1834
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB2_391:                              # %cond.end.1838
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1688(%rbp)       # 8-byte Spill
	cqto
	movq	-1688(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_406
	jmp	.LBB2_403
.LBB2_392:                              # %cond.false.1843
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_393
	jmp	.LBB2_394
.LBB2_393:                              # %cond.true.1844
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_406
	jmp	.LBB2_403
.LBB2_394:                              # %cond.false.1845
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_399
# BB#395:                               # %cond.true.1848
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jge	.LBB2_397
# BB#396:                               # %cond.true.1854
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1704(%rbp)       # 8-byte Spill
	jmp	.LBB2_398
.LBB2_397:                              # %cond.false.1871
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
.LBB2_398:                              # %cond.end.1875
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1704(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1712(%rbp)       # 8-byte Spill
	cqto
	movq	-1712(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1696(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_406
	jmp	.LBB2_403
.LBB2_399:                              # %cond.false.1880
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_401
# BB#400:                               # %cond.true.1886
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	jmp	.LBB2_402
.LBB2_401:                              # %cond.false.1894
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
.LBB2_402:                              # %cond.end.1898
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1720(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1728(%rbp)       # 8-byte Spill
	cqto
	movq	-1728(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_406
.LBB2_403:                              # %lor.lhs.false.1903
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_405
# BB#404:                               # %land.lhs.true.1909
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_406
.LBB2_405:                              # %lor.lhs.false.1913
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_410
.LBB2_406:                              # %cond.true.1917
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_408
# BB#407:                               # %cond.true.1921
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB2_409
.LBB2_408:                              # %cond.false.1923
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
.LBB2_409:                              # %cond.end.1927
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1736(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_410:                              # %cond.false.1929
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_412
# BB#411:                               # %cond.true.1933
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	jmp	.LBB2_413
.LBB2_412:                              # %cond.false.1935
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB2_413:                              # %cond.end.1939
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1744(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_414:                              # %cond.false.1941
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_415
	jmp	.LBB2_454
.LBB2_415:                              # %cond.true.1942
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_417
# BB#416:                               # %cond.true.1948
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1752(%rbp)       # 8-byte Spill
	jmp	.LBB2_418
.LBB2_417:                              # %cond.false.1965
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1752(%rbp)       # 8-byte Spill
.LBB2_418:                              # %cond.end.1969
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1752(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_420
# BB#419:                               # %land.lhs.true.1973
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_446
.LBB2_420:                              # %lor.lhs.false.1976
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_421
	jmp	.LBB2_432
.LBB2_421:                              # %cond.true.1977
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_426
# BB#422:                               # %cond.true.1980
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	jge	.LBB2_424
# BB#423:                               # %cond.true.1986
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	jmp	.LBB2_425
.LBB2_424:                              # %cond.false.1994
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1768(%rbp)       # 8-byte Spill
.LBB2_425:                              # %cond.end.1998
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1768(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1776(%rbp)       # 8-byte Spill
	cqto
	movq	-1776(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1760(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_446
	jmp	.LBB2_443
.LBB2_426:                              # %cond.false.2003
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_427
	jmp	.LBB2_428
.LBB2_427:                              # %cond.true.2004
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_446
	jmp	.LBB2_443
.LBB2_428:                              # %cond.false.2005
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_430
# BB#429:                               # %cond.true.2011
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1784(%rbp)       # 8-byte Spill
	jmp	.LBB2_431
.LBB2_430:                              # %cond.false.2028
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1784(%rbp)       # 8-byte Spill
.LBB2_431:                              # %cond.end.2032
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1784(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1792(%rbp)       # 8-byte Spill
	cqto
	movq	-1792(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_446
	jmp	.LBB2_443
.LBB2_432:                              # %cond.false.2037
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_433
	jmp	.LBB2_434
.LBB2_433:                              # %cond.true.2038
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_446
	jmp	.LBB2_443
.LBB2_434:                              # %cond.false.2039
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_439
# BB#435:                               # %cond.true.2042
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	jge	.LBB2_437
# BB#436:                               # %cond.true.2048
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1808(%rbp)       # 8-byte Spill
	jmp	.LBB2_438
.LBB2_437:                              # %cond.false.2065
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1808(%rbp)       # 8-byte Spill
.LBB2_438:                              # %cond.end.2069
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1808(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1816(%rbp)       # 8-byte Spill
	cqto
	movq	-1816(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_446
	jmp	.LBB2_443
.LBB2_439:                              # %cond.false.2074
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_441
# BB#440:                               # %cond.true.2080
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB2_442
.LBB2_441:                              # %cond.false.2088
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1824(%rbp)       # 8-byte Spill
.LBB2_442:                              # %cond.end.2092
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1824(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1832(%rbp)       # 8-byte Spill
	cqto
	movq	-1832(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_446
.LBB2_443:                              # %lor.lhs.false.2097
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_445
# BB#444:                               # %land.lhs.true.2103
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_446
.LBB2_445:                              # %lor.lhs.false.2107
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_450
.LBB2_446:                              # %cond.true.2111
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_448
# BB#447:                               # %cond.true.2115
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB2_449
.LBB2_448:                              # %cond.false.2117
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1840(%rbp)       # 8-byte Spill
.LBB2_449:                              # %cond.end.2121
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1840(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_450:                              # %cond.false.2123
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_452
# BB#451:                               # %cond.true.2127
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
	jmp	.LBB2_453
.LBB2_452:                              # %cond.false.2129
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1848(%rbp)       # 8-byte Spill
.LBB2_453:                              # %cond.end.2133
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1848(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_454:                              # %cond.false.2135
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_456
# BB#455:                               # %cond.true.2141
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1856(%rbp)       # 8-byte Spill
	jmp	.LBB2_457
.LBB2_456:                              # %cond.false.2158
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1856(%rbp)       # 8-byte Spill
.LBB2_457:                              # %cond.end.2162
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1856(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB2_459
# BB#458:                               # %land.lhs.true.2166
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jl	.LBB2_485
.LBB2_459:                              # %lor.lhs.false.2169
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_460
	jmp	.LBB2_471
.LBB2_460:                              # %cond.true.2170
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_465
# BB#461:                               # %cond.true.2173
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1864(%rbp)       # 8-byte Spill
	jge	.LBB2_463
# BB#462:                               # %cond.true.2179
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
	jmp	.LBB2_464
.LBB2_463:                              # %cond.false.2187
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1872(%rbp)       # 8-byte Spill
.LBB2_464:                              # %cond.end.2191
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1872(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1880(%rbp)       # 8-byte Spill
	cqto
	movq	-1880(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1864(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_485
	jmp	.LBB2_482
.LBB2_465:                              # %cond.false.2196
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_466
	jmp	.LBB2_467
.LBB2_466:                              # %cond.true.2197
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_485
	jmp	.LBB2_482
.LBB2_467:                              # %cond.false.2198
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_469
# BB#468:                               # %cond.true.2204
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1888(%rbp)       # 8-byte Spill
	jmp	.LBB2_470
.LBB2_469:                              # %cond.false.2221
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1888(%rbp)       # 8-byte Spill
.LBB2_470:                              # %cond.end.2225
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1888(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1896(%rbp)       # 8-byte Spill
	cqto
	movq	-1896(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_485
	jmp	.LBB2_482
.LBB2_471:                              # %cond.false.2230
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_472
	jmp	.LBB2_473
.LBB2_472:                              # %cond.true.2231
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_485
	jmp	.LBB2_482
.LBB2_473:                              # %cond.false.2232
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, scan_c_stream.name_size
	jge	.LBB2_478
# BB#474:                               # %cond.true.2235
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jge	.LBB2_476
# BB#475:                               # %cond.true.2241
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	scan_c_stream.name_size, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	scan_c_stream.name_size, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1912(%rbp)       # 8-byte Spill
	jmp	.LBB2_477
.LBB2_476:                              # %cond.false.2258
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
.LBB2_477:                              # %cond.end.2262
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1912(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1920(%rbp)       # 8-byte Spill
	cqto
	movq	-1920(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1904(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB2_485
	jmp	.LBB2_482
.LBB2_478:                              # %cond.false.2267
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_480
# BB#479:                               # %cond.true.2273
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	jmp	.LBB2_481
.LBB2_480:                              # %cond.false.2281
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1928(%rbp)       # 8-byte Spill
.LBB2_481:                              # %cond.end.2285
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1928(%rbp), %rax       # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1936(%rbp)       # 8-byte Spill
	cqto
	movq	-1936(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	scan_c_stream.name_size, %rax
	jl	.LBB2_485
.LBB2_482:                              # %lor.lhs.false.2290
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_484
# BB#483:                               # %land.lhs.true.2296
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_485
.LBB2_484:                              # %lor.lhs.false.2300
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_489
.LBB2_485:                              # %cond.true.2304
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_487
# BB#486:                               # %cond.true.2308
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	jmp	.LBB2_488
.LBB2_487:                              # %cond.false.2310
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
.LBB2_488:                              # %cond.end.2314
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1944(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -56(%rbp)
	testb	$1, %cl
	jne	.LBB2_495
	jmp	.LBB2_493
.LBB2_489:                              # %cond.false.2316
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	scan_c_stream.name_size, %rcx
	shlq	$1, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_491
# BB#490:                               # %cond.true.2320
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	jmp	.LBB2_492
.LBB2_491:                              # %cond.false.2322
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rax
	shlq	$1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
.LBB2_492:                              # %cond.end.2326
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-1952(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -56(%rbp)
	testb	$1, %dl
	jne	.LBB2_495
.LBB2_493:                              # %land.lhs.true.2328
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$-1, -56(%rbp)
	ja	.LBB2_495
# BB#494:                               # %if.then.2331
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, scan_c_stream.name_size
.LBB2_495:                              # %if.end.2332
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	scan_c_stream.name_size, %rdi
	callq	xmalloc
	movq	%rax, scan_c_stream.name
.LBB2_496:                              # %if.end.2334
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$input_buffer, %rsi
	movq	scan_c_stream.name, %rdi
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	memcpy
	cmpl	$4, -32(%rbp)
	jne	.LBB2_507
# BB#497:                               # %if.then.2338
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_498
.LBB2_498:                              # %do.body.2339
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
# BB#499:                               # %do.cond.2341
                                        #   in Loop: Header=BB2_498 Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1953(%rbp)        # 1-byte Spill
	je	.LBB2_503
# BB#500:                               # %lor.lhs.false.2344
                                        #   in Loop: Header=BB2_498 Depth=2
	movb	$1, %al
	cmpl	$9, -24(%rbp)
	movb	%al, -1953(%rbp)        # 1-byte Spill
	je	.LBB2_503
# BB#501:                               # %lor.lhs.false.2347
                                        #   in Loop: Header=BB2_498 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1953(%rbp)        # 1-byte Spill
	je	.LBB2_503
# BB#502:                               # %lor.rhs.2350
                                        #   in Loop: Header=BB2_498 Depth=2
	cmpl	$13, -24(%rbp)
	sete	%al
	movb	%al, -1953(%rbp)        # 1-byte Spill
.LBB2_503:                              # %lor.end.2353
                                        #   in Loop: Header=BB2_498 Depth=2
	movb	-1953(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_498
# BB#504:                               # %do.end.2354
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$34, -24(%rbp)
	je	.LBB2_506
# BB#505:                               # %if.then.2357
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_506:                              # %if.end.2358
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	read_c_string_or_comment
	movabsq	$input_buffer, %rcx
	movl	%eax, -24(%rbp)
	movq	%rcx, -48(%rbp)
.LBB2_507:                              # %if.end.2360
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -26(%rbp)
	jne	.LBB2_509
# BB#508:                               # %if.then.2362
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%edx, %edx
	movl	-32(%rbp), %edi
	movq	scan_c_stream.name, %rsi
	movq	-48(%rbp), %rcx
	callq	add_global
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	jmp	.LBB2_1
.LBB2_509:                              # %if.end.2364
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_510
.LBB2_510:                              # %if.end.2365
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$4, -32(%rbp)
	jne	.LBB2_512
# BB#511:                               # %if.then.2368
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_512:                              # %if.end.2369
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -26(%rbp)
	je	.LBB2_514
# BB#513:                               # %if.then.2371
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movb	generate_globals, %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_521
.LBB2_514:                              # %if.else.2375
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -27(%rbp)
	je	.LBB2_516
# BB#515:                               # %if.then.2377
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$3, -12(%rbp)
	jmp	.LBB2_520
.LBB2_516:                              # %if.else.2378
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -28(%rbp)
	je	.LBB2_518
# BB#517:                               # %if.then.2380
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, -12(%rbp)
	jmp	.LBB2_519
.LBB2_518:                              # %if.else.2381
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$2, -12(%rbp)
.LBB2_519:                              # %if.end.2382
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_520
.LBB2_520:                              # %if.end.2383
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_521
.LBB2_521:                              # %if.end.2384
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_522
.LBB2_522:                              # %while.cond.2385
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_528 Depth 3
	cmpl	$0, -12(%rbp)
	je	.LBB2_553
# BB#523:                               # %while.body.2387
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$44, -24(%rbp)
	jne	.LBB2_550
# BB#524:                               # %if.then.2390
                                        #   in Loop: Header=BB2_522 Depth=2
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB2_549
# BB#525:                               # %land.lhs.true.2393
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$1, -12(%rbp)
	je	.LBB2_527
# BB#526:                               # %lor.lhs.false.2396
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$2, -12(%rbp)
	jne	.LBB2_549
.LBB2_527:                              # %if.then.2399
                                        #   in Loop: Header=BB2_522 Depth=2
	movl	$0, -60(%rbp)
.LBB2_528:                              # %do.body.2400
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
# BB#529:                               # %do.cond.2402
                                        #   in Loop: Header=BB2_528 Depth=3
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1969(%rbp)        # 1-byte Spill
	je	.LBB2_533
# BB#530:                               # %lor.lhs.false.2405
                                        #   in Loop: Header=BB2_528 Depth=3
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1969(%rbp)        # 1-byte Spill
	je	.LBB2_533
# BB#531:                               # %lor.lhs.false.2408
                                        #   in Loop: Header=BB2_528 Depth=3
	movb	$1, %al
	cmpl	$13, -24(%rbp)
	movb	%al, -1969(%rbp)        # 1-byte Spill
	je	.LBB2_533
# BB#532:                               # %lor.rhs.2411
                                        #   in Loop: Header=BB2_528 Depth=3
	cmpl	$9, -24(%rbp)
	sete	%al
	movb	%al, -1969(%rbp)        # 1-byte Spill
.LBB2_533:                              # %lor.end.2414
                                        #   in Loop: Header=BB2_528 Depth=3
	movb	-1969(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_528
# BB#534:                               # %do.end.2415
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$0, -24(%rbp)
	jge	.LBB2_536
# BB#535:                               # %if.then.2418
	jmp	.LBB2_666
.LBB2_536:                              # %if.end.2419
                                        #   in Loop: Header=BB2_522 Depth=2
	movl	-24(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	ungetc
	cmpl	$2, -12(%rbp)
	movl	%eax, -1976(%rbp)       # 4-byte Spill
	jne	.LBB2_538
# BB#537:                               # %if.then.2423
                                        #   in Loop: Header=BB2_522 Depth=2
	movabsq	$.L.str.65, %rsi
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	movl	%eax, -60(%rbp)
	jmp	.LBB2_546
.LBB2_538:                              # %if.else.2425
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$77, -24(%rbp)
	je	.LBB2_540
# BB#539:                               # %lor.lhs.false.2428
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$85, -24(%rbp)
	jne	.LBB2_544
.LBB2_540:                              # %if.then.2431
                                        #   in Loop: Header=BB2_522 Depth=2
	testb	$1, generate_globals
	je	.LBB2_542
# BB#541:                               # %if.then.2433
                                        #   in Loop: Header=BB2_522 Depth=2
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpl	$77, -24(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_543
.LBB2_542:                              # %if.else.2437
                                        #   in Loop: Header=BB2_522 Depth=2
	movl	$-1, -20(%rbp)
.LBB2_543:                              # %if.end.2438
                                        #   in Loop: Header=BB2_522 Depth=2
	jmp	.LBB2_545
.LBB2_544:                              # %if.else.2439
                                        #   in Loop: Header=BB2_522 Depth=2
	movabsq	$.L.str.65, %rsi
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	movl	%eax, -60(%rbp)
.LBB2_545:                              # %if.end.2441
                                        #   in Loop: Header=BB2_522 Depth=2
	jmp	.LBB2_546
.LBB2_546:                              # %if.end.2442
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$0, -60(%rbp)
	jge	.LBB2_548
# BB#547:                               # %if.then.2445
	jmp	.LBB2_666
.LBB2_548:                              # %if.end.2446
                                        #   in Loop: Header=BB2_522 Depth=2
	jmp	.LBB2_549
.LBB2_549:                              # %if.end.2447
                                        #   in Loop: Header=BB2_522 Depth=2
	jmp	.LBB2_550
.LBB2_550:                              # %if.end.2448
                                        #   in Loop: Header=BB2_522 Depth=2
	cmpl	$-1, -24(%rbp)
	jne	.LBB2_552
# BB#551:                               # %if.then.2451
	jmp	.LBB2_666
.LBB2_552:                              # %if.end.2452
                                        #   in Loop: Header=BB2_522 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_522
.LBB2_553:                              # %while.end.2454
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, generate_globals
	je	.LBB2_592
# BB#554:                               # %if.then.2456
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$5, %edi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	scan_c_stream.name, %rsi
	movl	-20(%rbp), %edx
	callq	add_global
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_556
# BB#555:                               # %if.then.2459
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_556:                              # %if.end.2460
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB2_558
# BB#557:                               # %if.then.2464
	jmp	.LBB2_666
.LBB2_558:                              # %if.end.2465
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	jne	.LBB2_560
# BB#559:                               # %if.then.2469
	jmp	.LBB2_666
.LBB2_560:                              # %if.end.2470
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_561
.LBB2_561:                              # %while.body.2472
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$42, -24(%rbp)
	jne	.LBB2_564
# BB#562:                               # %land.lhs.true.2475
                                        #   in Loop: Header=BB2_561 Depth=2
	cmpl	$47, -76(%rbp)
	jne	.LBB2_564
# BB#563:                               # %if.then.2478
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_567
.LBB2_564:                              # %if.end.2479
                                        #   in Loop: Header=BB2_561 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	jne	.LBB2_566
# BB#565:                               # %if.then.2483
	jmp	.LBB2_666
.LBB2_566:                              # %if.end.2484
                                        #   in Loop: Header=BB2_561 Depth=2
	jmp	.LBB2_561
.LBB2_567:                              # %while.end.2485
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_568
.LBB2_568:                              # %do.body.2486
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB2_570
# BB#569:                               # %if.then.2490
	jmp	.LBB2_666
.LBB2_570:                              # %if.end.2491
                                        #   in Loop: Header=BB2_568 Depth=2
	jmp	.LBB2_571
.LBB2_571:                              # %do.cond.2492
                                        #   in Loop: Header=BB2_568 Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1977(%rbp)        # 1-byte Spill
	je	.LBB2_575
# BB#572:                               # %lor.lhs.false.2495
                                        #   in Loop: Header=BB2_568 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1977(%rbp)        # 1-byte Spill
	je	.LBB2_575
# BB#573:                               # %lor.lhs.false.2498
                                        #   in Loop: Header=BB2_568 Depth=2
	movb	$1, %al
	cmpl	$13, -24(%rbp)
	movb	%al, -1977(%rbp)        # 1-byte Spill
	je	.LBB2_575
# BB#574:                               # %lor.rhs.2501
                                        #   in Loop: Header=BB2_568 Depth=2
	cmpl	$9, -24(%rbp)
	sete	%al
	movb	%al, -1977(%rbp)        # 1-byte Spill
.LBB2_575:                              # %lor.end.2504
                                        #   in Loop: Header=BB2_568 Depth=2
	movb	-1977(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_568
# BB#576:                               # %do.end.2505
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$97, -24(%rbp)
	jne	.LBB2_591
# BB#577:                               # %land.lhs.true.2508
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.78, %rsi
	movq	-8(%rbp), %rdi
	callq	stream_match
	cmpl	$0, %eax
	je	.LBB2_591
# BB#578:                               # %if.then.2511
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$input_buffer, %rax
	movq	%rax, -88(%rbp)
.LBB2_579:                              # %while.body.2513
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB2_581
# BB#580:                               # %if.then.2517
	jmp	.LBB2_666
.LBB2_581:                              # %if.end.2518
                                        #   in Loop: Header=BB2_579 Depth=2
	cmpl	$41, -24(%rbp)
	jne	.LBB2_583
# BB#582:                               # %if.then.2521
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_586
.LBB2_583:                              # %if.end.2522
                                        #   in Loop: Header=BB2_579 Depth=2
	movabsq	$input_buffer, %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	cmpq	$128, %rcx
	jbe	.LBB2_585
# BB#584:                               # %if.then.2525
	callq	abort
.LBB2_585:                              # %if.end.2526
                                        #   in Loop: Header=BB2_579 Depth=2
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB2_579
.LBB2_586:                              # %while.end.2528
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$input_buffer, %rdi
	movabsq	$.L.str.79, %rsi
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	callq	strstr
	cmpq	$0, %rax
	je	.LBB2_588
# BB#587:                               # %if.then.2531
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movl	16(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 16(%rax)
.LBB2_588:                              # %if.end.2532
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$input_buffer, %rdi
	movabsq	$.L.str.80, %rsi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB2_590
# BB#589:                               # %if.then.2535
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-72(%rbp), %rax
	movl	16(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, 16(%rax)
.LBB2_590:                              # %if.end.2538
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_591
.LBB2_591:                              # %if.end.2539
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_592:                              # %if.end.2540
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_593
.LBB2_593:                              # %while.cond.2541
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1978(%rbp)        # 1-byte Spill
	je	.LBB2_597
# BB#594:                               # %lor.lhs.false.2544
                                        #   in Loop: Header=BB2_593 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1978(%rbp)        # 1-byte Spill
	je	.LBB2_597
# BB#595:                               # %lor.lhs.false.2547
                                        #   in Loop: Header=BB2_593 Depth=2
	movb	$1, %al
	cmpl	$13, -24(%rbp)
	movb	%al, -1978(%rbp)        # 1-byte Spill
	je	.LBB2_597
# BB#596:                               # %lor.rhs.2550
                                        #   in Loop: Header=BB2_593 Depth=2
	cmpl	$9, -24(%rbp)
	sete	%al
	movb	%al, -1978(%rbp)        # 1-byte Spill
.LBB2_597:                              # %lor.end.2553
                                        #   in Loop: Header=BB2_593 Depth=2
	movb	-1978(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_598
	jmp	.LBB2_599
.LBB2_598:                              # %while.body.2554
                                        #   in Loop: Header=BB2_593 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_593
.LBB2_599:                              # %while.end.2556
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$34, -24(%rbp)
	jne	.LBB2_601
# BB#600:                               # %if.then.2559
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	read_c_string_or_comment
	movl	%eax, -24(%rbp)
.LBB2_601:                              # %if.end.2561
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_602
.LBB2_602:                              # %while.cond.2562
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -24(%rbp)
	movb	%cl, -1979(%rbp)        # 1-byte Spill
	je	.LBB2_605
# BB#603:                               # %land.lhs.true.2565
                                        #   in Loop: Header=BB2_602 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$44, -24(%rbp)
	movb	%cl, -1979(%rbp)        # 1-byte Spill
	je	.LBB2_605
# BB#604:                               # %land.rhs
                                        #   in Loop: Header=BB2_602 Depth=2
	cmpl	$47, -24(%rbp)
	setne	%al
	movb	%al, -1979(%rbp)        # 1-byte Spill
.LBB2_605:                              # %land.end
                                        #   in Loop: Header=BB2_602 Depth=2
	movb	-1979(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_606
	jmp	.LBB2_607
.LBB2_606:                              # %while.body.2570
                                        #   in Loop: Header=BB2_602 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_602
.LBB2_607:                              # %while.end.2572
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$44, -24(%rbp)
	jne	.LBB2_633
# BB#608:                               # %if.then.2575
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
.LBB2_609:                              # %while.cond.2577
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1980(%rbp)        # 1-byte Spill
	je	.LBB2_613
# BB#610:                               # %lor.lhs.false.2580
                                        #   in Loop: Header=BB2_609 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1980(%rbp)        # 1-byte Spill
	je	.LBB2_613
# BB#611:                               # %lor.lhs.false.2583
                                        #   in Loop: Header=BB2_609 Depth=2
	movb	$1, %al
	cmpl	$13, -24(%rbp)
	movb	%al, -1980(%rbp)        # 1-byte Spill
	je	.LBB2_613
# BB#612:                               # %lor.rhs.2586
                                        #   in Loop: Header=BB2_609 Depth=2
	cmpl	$9, -24(%rbp)
	sete	%al
	movb	%al, -1980(%rbp)        # 1-byte Spill
.LBB2_613:                              # %lor.end.2589
                                        #   in Loop: Header=BB2_609 Depth=2
	movb	-1980(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_614
	jmp	.LBB2_615
.LBB2_614:                              # %while.body.2590
                                        #   in Loop: Header=BB2_609 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_609
.LBB2_615:                              # %while.end.2592
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_616
.LBB2_616:                              # %while.cond.2593
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$97, -24(%rbp)
	jl	.LBB2_618
# BB#617:                               # %land.lhs.true.2596
                                        #   in Loop: Header=BB2_616 Depth=2
	movb	$1, %al
	cmpl	$122, -24(%rbp)
	movb	%al, -1981(%rbp)        # 1-byte Spill
	jle	.LBB2_621
.LBB2_618:                              # %lor.rhs.2599
                                        #   in Loop: Header=BB2_616 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$90, -24(%rbp)
	movb	%cl, -1982(%rbp)        # 1-byte Spill
	jl	.LBB2_620
# BB#619:                               # %land.rhs.2602
                                        #   in Loop: Header=BB2_616 Depth=2
	cmpl	$90, -24(%rbp)
	setle	%al
	movb	%al, -1982(%rbp)        # 1-byte Spill
.LBB2_620:                              # %land.end.2605
                                        #   in Loop: Header=BB2_616 Depth=2
	movb	-1982(%rbp), %al        # 1-byte Reload
	movb	%al, -1981(%rbp)        # 1-byte Spill
.LBB2_621:                              # %lor.end.2606
                                        #   in Loop: Header=BB2_616 Depth=2
	movb	-1981(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_622
	jmp	.LBB2_623
.LBB2_622:                              # %while.body.2607
                                        #   in Loop: Header=BB2_616 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_616
.LBB2_623:                              # %while.end.2609
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$58, -24(%rbp)
	jne	.LBB2_632
# BB#624:                               # %if.then.2612
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
.LBB2_625:                              # %while.cond.2614
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$32, -24(%rbp)
	movb	%al, -1983(%rbp)        # 1-byte Spill
	je	.LBB2_629
# BB#626:                               # %lor.lhs.false.2617
                                        #   in Loop: Header=BB2_625 Depth=2
	movb	$1, %al
	cmpl	$10, -24(%rbp)
	movb	%al, -1983(%rbp)        # 1-byte Spill
	je	.LBB2_629
# BB#627:                               # %lor.lhs.false.2620
                                        #   in Loop: Header=BB2_625 Depth=2
	movb	$1, %al
	cmpl	$13, -24(%rbp)
	movb	%al, -1983(%rbp)        # 1-byte Spill
	je	.LBB2_629
# BB#628:                               # %lor.rhs.2623
                                        #   in Loop: Header=BB2_625 Depth=2
	cmpl	$9, -24(%rbp)
	sete	%al
	movb	%al, -1983(%rbp)        # 1-byte Spill
.LBB2_629:                              # %lor.end.2626
                                        #   in Loop: Header=BB2_625 Depth=2
	movb	-1983(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_630
	jmp	.LBB2_631
.LBB2_630:                              # %while.body.2627
                                        #   in Loop: Header=BB2_625 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_625
.LBB2_631:                              # %while.end.2629
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_632
.LBB2_632:                              # %if.end.2630
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_633
.LBB2_633:                              # %if.end.2631
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$34, -24(%rbp)
	je	.LBB2_636
# BB#634:                               # %lor.lhs.false.2634
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$47, -24(%rbp)
	jne	.LBB2_664
# BB#635:                               # %land.lhs.true.2637
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	ungetc
	cmpl	$42, -24(%rbp)
	movl	%eax, -1988(%rbp)       # 4-byte Spill
	jne	.LBB2_664
.LBB2_636:                              # %if.then.2642
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.43, %rdi
	movabsq	$input_buffer, %rdx
	movl	$70, %eax
	movl	$86, %ecx
	cmpl	$34, -24(%rbp)
	setne	%sil
	andb	$1, %sil
	movb	%sil, -89(%rbp)
	movb	-28(%rbp), %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	testb	$1, -89(%rbp)
	movl	%eax, -1992(%rbp)       # 4-byte Spill
	je	.LBB2_638
# BB#637:                               # %if.then.2651
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -1996(%rbp)       # 4-byte Spill
.LBB2_638:                              # %if.end.2653
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, %esi
	leaq	-90(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movb	-89(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	read_c_string_or_comment
	movl	%eax, -24(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB2_658
# BB#639:                               # %land.lhs.true.2658
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$-1, -20(%rbp)
	je	.LBB2_658
# BB#640:                               # %land.lhs.true.2661
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -90(%rbp)
	jne	.LBB2_658
# BB#641:                               # %if.then.2663
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-1120(%rbp), %rax
	movq	%rax, -1128(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB2_643
# BB#642:                               # %lor.lhs.false.2666
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB2_649
.LBB2_643:                              # %if.then.2669
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_644
.LBB2_644:                              # %while.cond.2670
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$41, -24(%rbp)
	je	.LBB2_648
# BB#645:                               # %while.body.2673
                                        #   in Loop: Header=BB2_644 Depth=2
	cmpl	$0, -24(%rbp)
	jge	.LBB2_647
# BB#646:                               # %if.then.2676
	jmp	.LBB2_666
.LBB2_647:                              # %if.end.2677
                                        #   in Loop: Header=BB2_644 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_644
.LBB2_648:                              # %while.end.2679
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_649
.LBB2_649:                              # %if.end.2680
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_650
.LBB2_650:                              # %while.cond.2681
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$40, -24(%rbp)
	je	.LBB2_654
# BB#651:                               # %while.body.2684
                                        #   in Loop: Header=BB2_650 Depth=2
	cmpl	$0, -24(%rbp)
	jge	.LBB2_653
# BB#652:                               # %if.then.2687
	jmp	.LBB2_666
.LBB2_653:                              # %if.end.2688
                                        #   in Loop: Header=BB2_650 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	jmp	.LBB2_650
.LBB2_654:                              # %while.end.2690
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movq	-1128(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -1128(%rbp)
	movb	%cl, (%rdx)
.LBB2_655:                              # %do.body.2693
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	movb	%al, %cl
	movq	-1128(%rbp), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	%rdx, -1128(%rbp)
	movb	%cl, (%rdi)
# BB#656:                               # %do.cond.2697
                                        #   in Loop: Header=BB2_655 Depth=2
	cmpl	$41, -24(%rbp)
	jne	.LBB2_655
# BB#657:                               # %do.end.2700
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.81, %rdi
	movq	-1128(%rbp), %rax
	movb	$0, (%rax)
	movq	stdout, %rsi
	callq	fputs
	movabsq	$input_buffer, %rdi
	leaq	-1120(%rbp), %rsi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	%eax, -2000(%rbp)       # 4-byte Spill
	callq	write_c_args
	jmp	.LBB2_663
.LBB2_658:                              # %if.else.2703
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -26(%rbp)
	je	.LBB2_662
# BB#659:                               # %land.lhs.true.2706
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$-1, -20(%rbp)
	jne	.LBB2_662
# BB#660:                               # %land.lhs.true.2709
                                        #   in Loop: Header=BB2_1 Depth=1
	testb	$1, -90(%rbp)
	jne	.LBB2_662
# BB#661:                               # %if.then.2711
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.82, %rsi
	movabsq	$input_buffer, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -2004(%rbp)       # 4-byte Spill
.LBB2_662:                              # %if.end.2713
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_663
.LBB2_663:                              # %if.end.2714
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_664
.LBB2_664:                              # %if.end.2715
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_665:                              # %while.end.2716
	jmp	.LBB2_666
.LBB2_666:                              # %eof
	movq	-8(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	jne	.LBB2_668
# BB#667:                               # %lor.lhs.false.2719
	movq	-8(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB2_669
.LBB2_668:                              # %if.then.2723
	movabsq	$.L.str.83, %rdi
	movb	$0, %al
	callq	fatal
.LBB2_669:                              # %if.end.2724
	addq	$2016, %rsp             # imm = 0x7E0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	scan_c_stream, .Lfunc_end2-scan_c_stream
	.cfi_endproc

	.align	16, 0x90
	.type	scan_file,@function
scan_file:                              # @scan_file
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, -16(%rbp)
	testb	$1, generate_globals
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	put_filename
.LBB3_2:                                # %if.end
	cmpq	$4, -16(%rbp)
	jle	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	addq	$-4, %rax
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_5
# BB#4:                                 # %if.then.4
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	callq	scan_lisp_file
	jmp	.LBB3_10
.LBB3_5:                                # %if.else
	cmpq	$3, -16(%rbp)
	jle	.LBB3_8
# BB#6:                                 # %land.lhs.true.6
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	addq	$-3, %rax
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_8
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	callq	scan_lisp_file
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.12
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	callq	scan_c_file
.LBB3_9:                                # %if.end.13
	jmp	.LBB3_10
.LBB3_10:                               # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	scan_file, .Lfunc_end3-scan_file
	.cfi_endproc

	.align	16, 0x90
	.type	write_globals,@function
write_globals:                          # @write_globals
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
	subq	$176, %rsp
	movl	$32, %eax
	movl	%eax, %edx
	movabsq	$compare_globals, %rcx
	movb	$0, -17(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	globals, %rsi
	movq	num_globals, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	qsort
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_3 Depth 2
	movq	-8(%rbp), %rax
	cmpq	num_globals, %rax
	jge	.LBB4_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_3
.LBB4_3:                                # %while.cond
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	num_globals, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jge	.LBB4_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	addq	$1, %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB4_5:                                # %land.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_6
	jmp	.LBB4_10
.LBB4_6:                                # %while.body
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	$5, (%rax)
	jne	.LBB4_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	24(%rax), %ecx
	je	.LBB4_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB4_3 Depth=2
	movabsq	$.L.str.53, %rdi
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	error
.LBB4_9:                                # %if.end
                                        #   in Loop: Header=BB4_3 Depth=2
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_3
.LBB4_10:                               # %while.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	$4, (%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	shlq	$5, %rax
	addq	globals, %rax
	movq	-8(%rbp), %rsi
	shlq	$5, %rsi
	addq	globals, %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rax)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rax)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rax)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rax)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_1
.LBB4_12:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, num_globals
	movq	$0, -8(%rbp)
.LBB4_13:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	num_globals, %rax
	jge	.LBB4_40
# BB#14:                                # %for.body.30
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	globals(%rip), %rcx
	shlq	$5, %rax
	movl	(%rcx,%rax), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$4, %edx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	ja	.LBB4_21
# BB#56:                                # %for.body.30
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_15:                               # %sw.bb
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.54, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_22
.LBB4_16:                               # %sw.bb.34
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.55, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_22
.LBB4_17:                               # %sw.bb.35
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.56, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_22
.LBB4_18:                               # %sw.bb.36
                                        #   in Loop: Header=BB4_13 Depth=1
	testb	$1, -17(%rbp)
	jne	.LBB4_20
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-40(%rbp), %rdi
	callq	close_emacs_globals
	movl	$10, %edi
	callq	putchar
	movb	$1, -17(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB4_20:                               # %if.end.39
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_22
.LBB4_21:                               # %sw.default
	movabsq	$.L.str.57, %rdi
	movb	$0, %al
	callq	fatal
.LBB4_22:                               # %sw.epilog
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_24
# BB#23:                                # %if.then.41
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.58, %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.59, %rdi
	movq	-8(%rbp), %rdx
	shlq	$5, %rdx
	addq	globals, %rdx
	movq	8(%rdx), %rsi
	movq	-8(%rbp), %rdx
	shlq	$5, %rdx
	addq	globals, %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB4_38
.LBB4_24:                               # %if.else
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	$4, (%rax)
	jne	.LBB4_26
# BB#25:                                # %if.then.54
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.60, %rdi
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	globals, %rcx
	movq	8(%rcx), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	printf
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB4_37
.LBB4_26:                               # %if.else.61
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movl	16(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB4_28
# BB#27:                                # %if.then.64
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.61, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB4_28:                               # %if.end.66
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.62, %rdi
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rsi
	shlq	$5, %rsi
	addq	globals, %rsi
	cmpl	$-1, 24(%rsi)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB4_30
# BB#29:                                # %if.then.75
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.63, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB4_34
.LBB4_30:                               # %if.else.77
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	$-2, 24(%rax)
	jne	.LBB4_32
# BB#31:                                # %if.then.83
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.64, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.85
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.65, %rdi
	movq	-8(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movl	24(%rax), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB4_33:                               # %if.end.90
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.91
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	$41, %edi
	callq	putchar
	movq	-8(%rbp), %rcx
	shlq	$5, %rcx
	addq	globals, %rcx
	movl	16(%rcx), %edi
	andl	$2, %edi
	cmpl	$0, %edi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB4_36
# BB#35:                                # %if.then.97
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.66, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB4_36:                               # %if.end.99
                                        #   in Loop: Header=BB4_13 Depth=1
	movabsq	$.L.str.67, %rdi
	callq	puts
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB4_37:                               # %if.end.101
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.102
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %for.inc.103
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_40:                               # %for.end.105
	testb	$1, -17(%rbp)
	jne	.LBB4_42
# BB#41:                                # %if.then.107
	movq	-40(%rbp), %rdi
	callq	close_emacs_globals
.LBB4_42:                               # %if.end.108
	movabsq	$.L.str.68, %rdi
	callq	puts
	movabsq	$.L.str.69, %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	puts
	movq	$0, -56(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB4_43:                               # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	num_globals, %rax
	jge	.LBB4_48
# BB#44:                                # %for.body.115
                                        #   in Loop: Header=BB4_43 Depth=1
	movq	-56(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	$4, (%rax)
	jne	.LBB4_46
# BB#45:                                # %if.then.120
                                        #   in Loop: Header=BB4_43 Depth=1
	movabsq	$.L.str.70, %rdi
	movq	-56(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	24(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB4_46:                               # %if.end.124
                                        #   in Loop: Header=BB4_43 Depth=1
	jmp	.LBB4_47
.LBB4_47:                               # %for.inc.125
                                        #   in Loop: Header=BB4_43 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_43
.LBB4_48:                               # %for.end.127
	movabsq	$.L.str.71, %rdi
	callq	puts
	movabsq	$.L.str.72, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	puts
	movabsq	$.L.str.73, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	puts
	movabsq	$.L.str.74, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	puts
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB4_49:                               # %for.cond.133
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	num_globals, %rax
	jge	.LBB4_55
# BB#50:                                # %for.body.136
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	cmpl	$4, (%rax)
	jne	.LBB4_53
# BB#51:                                # %land.lhs.true.141
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB4_53
# BB#52:                                # %if.then.145
                                        #   in Loop: Header=BB4_49 Depth=1
	movabsq	$.L.str.75, %rdi
	movq	-64(%rbp), %rax
	shlq	$5, %rax
	addq	globals, %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	printf
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB4_53:                               # %if.end.149
                                        #   in Loop: Header=BB4_49 Depth=1
	jmp	.LBB4_54
.LBB4_54:                               # %for.inc.150
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_49
.LBB4_55:                               # %for.end.152
	movabsq	$.L.str.72, %rdi
	callq	puts
	movl	%eax, -176(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	write_globals, .Lfunc_end4-write_globals
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_17
	.quad	.LBB4_15
	.quad	.LBB4_16
	.quad	.LBB4_18
	.quad	.LBB4_18

	.text
	.align	16, 0x90
	.type	fatal,@function
fatal:                                  # @fatal
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
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB5_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdi
	movq	%r9, %rsi
	callq	verror
	movl	$1, %edi
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	exit
.Lfunc_end5:
	.size	fatal, .Lfunc_end5-fatal
	.cfi_endproc

	.align	16, 0x90
	.type	verror,@function
verror:                                 # @verror
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
	subq	$32, %rsp
	movabsq	$.L.str.7, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	stderr, %rdi
	movq	progname, %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	vfprintf
	movabsq	$.L.str.8, %rsi
	movq	stderr, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	verror, .Lfunc_end6-verror
	.cfi_endproc

	.align	16, 0x90
	.type	put_filename,@function
put_filename:                           # @put_filename
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movabsq	$.L.str.13, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	put_filename, .Lfunc_end7-put_filename
	.cfi_endproc

	.align	16, 0x90
	.type	scan_lisp_file,@function
scan_lisp_file:                         # @scan_lisp_file
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
	subq	$9568, %rsp             # imm = 0x2560
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -48(%rbp)
	testb	$1, generate_globals
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	fatal
.LBB8_2:                                # %if.end
	cmpl	$3, -48(%rbp)
	jle	.LBB8_16
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-3, %rax
	movl	$.L.str.11, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_16
# BB#4:                                 # %if.then.5
	movb	$0, -49(%rbp)
	movl	$0, -44(%rbp)
.LBB8_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$5, %rax
	jae	.LBB8_13
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	movabsq	$scan_lisp_file.uncompiled, %rax
	movslq	-44(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	cmpl	-48(%rbp), %edx
	jg	.LBB8_11
# BB#7:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB8_5 Depth=1
	movabsq	$scan_lisp_file.uncompiled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movslq	-48(%rbp), %rdi
	addq	%rdi, %rsi
	movslq	-44(%rbp), %rdi
	shlq	$4, %rdi
	movq	%rax, %r8
	addq	%rdi, %r8
	movslq	8(%r8), %rdi
	subq	%rdi, %rdx
	addq	%rdx, %rsi
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_11
# BB#8:                                 # %land.lhs.true.23
                                        #   in Loop: Header=BB8_5 Depth=1
	movabsq	$scan_lisp_file.uncompiled, %rax
	movl	-48(%rbp), %ecx
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	cmpl	8(%rax), %ecx
	je	.LBB8_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB8_5 Depth=1
	movabsq	$scan_lisp_file.uncompiled, %rax
	movl	-48(%rbp), %ecx
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	subl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB8_11
.LBB8_10:                               # %if.then.38
	movb	$1, -49(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.39
                                        #   in Loop: Header=BB8_5 Depth=1
	jmp	.LBB8_12
.LBB8_12:                               # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_5
.LBB8_13:                               # %for.end
	testb	$1, -49(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.41
	movabsq	$.L.str.20, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	fatal
.LBB8_15:                               # %if.end.42
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.43
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_18
# BB#17:                                # %if.then.47
	movq	-8(%rbp), %rdi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB8_18:                               # %if.end.48
	movl	$10, -28(%rbp)
.LBB8_19:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
                                        #     Child Loop BB8_31 Depth 2
                                        #     Child Loop BB8_740 Depth 2
                                        #     Child Loop BB8_744 Depth 2
                                        #     Child Loop BB8_749 Depth 2
                                        #     Child Loop BB8_768 Depth 2
	movq	-24(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB8_20
	jmp	.LBB8_844
.LBB8_20:                               # %while.body
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$10, -28(%rbp)
	je	.LBB8_23
# BB#21:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$13, -28(%rbp)
	je	.LBB8_23
# BB#22:                                # %if.then.56
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB8_19
.LBB8_23:                               # %if.end.58
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_24
.LBB8_24:                               # %while.cond.59
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$10, -28(%rbp)
	movb	%al, -8281(%rbp)        # 1-byte Spill
	je	.LBB8_26
# BB#25:                                # %lor.rhs
                                        #   in Loop: Header=BB8_24 Depth=2
	cmpl	$13, -28(%rbp)
	sete	%al
	movb	%al, -8281(%rbp)        # 1-byte Spill
.LBB8_26:                               # %lor.end
                                        #   in Loop: Header=BB8_24 Depth=2
	movb	-8281(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_27
	jmp	.LBB8_28
.LBB8_27:                               # %while.body.64
                                        #   in Loop: Header=BB8_24 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB8_24
.LBB8_28:                               # %while.end
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$35, -28(%rbp)
	jne	.LBB8_755
# BB#29:                                # %if.then.68
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$64, -28(%rbp)
	jne	.LBB8_754
# BB#30:                                # %if.then.72
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	$0, -8272(%rbp)
.LBB8_31:                               # %while.cond.74
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -28(%rbp)
	cmpl	$48, -28(%rbp)
	movb	%dl, -8282(%rbp)        # 1-byte Spill
	jl	.LBB8_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpl	$57, -28(%rbp)
	setle	%al
	movb	%al, -8282(%rbp)        # 1-byte Spill
.LBB8_33:                               # %land.end
                                        #   in Loop: Header=BB8_31 Depth=2
	movb	-8282(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_34
	jmp	.LBB8_735
.LBB8_34:                               # %while.body.80
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_35
	jmp	.LBB8_114
.LBB8_35:                               # %cond.true
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_36
	jmp	.LBB8_75
.LBB8_36:                               # %cond.true.81
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_38
# BB#37:                                # %cond.true.87
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8288(%rbp)       # 4-byte Spill
	jmp	.LBB8_39
.LBB8_38:                               # %cond.false
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8288(%rbp)       # 4-byte Spill
.LBB8_39:                               # %cond.end
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8288(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB8_41
# BB#40:                                # %land.lhs.true.112
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB8_67
.LBB8_41:                               # %lor.lhs.false.117
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_42
	jmp	.LBB8_53
.LBB8_42:                               # %cond.true.118
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB8_47
# BB#43:                                # %cond.true.123
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -8292(%rbp)       # 4-byte Spill
	jge	.LBB8_45
# BB#44:                                # %cond.true.133
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8296(%rbp)       # 4-byte Spill
	jmp	.LBB8_46
.LBB8_45:                               # %cond.false.143
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8296(%rbp)       # 4-byte Spill
.LBB8_46:                               # %cond.end.149
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8296(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-8292(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_67
	jmp	.LBB8_64
.LBB8_47:                               # %cond.false.153
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_48
	jmp	.LBB8_49
.LBB8_48:                               # %cond.true.154
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_67
	jmp	.LBB8_64
.LBB8_49:                               # %cond.false.155
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_51
# BB#50:                                # %cond.true.163
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8300(%rbp)       # 4-byte Spill
	jmp	.LBB8_52
.LBB8_51:                               # %cond.false.183
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8300(%rbp)       # 4-byte Spill
.LBB8_52:                               # %cond.end.189
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8300(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movq	-8272(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_67
	jmp	.LBB8_64
.LBB8_53:                               # %cond.false.196
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_54
	jmp	.LBB8_55
.LBB8_54:                               # %cond.true.197
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_67
	jmp	.LBB8_64
.LBB8_55:                               # %cond.false.198
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB8_60
# BB#56:                                # %cond.true.203
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -8304(%rbp)       # 4-byte Spill
	jge	.LBB8_58
# BB#57:                                # %cond.true.213
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8308(%rbp)       # 4-byte Spill
	jmp	.LBB8_59
.LBB8_58:                               # %cond.false.233
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8308(%rbp)       # 4-byte Spill
.LBB8_59:                               # %cond.end.239
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8308(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-8304(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_67
	jmp	.LBB8_64
.LBB8_60:                               # %cond.false.244
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_62
# BB#61:                                # %cond.true.252
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8312(%rbp)       # 4-byte Spill
	jmp	.LBB8_63
.LBB8_62:                               # %cond.false.262
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8312(%rbp)       # 4-byte Spill
.LBB8_63:                               # %cond.end.268
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8312(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movq	-8272(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_67
.LBB8_64:                               # %lor.lhs.false.275
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$10, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_66
# BB#65:                                # %land.lhs.true.283
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$10, %edx, %edx
	cmpl	$-128, %edx
	jl	.LBB8_67
.LBB8_66:                               # %lor.lhs.false.289
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$127, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$10, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB8_71
.LBB8_67:                               # %cond.true.295
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB8_69
# BB#68:                                # %cond.true.301
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -8316(%rbp)       # 4-byte Spill
	jmp	.LBB8_70
.LBB8_69:                               # %cond.false.307
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -8316(%rbp)       # 4-byte Spill
.LBB8_70:                               # %cond.end.315
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8316(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_71:                               # %cond.false.318
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB8_73
# BB#72:                                # %cond.true.324
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -8320(%rbp)       # 4-byte Spill
	jmp	.LBB8_74
.LBB8_73:                               # %cond.false.330
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -8320(%rbp)       # 4-byte Spill
.LBB8_74:                               # %cond.end.338
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8320(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_75:                               # %cond.false.341
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_77
# BB#76:                                # %cond.true.347
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8328(%rbp)       # 8-byte Spill
	jmp	.LBB8_78
.LBB8_77:                               # %cond.false.364
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8328(%rbp)       # 8-byte Spill
.LBB8_78:                               # %cond.end.368
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8328(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_80
# BB#79:                                # %land.lhs.true.372
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_106
.LBB8_80:                               # %lor.lhs.false.375
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_81
	jmp	.LBB8_92
.LBB8_81:                               # %cond.true.376
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_86
# BB#82:                                # %cond.true.379
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8336(%rbp)       # 8-byte Spill
	jge	.LBB8_84
# BB#83:                                # %cond.true.385
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8344(%rbp)       # 8-byte Spill
	jmp	.LBB8_85
.LBB8_84:                               # %cond.false.393
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8344(%rbp)       # 8-byte Spill
.LBB8_85:                               # %cond.end.397
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8344(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8352(%rbp)       # 8-byte Spill
	cqto
	movq	-8352(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8336(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_106
	jmp	.LBB8_103
.LBB8_86:                               # %cond.false.402
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_87
	jmp	.LBB8_88
.LBB8_87:                               # %cond.true.403
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_106
	jmp	.LBB8_103
.LBB8_88:                               # %cond.false.404
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_90
# BB#89:                                # %cond.true.410
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8360(%rbp)       # 8-byte Spill
	jmp	.LBB8_91
.LBB8_90:                               # %cond.false.427
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8360(%rbp)       # 8-byte Spill
.LBB8_91:                               # %cond.end.431
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8360(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8368(%rbp)       # 8-byte Spill
	cqto
	movq	-8368(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_106
	jmp	.LBB8_103
.LBB8_92:                               # %cond.false.436
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_93
	jmp	.LBB8_94
.LBB8_93:                               # %cond.true.437
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_106
	jmp	.LBB8_103
.LBB8_94:                               # %cond.false.438
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_99
# BB#95:                                # %cond.true.441
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8376(%rbp)       # 8-byte Spill
	jge	.LBB8_97
# BB#96:                                # %cond.true.447
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8384(%rbp)       # 8-byte Spill
	jmp	.LBB8_98
.LBB8_97:                               # %cond.false.464
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8384(%rbp)       # 8-byte Spill
.LBB8_98:                               # %cond.end.468
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8384(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8392(%rbp)       # 8-byte Spill
	cqto
	movq	-8392(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8376(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_106
	jmp	.LBB8_103
.LBB8_99:                               # %cond.false.473
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_101
# BB#100:                               # %cond.true.479
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8400(%rbp)       # 8-byte Spill
	jmp	.LBB8_102
.LBB8_101:                              # %cond.false.487
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8400(%rbp)       # 8-byte Spill
.LBB8_102:                              # %cond.end.491
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8400(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8408(%rbp)       # 8-byte Spill
	cqto
	movq	-8408(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_106
.LBB8_103:                              # %lor.lhs.false.496
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_105
# BB#104:                               # %land.lhs.true.502
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB8_106
.LBB8_105:                              # %lor.lhs.false.506
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$127, %eax
	movl	%eax, %ecx
	imulq	$10, -8272(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB8_110
.LBB8_106:                              # %cond.true.510
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB8_108
# BB#107:                               # %cond.true.516
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -8412(%rbp)       # 4-byte Spill
	jmp	.LBB8_109
.LBB8_108:                              # %cond.false.522
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -8412(%rbp)       # 4-byte Spill
.LBB8_109:                              # %cond.end.530
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8412(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_110:                              # %cond.false.533
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB8_112
# BB#111:                               # %cond.true.539
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -8416(%rbp)       # 4-byte Spill
	jmp	.LBB8_113
.LBB8_112:                              # %cond.false.545
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$10, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -8416(%rbp)       # 4-byte Spill
.LBB8_113:                              # %cond.end.553
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8416(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_114:                              # %cond.false.556
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_115
	jmp	.LBB8_194
.LBB8_115:                              # %cond.true.557
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_116
	jmp	.LBB8_155
.LBB8_116:                              # %cond.true.558
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_118
# BB#117:                               # %cond.true.566
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8420(%rbp)       # 4-byte Spill
	jmp	.LBB8_119
.LBB8_118:                              # %cond.false.586
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8420(%rbp)       # 4-byte Spill
.LBB8_119:                              # %cond.end.592
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8420(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB8_121
# BB#120:                               # %land.lhs.true.596
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB8_147
.LBB8_121:                              # %lor.lhs.false.601
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_122
	jmp	.LBB8_133
.LBB8_122:                              # %cond.true.602
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB8_127
# BB#123:                               # %cond.true.607
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -8424(%rbp)       # 4-byte Spill
	jge	.LBB8_125
# BB#124:                               # %cond.true.617
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8428(%rbp)       # 4-byte Spill
	jmp	.LBB8_126
.LBB8_125:                              # %cond.false.627
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8428(%rbp)       # 4-byte Spill
.LBB8_126:                              # %cond.end.633
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8428(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-8424(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_147
	jmp	.LBB8_144
.LBB8_127:                              # %cond.false.638
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_128
	jmp	.LBB8_129
.LBB8_128:                              # %cond.true.639
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_147
	jmp	.LBB8_144
.LBB8_129:                              # %cond.false.640
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_131
# BB#130:                               # %cond.true.648
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8432(%rbp)       # 4-byte Spill
	jmp	.LBB8_132
.LBB8_131:                              # %cond.false.668
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8432(%rbp)       # 4-byte Spill
.LBB8_132:                              # %cond.end.674
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8432(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movq	-8272(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_147
	jmp	.LBB8_144
.LBB8_133:                              # %cond.false.681
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_134
	jmp	.LBB8_135
.LBB8_134:                              # %cond.true.682
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_147
	jmp	.LBB8_144
.LBB8_135:                              # %cond.false.683
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB8_140
# BB#136:                               # %cond.true.688
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -8436(%rbp)       # 4-byte Spill
	jge	.LBB8_138
# BB#137:                               # %cond.true.698
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -8440(%rbp)       # 4-byte Spill
	jmp	.LBB8_139
.LBB8_138:                              # %cond.false.718
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -8440(%rbp)       # 4-byte Spill
.LBB8_139:                              # %cond.end.724
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8440(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-8436(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_147
	jmp	.LBB8_144
.LBB8_140:                              # %cond.false.729
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_142
# BB#141:                               # %cond.true.737
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -8444(%rbp)       # 4-byte Spill
	jmp	.LBB8_143
.LBB8_142:                              # %cond.false.747
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -8444(%rbp)       # 4-byte Spill
.LBB8_143:                              # %cond.end.753
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8444(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movq	-8272(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_147
.LBB8_144:                              # %lor.lhs.false.760
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$10, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_146
# BB#145:                               # %land.lhs.true.768
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$10, %edx, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB8_147
.LBB8_146:                              # %lor.lhs.false.774
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$10, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB8_151
.LBB8_147:                              # %cond.true.780
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_149
# BB#148:                               # %cond.true.786
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -8448(%rbp)       # 4-byte Spill
	jmp	.LBB8_150
.LBB8_149:                              # %cond.false.792
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -8448(%rbp)       # 4-byte Spill
.LBB8_150:                              # %cond.end.800
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8448(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_151:                              # %cond.false.803
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_153
# BB#152:                               # %cond.true.809
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -8452(%rbp)       # 4-byte Spill
	jmp	.LBB8_154
.LBB8_153:                              # %cond.false.815
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -8452(%rbp)       # 4-byte Spill
.LBB8_154:                              # %cond.end.823
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8452(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_155:                              # %cond.false.826
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_157
# BB#156:                               # %cond.true.832
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8464(%rbp)       # 8-byte Spill
	jmp	.LBB8_158
.LBB8_157:                              # %cond.false.849
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8464(%rbp)       # 8-byte Spill
.LBB8_158:                              # %cond.end.853
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8464(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_160
# BB#159:                               # %land.lhs.true.857
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_186
.LBB8_160:                              # %lor.lhs.false.860
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_161
	jmp	.LBB8_172
.LBB8_161:                              # %cond.true.861
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_166
# BB#162:                               # %cond.true.864
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8472(%rbp)       # 8-byte Spill
	jge	.LBB8_164
# BB#163:                               # %cond.true.870
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8480(%rbp)       # 8-byte Spill
	jmp	.LBB8_165
.LBB8_164:                              # %cond.false.878
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8480(%rbp)       # 8-byte Spill
.LBB8_165:                              # %cond.end.882
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8480(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8488(%rbp)       # 8-byte Spill
	cqto
	movq	-8488(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8472(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_186
	jmp	.LBB8_183
.LBB8_166:                              # %cond.false.887
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_167
	jmp	.LBB8_168
.LBB8_167:                              # %cond.true.888
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_186
	jmp	.LBB8_183
.LBB8_168:                              # %cond.false.889
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_170
# BB#169:                               # %cond.true.895
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8496(%rbp)       # 8-byte Spill
	jmp	.LBB8_171
.LBB8_170:                              # %cond.false.912
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8496(%rbp)       # 8-byte Spill
.LBB8_171:                              # %cond.end.916
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8496(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8504(%rbp)       # 8-byte Spill
	cqto
	movq	-8504(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_186
	jmp	.LBB8_183
.LBB8_172:                              # %cond.false.921
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_173
	jmp	.LBB8_174
.LBB8_173:                              # %cond.true.922
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_186
	jmp	.LBB8_183
.LBB8_174:                              # %cond.false.923
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_179
# BB#175:                               # %cond.true.926
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8512(%rbp)       # 8-byte Spill
	jge	.LBB8_177
# BB#176:                               # %cond.true.932
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8520(%rbp)       # 8-byte Spill
	jmp	.LBB8_178
.LBB8_177:                              # %cond.false.949
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8520(%rbp)       # 8-byte Spill
.LBB8_178:                              # %cond.end.953
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8520(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8528(%rbp)       # 8-byte Spill
	cqto
	movq	-8528(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8512(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_186
	jmp	.LBB8_183
.LBB8_179:                              # %cond.false.958
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_181
# BB#180:                               # %cond.true.964
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8536(%rbp)       # 8-byte Spill
	jmp	.LBB8_182
.LBB8_181:                              # %cond.false.972
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8536(%rbp)       # 8-byte Spill
.LBB8_182:                              # %cond.end.976
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8536(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8544(%rbp)       # 8-byte Spill
	cqto
	movq	-8544(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_186
.LBB8_183:                              # %lor.lhs.false.981
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_185
# BB#184:                               # %land.lhs.true.987
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB8_186
.LBB8_185:                              # %lor.lhs.false.991
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	imulq	$10, -8272(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB8_190
.LBB8_186:                              # %cond.true.995
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_188
# BB#187:                               # %cond.true.1001
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -8548(%rbp)       # 4-byte Spill
	jmp	.LBB8_189
.LBB8_188:                              # %cond.false.1007
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -8548(%rbp)       # 4-byte Spill
.LBB8_189:                              # %cond.end.1015
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8548(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_190:                              # %cond.false.1018
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_192
# BB#191:                               # %cond.true.1024
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -8552(%rbp)       # 4-byte Spill
	jmp	.LBB8_193
.LBB8_192:                              # %cond.false.1030
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$10, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -8552(%rbp)       # 4-byte Spill
.LBB8_193:                              # %cond.end.1038
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8552(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_194:                              # %cond.false.1041
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_195
	jmp	.LBB8_274
.LBB8_195:                              # %cond.true.1042
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_196
	jmp	.LBB8_235
.LBB8_196:                              # %cond.true.1043
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_198
# BB#197:                               # %cond.true.1050
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -8556(%rbp)       # 4-byte Spill
	jmp	.LBB8_199
.LBB8_198:                              # %cond.false.1068
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -8556(%rbp)       # 4-byte Spill
.LBB8_199:                              # %cond.end.1073
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8556(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB8_201
# BB#200:                               # %land.lhs.true.1077
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB8_227
.LBB8_201:                              # %lor.lhs.false.1081
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_202
	jmp	.LBB8_213
.LBB8_202:                              # %cond.true.1082
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_207
# BB#203:                               # %cond.true.1086
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movq	-8272(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -8560(%rbp)       # 4-byte Spill
	jge	.LBB8_205
# BB#204:                               # %cond.true.1094
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -8564(%rbp)       # 4-byte Spill
	jmp	.LBB8_206
.LBB8_205:                              # %cond.false.1103
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -8564(%rbp)       # 4-byte Spill
.LBB8_206:                              # %cond.end.1108
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8564(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-8560(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_227
	jmp	.LBB8_224
.LBB8_207:                              # %cond.false.1113
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_208
	jmp	.LBB8_209
.LBB8_208:                              # %cond.true.1114
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_227
	jmp	.LBB8_224
.LBB8_209:                              # %cond.false.1115
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_211
# BB#210:                               # %cond.true.1122
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -8568(%rbp)       # 4-byte Spill
	jmp	.LBB8_212
.LBB8_211:                              # %cond.false.1140
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -8568(%rbp)       # 4-byte Spill
.LBB8_212:                              # %cond.end.1145
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8568(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movq	-8272(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_227
	jmp	.LBB8_224
.LBB8_213:                              # %cond.false.1151
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_214
	jmp	.LBB8_215
.LBB8_214:                              # %cond.true.1152
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_227
	jmp	.LBB8_224
.LBB8_215:                              # %cond.false.1153
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_220
# BB#216:                               # %cond.true.1157
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movq	-8272(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -8572(%rbp)       # 4-byte Spill
	jge	.LBB8_218
# BB#217:                               # %cond.true.1165
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -8576(%rbp)       # 4-byte Spill
	jmp	.LBB8_219
.LBB8_218:                              # %cond.false.1183
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -8576(%rbp)       # 4-byte Spill
.LBB8_219:                              # %cond.end.1188
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8576(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-8572(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_227
	jmp	.LBB8_224
.LBB8_220:                              # %cond.false.1193
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_222
# BB#221:                               # %cond.true.1200
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -8580(%rbp)       # 4-byte Spill
	jmp	.LBB8_223
.LBB8_222:                              # %cond.false.1209
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -8580(%rbp)       # 4-byte Spill
.LBB8_223:                              # %cond.end.1214
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8580(%rbp), %eax       # 4-byte Reload
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movq	-8272(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_227
.LBB8_224:                              # %lor.lhs.false.1220
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_226
# BB#225:                               # %land.lhs.true.1227
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB8_227
.LBB8_226:                              # %lor.lhs.false.1232
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	imull	$10, %edx, %edx
	cmpl	%edx, %eax
	jge	.LBB8_231
.LBB8_227:                              # %cond.true.1237
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_229
# BB#228:                               # %cond.true.1242
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	movl	%ecx, -8584(%rbp)       # 4-byte Spill
	jmp	.LBB8_230
.LBB8_229:                              # %cond.false.1245
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -8584(%rbp)       # 4-byte Spill
.LBB8_230:                              # %cond.end.1250
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8584(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_231:                              # %cond.false.1253
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_233
# BB#232:                               # %cond.true.1258
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	movl	%ecx, -8588(%rbp)       # 4-byte Spill
	jmp	.LBB8_234
.LBB8_233:                              # %cond.false.1261
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -8588(%rbp)       # 4-byte Spill
.LBB8_234:                              # %cond.end.1266
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8588(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_235:                              # %cond.false.1269
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_237
# BB#236:                               # %cond.true.1275
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8600(%rbp)       # 8-byte Spill
	jmp	.LBB8_238
.LBB8_237:                              # %cond.false.1292
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8600(%rbp)       # 8-byte Spill
.LBB8_238:                              # %cond.end.1296
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8600(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_240
# BB#239:                               # %land.lhs.true.1300
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_266
.LBB8_240:                              # %lor.lhs.false.1303
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_241
	jmp	.LBB8_252
.LBB8_241:                              # %cond.true.1304
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_246
# BB#242:                               # %cond.true.1307
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8608(%rbp)       # 8-byte Spill
	jge	.LBB8_244
# BB#243:                               # %cond.true.1313
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8616(%rbp)       # 8-byte Spill
	jmp	.LBB8_245
.LBB8_244:                              # %cond.false.1321
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8616(%rbp)       # 8-byte Spill
.LBB8_245:                              # %cond.end.1325
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8616(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8624(%rbp)       # 8-byte Spill
	cqto
	movq	-8624(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8608(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_266
	jmp	.LBB8_263
.LBB8_246:                              # %cond.false.1330
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_247
	jmp	.LBB8_248
.LBB8_247:                              # %cond.true.1331
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_266
	jmp	.LBB8_263
.LBB8_248:                              # %cond.false.1332
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_250
# BB#249:                               # %cond.true.1338
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8632(%rbp)       # 8-byte Spill
	jmp	.LBB8_251
.LBB8_250:                              # %cond.false.1355
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8632(%rbp)       # 8-byte Spill
.LBB8_251:                              # %cond.end.1359
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8632(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8640(%rbp)       # 8-byte Spill
	cqto
	movq	-8640(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_266
	jmp	.LBB8_263
.LBB8_252:                              # %cond.false.1364
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_253
	jmp	.LBB8_254
.LBB8_253:                              # %cond.true.1365
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_266
	jmp	.LBB8_263
.LBB8_254:                              # %cond.false.1366
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_259
# BB#255:                               # %cond.true.1369
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8648(%rbp)       # 8-byte Spill
	jge	.LBB8_257
# BB#256:                               # %cond.true.1375
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8656(%rbp)       # 8-byte Spill
	jmp	.LBB8_258
.LBB8_257:                              # %cond.false.1392
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8656(%rbp)       # 8-byte Spill
.LBB8_258:                              # %cond.end.1396
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8656(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8664(%rbp)       # 8-byte Spill
	cqto
	movq	-8664(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8648(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_266
	jmp	.LBB8_263
.LBB8_259:                              # %cond.false.1401
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_261
# BB#260:                               # %cond.true.1407
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8672(%rbp)       # 8-byte Spill
	jmp	.LBB8_262
.LBB8_261:                              # %cond.false.1415
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8672(%rbp)       # 8-byte Spill
.LBB8_262:                              # %cond.end.1419
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8672(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8680(%rbp)       # 8-byte Spill
	cqto
	movq	-8680(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_266
.LBB8_263:                              # %lor.lhs.false.1424
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_265
# BB#264:                               # %land.lhs.true.1430
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB8_266
.LBB8_265:                              # %lor.lhs.false.1434
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	imulq	$10, -8272(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB8_270
.LBB8_266:                              # %cond.true.1438
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_268
# BB#267:                               # %cond.true.1443
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	movl	%ecx, -8684(%rbp)       # 4-byte Spill
	jmp	.LBB8_269
.LBB8_268:                              # %cond.false.1446
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -8684(%rbp)       # 4-byte Spill
.LBB8_269:                              # %cond.end.1451
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8684(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_270:                              # %cond.false.1454
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_272
# BB#271:                               # %cond.true.1459
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	movl	%ecx, -8688(%rbp)       # 4-byte Spill
	jmp	.LBB8_273
.LBB8_272:                              # %cond.false.1462
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	imull	$10, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -8688(%rbp)       # 4-byte Spill
.LBB8_273:                              # %cond.end.1467
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-8688(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_274:                              # %cond.false.1470
                                        #   in Loop: Header=BB8_31 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_275
	jmp	.LBB8_354
.LBB8_275:                              # %cond.true.1471
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_276
	jmp	.LBB8_315
.LBB8_276:                              # %cond.true.1472
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_278
# BB#277:                               # %cond.true.1478
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8696(%rbp)       # 8-byte Spill
	jmp	.LBB8_279
.LBB8_278:                              # %cond.false.1495
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8696(%rbp)       # 8-byte Spill
.LBB8_279:                              # %cond.end.1499
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8696(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_281
# BB#280:                               # %land.lhs.true.1503
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_307
.LBB8_281:                              # %lor.lhs.false.1506
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_282
	jmp	.LBB8_293
.LBB8_282:                              # %cond.true.1507
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_287
# BB#283:                               # %cond.true.1510
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8704(%rbp)       # 8-byte Spill
	jge	.LBB8_285
# BB#284:                               # %cond.true.1516
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8712(%rbp)       # 8-byte Spill
	jmp	.LBB8_286
.LBB8_285:                              # %cond.false.1524
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8712(%rbp)       # 8-byte Spill
.LBB8_286:                              # %cond.end.1528
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8712(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8720(%rbp)       # 8-byte Spill
	cqto
	movq	-8720(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8704(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_307
	jmp	.LBB8_304
.LBB8_287:                              # %cond.false.1533
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_288
	jmp	.LBB8_289
.LBB8_288:                              # %cond.true.1534
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_307
	jmp	.LBB8_304
.LBB8_289:                              # %cond.false.1535
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_291
# BB#290:                               # %cond.true.1541
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8728(%rbp)       # 8-byte Spill
	jmp	.LBB8_292
.LBB8_291:                              # %cond.false.1558
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8728(%rbp)       # 8-byte Spill
.LBB8_292:                              # %cond.end.1562
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8728(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8736(%rbp)       # 8-byte Spill
	cqto
	movq	-8736(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_307
	jmp	.LBB8_304
.LBB8_293:                              # %cond.false.1567
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_294
	jmp	.LBB8_295
.LBB8_294:                              # %cond.true.1568
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_307
	jmp	.LBB8_304
.LBB8_295:                              # %cond.false.1569
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_300
# BB#296:                               # %cond.true.1572
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8744(%rbp)       # 8-byte Spill
	jge	.LBB8_298
# BB#297:                               # %cond.true.1578
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8752(%rbp)       # 8-byte Spill
	jmp	.LBB8_299
.LBB8_298:                              # %cond.false.1595
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8752(%rbp)       # 8-byte Spill
.LBB8_299:                              # %cond.end.1599
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8752(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8760(%rbp)       # 8-byte Spill
	cqto
	movq	-8760(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8744(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_307
	jmp	.LBB8_304
.LBB8_300:                              # %cond.false.1604
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_302
# BB#301:                               # %cond.true.1610
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8768(%rbp)       # 8-byte Spill
	jmp	.LBB8_303
.LBB8_302:                              # %cond.false.1618
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8768(%rbp)       # 8-byte Spill
.LBB8_303:                              # %cond.end.1622
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8768(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8776(%rbp)       # 8-byte Spill
	cqto
	movq	-8776(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_307
.LBB8_304:                              # %lor.lhs.false.1627
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_306
# BB#305:                               # %land.lhs.true.1633
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_307
.LBB8_306:                              # %lor.lhs.false.1637
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_311
.LBB8_307:                              # %cond.true.1641
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_309
# BB#308:                               # %cond.true.1645
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -8784(%rbp)       # 8-byte Spill
	jmp	.LBB8_310
.LBB8_309:                              # %cond.false.1647
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8784(%rbp)       # 8-byte Spill
.LBB8_310:                              # %cond.end.1651
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8784(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_311:                              # %cond.false.1653
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_313
# BB#312:                               # %cond.true.1657
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -8792(%rbp)       # 8-byte Spill
	jmp	.LBB8_314
.LBB8_313:                              # %cond.false.1659
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8792(%rbp)       # 8-byte Spill
.LBB8_314:                              # %cond.end.1663
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8792(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_315:                              # %cond.false.1665
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_317
# BB#316:                               # %cond.true.1671
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8800(%rbp)       # 8-byte Spill
	jmp	.LBB8_318
.LBB8_317:                              # %cond.false.1688
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8800(%rbp)       # 8-byte Spill
.LBB8_318:                              # %cond.end.1692
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8800(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_320
# BB#319:                               # %land.lhs.true.1696
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_346
.LBB8_320:                              # %lor.lhs.false.1699
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_321
	jmp	.LBB8_332
.LBB8_321:                              # %cond.true.1700
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_326
# BB#322:                               # %cond.true.1703
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8808(%rbp)       # 8-byte Spill
	jge	.LBB8_324
# BB#323:                               # %cond.true.1709
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8816(%rbp)       # 8-byte Spill
	jmp	.LBB8_325
.LBB8_324:                              # %cond.false.1717
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8816(%rbp)       # 8-byte Spill
.LBB8_325:                              # %cond.end.1721
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8816(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8824(%rbp)       # 8-byte Spill
	cqto
	movq	-8824(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8808(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_346
	jmp	.LBB8_343
.LBB8_326:                              # %cond.false.1726
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_327
	jmp	.LBB8_328
.LBB8_327:                              # %cond.true.1727
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_346
	jmp	.LBB8_343
.LBB8_328:                              # %cond.false.1728
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_330
# BB#329:                               # %cond.true.1734
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8832(%rbp)       # 8-byte Spill
	jmp	.LBB8_331
.LBB8_330:                              # %cond.false.1751
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8832(%rbp)       # 8-byte Spill
.LBB8_331:                              # %cond.end.1755
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8832(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8840(%rbp)       # 8-byte Spill
	cqto
	movq	-8840(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_346
	jmp	.LBB8_343
.LBB8_332:                              # %cond.false.1760
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_333
	jmp	.LBB8_334
.LBB8_333:                              # %cond.true.1761
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_346
	jmp	.LBB8_343
.LBB8_334:                              # %cond.false.1762
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_339
# BB#335:                               # %cond.true.1765
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8848(%rbp)       # 8-byte Spill
	jge	.LBB8_337
# BB#336:                               # %cond.true.1771
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8856(%rbp)       # 8-byte Spill
	jmp	.LBB8_338
.LBB8_337:                              # %cond.false.1788
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8856(%rbp)       # 8-byte Spill
.LBB8_338:                              # %cond.end.1792
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8856(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8864(%rbp)       # 8-byte Spill
	cqto
	movq	-8864(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8848(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_346
	jmp	.LBB8_343
.LBB8_339:                              # %cond.false.1797
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_341
# BB#340:                               # %cond.true.1803
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8872(%rbp)       # 8-byte Spill
	jmp	.LBB8_342
.LBB8_341:                              # %cond.false.1811
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8872(%rbp)       # 8-byte Spill
.LBB8_342:                              # %cond.end.1815
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8872(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8880(%rbp)       # 8-byte Spill
	cqto
	movq	-8880(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_346
.LBB8_343:                              # %lor.lhs.false.1820
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_345
# BB#344:                               # %land.lhs.true.1826
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_346
.LBB8_345:                              # %lor.lhs.false.1830
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_350
.LBB8_346:                              # %cond.true.1834
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_348
# BB#347:                               # %cond.true.1838
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -8888(%rbp)       # 8-byte Spill
	jmp	.LBB8_349
.LBB8_348:                              # %cond.false.1840
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8888(%rbp)       # 8-byte Spill
.LBB8_349:                              # %cond.end.1844
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8888(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_350:                              # %cond.false.1846
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_352
# BB#351:                               # %cond.true.1850
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -8896(%rbp)       # 8-byte Spill
	jmp	.LBB8_353
.LBB8_352:                              # %cond.false.1852
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8896(%rbp)       # 8-byte Spill
.LBB8_353:                              # %cond.end.1856
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8896(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_354:                              # %cond.false.1858
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_355
	jmp	.LBB8_394
.LBB8_355:                              # %cond.true.1859
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_357
# BB#356:                               # %cond.true.1865
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8904(%rbp)       # 8-byte Spill
	jmp	.LBB8_358
.LBB8_357:                              # %cond.false.1882
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8904(%rbp)       # 8-byte Spill
.LBB8_358:                              # %cond.end.1886
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8904(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_360
# BB#359:                               # %land.lhs.true.1890
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_386
.LBB8_360:                              # %lor.lhs.false.1893
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_361
	jmp	.LBB8_372
.LBB8_361:                              # %cond.true.1894
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_366
# BB#362:                               # %cond.true.1897
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8912(%rbp)       # 8-byte Spill
	jge	.LBB8_364
# BB#363:                               # %cond.true.1903
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8920(%rbp)       # 8-byte Spill
	jmp	.LBB8_365
.LBB8_364:                              # %cond.false.1911
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8920(%rbp)       # 8-byte Spill
.LBB8_365:                              # %cond.end.1915
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8920(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8928(%rbp)       # 8-byte Spill
	cqto
	movq	-8928(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8912(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_386
	jmp	.LBB8_383
.LBB8_366:                              # %cond.false.1920
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_367
	jmp	.LBB8_368
.LBB8_367:                              # %cond.true.1921
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_386
	jmp	.LBB8_383
.LBB8_368:                              # %cond.false.1922
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_370
# BB#369:                               # %cond.true.1928
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8936(%rbp)       # 8-byte Spill
	jmp	.LBB8_371
.LBB8_370:                              # %cond.false.1945
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8936(%rbp)       # 8-byte Spill
.LBB8_371:                              # %cond.end.1949
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8936(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8944(%rbp)       # 8-byte Spill
	cqto
	movq	-8944(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_386
	jmp	.LBB8_383
.LBB8_372:                              # %cond.false.1954
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_373
	jmp	.LBB8_374
.LBB8_373:                              # %cond.true.1955
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_386
	jmp	.LBB8_383
.LBB8_374:                              # %cond.false.1956
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_379
# BB#375:                               # %cond.true.1959
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -8952(%rbp)       # 8-byte Spill
	jge	.LBB8_377
# BB#376:                               # %cond.true.1965
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -8960(%rbp)       # 8-byte Spill
	jmp	.LBB8_378
.LBB8_377:                              # %cond.false.1982
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -8960(%rbp)       # 8-byte Spill
.LBB8_378:                              # %cond.end.1986
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8960(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8968(%rbp)       # 8-byte Spill
	cqto
	movq	-8968(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-8952(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_386
	jmp	.LBB8_383
.LBB8_379:                              # %cond.false.1991
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_381
# BB#380:                               # %cond.true.1997
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -8976(%rbp)       # 8-byte Spill
	jmp	.LBB8_382
.LBB8_381:                              # %cond.false.2005
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -8976(%rbp)       # 8-byte Spill
.LBB8_382:                              # %cond.end.2009
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8976(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -8984(%rbp)       # 8-byte Spill
	cqto
	movq	-8984(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_386
.LBB8_383:                              # %lor.lhs.false.2014
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_385
# BB#384:                               # %land.lhs.true.2020
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_386
.LBB8_385:                              # %lor.lhs.false.2024
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_390
.LBB8_386:                              # %cond.true.2028
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_388
# BB#387:                               # %cond.true.2032
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -8992(%rbp)       # 8-byte Spill
	jmp	.LBB8_389
.LBB8_388:                              # %cond.false.2034
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -8992(%rbp)       # 8-byte Spill
.LBB8_389:                              # %cond.end.2038
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8992(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_390:                              # %cond.false.2040
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_392
# BB#391:                               # %cond.true.2044
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -9000(%rbp)       # 8-byte Spill
	jmp	.LBB8_393
.LBB8_392:                              # %cond.false.2046
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9000(%rbp)       # 8-byte Spill
.LBB8_393:                              # %cond.end.2050
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9000(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_394:                              # %cond.false.2052
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_396
# BB#395:                               # %cond.true.2058
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9008(%rbp)       # 8-byte Spill
	jmp	.LBB8_397
.LBB8_396:                              # %cond.false.2075
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9008(%rbp)       # 8-byte Spill
.LBB8_397:                              # %cond.end.2079
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9008(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB8_399
# BB#398:                               # %land.lhs.true.2083
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jl	.LBB8_425
.LBB8_399:                              # %lor.lhs.false.2086
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_400
	jmp	.LBB8_411
.LBB8_400:                              # %cond.true.2087
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_405
# BB#401:                               # %cond.true.2090
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -9016(%rbp)       # 8-byte Spill
	jge	.LBB8_403
# BB#402:                               # %cond.true.2096
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9024(%rbp)       # 8-byte Spill
	jmp	.LBB8_404
.LBB8_403:                              # %cond.false.2104
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9024(%rbp)       # 8-byte Spill
.LBB8_404:                              # %cond.end.2108
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9024(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -9032(%rbp)       # 8-byte Spill
	cqto
	movq	-9032(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-9016(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_425
	jmp	.LBB8_422
.LBB8_405:                              # %cond.false.2113
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_406
	jmp	.LBB8_407
.LBB8_406:                              # %cond.true.2114
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_425
	jmp	.LBB8_422
.LBB8_407:                              # %cond.false.2115
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_409
# BB#408:                               # %cond.true.2121
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9040(%rbp)       # 8-byte Spill
	jmp	.LBB8_410
.LBB8_409:                              # %cond.false.2138
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9040(%rbp)       # 8-byte Spill
.LBB8_410:                              # %cond.end.2142
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9040(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -9048(%rbp)       # 8-byte Spill
	cqto
	movq	-9048(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_425
	jmp	.LBB8_422
.LBB8_411:                              # %cond.false.2147
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_412
	jmp	.LBB8_413
.LBB8_412:                              # %cond.true.2148
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_425
	jmp	.LBB8_422
.LBB8_413:                              # %cond.false.2149
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_418
# BB#414:                               # %cond.true.2152
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -9056(%rbp)       # 8-byte Spill
	jge	.LBB8_416
# BB#415:                               # %cond.true.2158
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movq	-8272(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -9064(%rbp)       # 8-byte Spill
	jmp	.LBB8_417
.LBB8_416:                              # %cond.false.2175
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -9064(%rbp)       # 8-byte Spill
.LBB8_417:                              # %cond.end.2179
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9064(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -9072(%rbp)       # 8-byte Spill
	cqto
	movq	-9072(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-9056(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB8_425
	jmp	.LBB8_422
.LBB8_418:                              # %cond.false.2184
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_420
# BB#419:                               # %cond.true.2190
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -9080(%rbp)       # 8-byte Spill
	jmp	.LBB8_421
.LBB8_420:                              # %cond.false.2198
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -9080(%rbp)       # 8-byte Spill
.LBB8_421:                              # %cond.end.2202
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9080(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rdx, -9088(%rbp)       # 8-byte Spill
	cqto
	movq	-9088(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_425
.LBB8_422:                              # %lor.lhs.false.2207
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_424
# BB#423:                               # %land.lhs.true.2213
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_425
.LBB8_424:                              # %lor.lhs.false.2217
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_429
.LBB8_425:                              # %cond.true.2221
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_427
# BB#426:                               # %cond.true.2225
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -9096(%rbp)       # 8-byte Spill
	jmp	.LBB8_428
.LBB8_427:                              # %cond.false.2227
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9096(%rbp)       # 8-byte Spill
.LBB8_428:                              # %cond.end.2231
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9096(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_433
.LBB8_429:                              # %cond.false.2233
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$10, -8272(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_431
# BB#430:                               # %cond.true.2237
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movq	%rax, -9104(%rbp)       # 8-byte Spill
	jmp	.LBB8_432
.LBB8_431:                              # %cond.false.2239
                                        #   in Loop: Header=BB8_31 Depth=2
	imulq	$10, -8272(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -9104(%rbp)       # 8-byte Spill
.LBB8_432:                              # %cond.end.2243
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9104(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
.LBB8_433:                              # %lor.lhs.false.2245
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_434
	jmp	.LBB8_493
.LBB8_434:                              # %cond.true.2246
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_435
	jmp	.LBB8_464
.LBB8_435:                              # %cond.true.2247
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB8_437
# BB#436:                               # %cond.true.2259
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -9108(%rbp)       # 4-byte Spill
	jmp	.LBB8_438
.LBB8_437:                              # %cond.false.2287
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -9108(%rbp)       # 4-byte Spill
.LBB8_438:                              # %cond.end.2297
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9108(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB8_448
# BB#439:                               # %cond.true.2301
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB8_444
# BB#440:                               # %cond.true.2307
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -9112(%rbp)       # 4-byte Spill
	jge	.LBB8_442
# BB#441:                               # %cond.true.2321
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -9116(%rbp)       # 4-byte Spill
	jmp	.LBB8_443
.LBB8_442:                              # %cond.false.2349
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -9116(%rbp)       # 4-byte Spill
.LBB8_443:                              # %cond.end.2359
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9116(%rbp), %eax       # 4-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-9112(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_456
	jmp	.LBB8_453
.LBB8_444:                              # %cond.false.2367
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB8_446
# BB#445:                               # %cond.true.2379
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -9120(%rbp)       # 4-byte Spill
	jmp	.LBB8_447
.LBB8_446:                              # %cond.false.2393
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -9120(%rbp)       # 4-byte Spill
.LBB8_447:                              # %cond.end.2403
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9120(%rbp), %eax       # 4-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	subl	%ecx, %eax
	movq	-8272(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_456
	jmp	.LBB8_453
.LBB8_448:                              # %cond.false.2413
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB8_450
# BB#449:                               # %cond.true.2418
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movq	-8272(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	movl	-28(%rbp), %edi
	subl	$48, %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jle	.LBB8_456
	jmp	.LBB8_453
.LBB8_450:                              # %cond.false.2430
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB8_452
# BB#451:                               # %cond.true.2436
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movl	-28(%rbp), %edi
	subl	$48, %edi
	movb	%dil, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB8_456
	jmp	.LBB8_453
.LBB8_452:                              # %cond.false.2447
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB8_456
.LBB8_453:                              # %lor.lhs.false.2459
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_455
# BB#454:                               # %land.lhs.true.2470
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB8_456
.LBB8_455:                              # %lor.lhs.false.2479
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$127, %eax
	movq	-8272(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movl	-28(%rbp), %edi
	subl	$48, %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB8_460
.LBB8_456:                              # %cond.true.2488
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB8_458
# BB#457:                               # %cond.true.2497
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9124(%rbp)       # 4-byte Spill
	jmp	.LBB8_459
.LBB8_458:                              # %cond.false.2506
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9124(%rbp)       # 4-byte Spill
.LBB8_459:                              # %cond.end.2517
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9124(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_460:                              # %cond.false.2520
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB8_462
# BB#461:                               # %cond.true.2529
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9128(%rbp)       # 4-byte Spill
	jmp	.LBB8_463
.LBB8_462:                              # %cond.false.2538
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9128(%rbp)       # 4-byte Spill
.LBB8_463:                              # %cond.end.2549
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9128(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_464:                              # %cond.false.2552
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_466
# BB#465:                               # %cond.true.2561
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9136(%rbp)       # 8-byte Spill
	jmp	.LBB8_467
.LBB8_466:                              # %cond.false.2584
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9136(%rbp)       # 8-byte Spill
.LBB8_467:                              # %cond.end.2591
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9136(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_477
# BB#468:                               # %cond.true.2595
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_473
# BB#469:                               # %cond.true.2599
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9144(%rbp)       # 8-byte Spill
	jge	.LBB8_471
# BB#470:                               # %cond.true.2608
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9152(%rbp)       # 8-byte Spill
	jmp	.LBB8_472
.LBB8_471:                              # %cond.false.2631
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9152(%rbp)       # 8-byte Spill
.LBB8_472:                              # %cond.end.2638
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9152(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9144(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_485
	jmp	.LBB8_482
.LBB8_473:                              # %cond.false.2645
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_475
# BB#474:                               # %cond.true.2654
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9160(%rbp)       # 8-byte Spill
	jmp	.LBB8_476
.LBB8_475:                              # %cond.false.2665
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9160(%rbp)       # 8-byte Spill
.LBB8_476:                              # %cond.end.2672
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9160(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_485
	jmp	.LBB8_482
.LBB8_477:                              # %cond.false.2679
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_479
# BB#478:                               # %cond.true.2682
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_485
	jmp	.LBB8_482
.LBB8_479:                              # %cond.false.2690
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_481
# BB#480:                               # %cond.true.2694
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_485
	jmp	.LBB8_482
.LBB8_481:                              # %cond.false.2700
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_485
.LBB8_482:                              # %lor.lhs.false.2708
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_484
# BB#483:                               # %land.lhs.true.2716
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	cmpq	$-128, %rax
	jl	.LBB8_485
.LBB8_484:                              # %lor.lhs.false.2722
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB8_489
.LBB8_485:                              # %cond.true.2728
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB8_487
# BB#486:                               # %cond.true.2737
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9164(%rbp)       # 4-byte Spill
	jmp	.LBB8_488
.LBB8_487:                              # %cond.false.2746
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9164(%rbp)       # 4-byte Spill
.LBB8_488:                              # %cond.end.2757
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9164(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_489:                              # %cond.false.2760
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB8_491
# BB#490:                               # %cond.true.2769
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -9168(%rbp)       # 4-byte Spill
	jmp	.LBB8_492
.LBB8_491:                              # %cond.false.2778
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -9168(%rbp)       # 4-byte Spill
.LBB8_492:                              # %cond.end.2789
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9168(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_493:                              # %cond.false.2792
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_494
	jmp	.LBB8_553
.LBB8_494:                              # %cond.true.2793
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_495
	jmp	.LBB8_524
.LBB8_495:                              # %cond.true.2794
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB8_497
# BB#496:                               # %cond.true.2806
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -9172(%rbp)       # 4-byte Spill
	jmp	.LBB8_498
.LBB8_497:                              # %cond.false.2834
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -9172(%rbp)       # 4-byte Spill
.LBB8_498:                              # %cond.end.2844
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9172(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB8_508
# BB#499:                               # %cond.true.2848
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB8_504
# BB#500:                               # %cond.true.2854
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -9176(%rbp)       # 4-byte Spill
	jge	.LBB8_502
# BB#501:                               # %cond.true.2868
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -9180(%rbp)       # 4-byte Spill
	jmp	.LBB8_503
.LBB8_502:                              # %cond.false.2896
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -9180(%rbp)       # 4-byte Spill
.LBB8_503:                              # %cond.end.2906
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9180(%rbp), %eax       # 4-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	subl	%ecx, %eax
	movl	-9176(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_516
	jmp	.LBB8_513
.LBB8_504:                              # %cond.false.2914
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB8_506
# BB#505:                               # %cond.true.2926
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -9184(%rbp)       # 4-byte Spill
	jmp	.LBB8_507
.LBB8_506:                              # %cond.false.2940
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -9184(%rbp)       # 4-byte Spill
.LBB8_507:                              # %cond.end.2950
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9184(%rbp), %eax       # 4-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	subl	%ecx, %eax
	movq	-8272(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_516
	jmp	.LBB8_513
.LBB8_508:                              # %cond.false.2960
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB8_510
# BB#509:                               # %cond.true.2965
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movq	-8272(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	movl	-28(%rbp), %edi
	subl	$48, %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jle	.LBB8_516
	jmp	.LBB8_513
.LBB8_510:                              # %cond.false.2977
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB8_512
# BB#511:                               # %cond.true.2983
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movl	-28(%rbp), %edi
	subl	$48, %edi
	movw	%di, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB8_516
	jmp	.LBB8_513
.LBB8_512:                              # %cond.false.2994
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB8_516
.LBB8_513:                              # %lor.lhs.false.3006
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB8_515
# BB#514:                               # %land.lhs.true.3017
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB8_516
.LBB8_515:                              # %lor.lhs.false.3026
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-8272(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movl	-28(%rbp), %edi
	subl	$48, %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB8_520
.LBB8_516:                              # %cond.true.3035
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_518
# BB#517:                               # %cond.true.3044
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9188(%rbp)       # 4-byte Spill
	jmp	.LBB8_519
.LBB8_518:                              # %cond.false.3053
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9188(%rbp)       # 4-byte Spill
.LBB8_519:                              # %cond.end.3064
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9188(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_520:                              # %cond.false.3067
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_522
# BB#521:                               # %cond.true.3076
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9192(%rbp)       # 4-byte Spill
	jmp	.LBB8_523
.LBB8_522:                              # %cond.false.3085
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9192(%rbp)       # 4-byte Spill
.LBB8_523:                              # %cond.end.3096
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9192(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_524:                              # %cond.false.3099
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_526
# BB#525:                               # %cond.true.3108
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9200(%rbp)       # 8-byte Spill
	jmp	.LBB8_527
.LBB8_526:                              # %cond.false.3131
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9200(%rbp)       # 8-byte Spill
.LBB8_527:                              # %cond.end.3138
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9200(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_537
# BB#528:                               # %cond.true.3142
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_533
# BB#529:                               # %cond.true.3146
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9208(%rbp)       # 8-byte Spill
	jge	.LBB8_531
# BB#530:                               # %cond.true.3155
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9216(%rbp)       # 8-byte Spill
	jmp	.LBB8_532
.LBB8_531:                              # %cond.false.3178
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9216(%rbp)       # 8-byte Spill
.LBB8_532:                              # %cond.end.3185
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9216(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9208(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_545
	jmp	.LBB8_542
.LBB8_533:                              # %cond.false.3192
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_535
# BB#534:                               # %cond.true.3201
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9224(%rbp)       # 8-byte Spill
	jmp	.LBB8_536
.LBB8_535:                              # %cond.false.3212
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9224(%rbp)       # 8-byte Spill
.LBB8_536:                              # %cond.end.3219
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9224(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_545
	jmp	.LBB8_542
.LBB8_537:                              # %cond.false.3226
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_539
# BB#538:                               # %cond.true.3229
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_545
	jmp	.LBB8_542
.LBB8_539:                              # %cond.false.3237
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_541
# BB#540:                               # %cond.true.3241
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_545
	jmp	.LBB8_542
.LBB8_541:                              # %cond.false.3247
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_545
.LBB8_542:                              # %lor.lhs.false.3255
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_544
# BB#543:                               # %land.lhs.true.3263
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB8_545
.LBB8_544:                              # %lor.lhs.false.3269
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB8_549
.LBB8_545:                              # %cond.true.3275
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_547
# BB#546:                               # %cond.true.3284
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9228(%rbp)       # 4-byte Spill
	jmp	.LBB8_548
.LBB8_547:                              # %cond.false.3293
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9228(%rbp)       # 4-byte Spill
.LBB8_548:                              # %cond.end.3304
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9228(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_549:                              # %cond.false.3307
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB8_551
# BB#550:                               # %cond.true.3316
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -9232(%rbp)       # 4-byte Spill
	jmp	.LBB8_552
.LBB8_551:                              # %cond.false.3325
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -9232(%rbp)       # 4-byte Spill
.LBB8_552:                              # %cond.end.3336
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9232(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_553:                              # %cond.false.3339
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_554
	jmp	.LBB8_613
.LBB8_554:                              # %cond.true.3340
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_555
	jmp	.LBB8_584
.LBB8_555:                              # %cond.true.3341
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB8_557
# BB#556:                               # %cond.true.3350
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -9236(%rbp)       # 4-byte Spill
	jmp	.LBB8_558
.LBB8_557:                              # %cond.false.3372
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -9236(%rbp)       # 4-byte Spill
.LBB8_558:                              # %cond.end.3379
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9236(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB8_568
# BB#559:                               # %cond.true.3383
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_564
# BB#560:                               # %cond.true.3387
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	imull	$0, %edx, %edx
	movq	-8272(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -9240(%rbp)       # 4-byte Spill
	jge	.LBB8_562
# BB#561:                               # %cond.true.3397
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movq	-8272(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -9244(%rbp)       # 4-byte Spill
	jmp	.LBB8_563
.LBB8_562:                              # %cond.false.3419
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -9244(%rbp)       # 4-byte Spill
.LBB8_563:                              # %cond.end.3426
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9244(%rbp), %eax       # 4-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	subl	%ecx, %eax
	movl	-9240(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB8_576
	jmp	.LBB8_573
.LBB8_564:                              # %cond.false.3432
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB8_566
# BB#565:                               # %cond.true.3441
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -9248(%rbp)       # 4-byte Spill
	jmp	.LBB8_567
.LBB8_566:                              # %cond.false.3452
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -9248(%rbp)       # 4-byte Spill
.LBB8_567:                              # %cond.end.3459
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9248(%rbp), %eax       # 4-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	subl	%ecx, %eax
	movq	-8272(%rbp), %rdx
	movl	%edx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB8_576
	jmp	.LBB8_573
.LBB8_568:                              # %cond.false.3466
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_570
# BB#569:                               # %cond.true.3470
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB8_576
	jmp	.LBB8_573
.LBB8_570:                              # %cond.false.3477
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_572
# BB#571:                               # %cond.true.3481
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movq	-8272(%rbp), %rax
	movl	%eax, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB8_576
	jmp	.LBB8_573
.LBB8_572:                              # %cond.false.3488
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	cmpl	%edx, %ecx
	jl	.LBB8_576
.LBB8_573:                              # %lor.lhs.false.3495
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB8_575
# BB#574:                               # %land.lhs.true.3503
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB8_576
.LBB8_575:                              # %lor.lhs.false.3509
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8272(%rbp), %rcx
	movl	%ecx, %edx
	movl	-28(%rbp), %esi
	subl	$48, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB8_580
.LBB8_576:                              # %cond.true.3515
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_578
# BB#577:                               # %cond.true.3521
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	movl	%ecx, -9252(%rbp)       # 4-byte Spill
	jmp	.LBB8_579
.LBB8_578:                              # %cond.false.3525
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9252(%rbp)       # 4-byte Spill
.LBB8_579:                              # %cond.end.3531
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9252(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_580:                              # %cond.false.3534
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_582
# BB#581:                               # %cond.true.3540
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	movl	%ecx, -9256(%rbp)       # 4-byte Spill
	jmp	.LBB8_583
.LBB8_582:                              # %cond.false.3544
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9256(%rbp)       # 4-byte Spill
.LBB8_583:                              # %cond.end.3550
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9256(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_584:                              # %cond.false.3553
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_586
# BB#585:                               # %cond.true.3562
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9264(%rbp)       # 8-byte Spill
	jmp	.LBB8_587
.LBB8_586:                              # %cond.false.3585
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9264(%rbp)       # 8-byte Spill
.LBB8_587:                              # %cond.end.3592
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9264(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_597
# BB#588:                               # %cond.true.3596
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_593
# BB#589:                               # %cond.true.3600
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9272(%rbp)       # 8-byte Spill
	jge	.LBB8_591
# BB#590:                               # %cond.true.3609
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9280(%rbp)       # 8-byte Spill
	jmp	.LBB8_592
.LBB8_591:                              # %cond.false.3632
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9280(%rbp)       # 8-byte Spill
.LBB8_592:                              # %cond.end.3639
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9280(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9272(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_605
	jmp	.LBB8_602
.LBB8_593:                              # %cond.false.3646
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_595
# BB#594:                               # %cond.true.3655
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9288(%rbp)       # 8-byte Spill
	jmp	.LBB8_596
.LBB8_595:                              # %cond.false.3666
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9288(%rbp)       # 8-byte Spill
.LBB8_596:                              # %cond.end.3673
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9288(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_605
	jmp	.LBB8_602
.LBB8_597:                              # %cond.false.3680
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_599
# BB#598:                               # %cond.true.3683
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_605
	jmp	.LBB8_602
.LBB8_599:                              # %cond.false.3691
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_601
# BB#600:                               # %cond.true.3695
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_605
	jmp	.LBB8_602
.LBB8_601:                              # %cond.false.3701
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_605
.LBB8_602:                              # %lor.lhs.false.3709
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_604
# BB#603:                               # %land.lhs.true.3717
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB8_605
.LBB8_604:                              # %lor.lhs.false.3723
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB8_609
.LBB8_605:                              # %cond.true.3729
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_607
# BB#606:                               # %cond.true.3735
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	movl	%ecx, -9292(%rbp)       # 4-byte Spill
	jmp	.LBB8_608
.LBB8_607:                              # %cond.false.3739
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9292(%rbp)       # 4-byte Spill
.LBB8_608:                              # %cond.end.3745
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9292(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_609:                              # %cond.false.3748
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB8_611
# BB#610:                               # %cond.true.3754
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	movl	%ecx, -9296(%rbp)       # 4-byte Spill
	jmp	.LBB8_612
.LBB8_611:                              # %cond.false.3758
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -9296(%rbp)       # 4-byte Spill
.LBB8_612:                              # %cond.end.3764
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-9296(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_613:                              # %cond.false.3767
                                        #   in Loop: Header=BB8_31 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_614
	jmp	.LBB8_673
.LBB8_614:                              # %cond.true.3768
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_615
	jmp	.LBB8_644
.LBB8_615:                              # %cond.true.3769
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_617
# BB#616:                               # %cond.true.3778
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	imulq	$0, %rdx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rdi
	imulq	$0, %rdi, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9304(%rbp)       # 8-byte Spill
	jmp	.LBB8_618
.LBB8_617:                              # %cond.false.3801
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9304(%rbp)       # 8-byte Spill
.LBB8_618:                              # %cond.end.3808
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9304(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_628
# BB#619:                               # %cond.true.3812
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_624
# BB#620:                               # %cond.true.3817
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	imulq	$0, %rdx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9312(%rbp)       # 8-byte Spill
	jge	.LBB8_622
# BB#621:                               # %cond.true.3826
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	imulq	$0, %rdx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rdi
	imulq	$0, %rdi, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9320(%rbp)       # 8-byte Spill
	jmp	.LBB8_623
.LBB8_622:                              # %cond.false.3849
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9320(%rbp)       # 8-byte Spill
.LBB8_623:                              # %cond.end.3856
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9320(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9312(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_636
	jmp	.LBB8_633
.LBB8_624:                              # %cond.false.3863
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_626
# BB#625:                               # %cond.true.3872
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9328(%rbp)       # 8-byte Spill
	jmp	.LBB8_627
.LBB8_626:                              # %cond.false.3883
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9328(%rbp)       # 8-byte Spill
.LBB8_627:                              # %cond.end.3890
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9328(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_636
	jmp	.LBB8_633
.LBB8_628:                              # %cond.false.3897
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_630
# BB#629:                               # %cond.true.3900
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_636
	jmp	.LBB8_633
.LBB8_630:                              # %cond.false.3908
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_632
# BB#631:                               # %cond.true.3913
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_636
	jmp	.LBB8_633
.LBB8_632:                              # %cond.false.3919
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_636
.LBB8_633:                              # %lor.lhs.false.3927
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_635
# BB#634:                               # %land.lhs.true.3935
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_636
.LBB8_635:                              # %lor.lhs.false.3941
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_640
.LBB8_636:                              # %cond.true.3947
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_638
# BB#637:                               # %cond.true.3953
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9336(%rbp)       # 8-byte Spill
	jmp	.LBB8_639
.LBB8_638:                              # %cond.false.3957
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9336(%rbp)       # 8-byte Spill
.LBB8_639:                              # %cond.end.3963
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9336(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_640:                              # %cond.false.3965
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_642
# BB#641:                               # %cond.true.3971
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9344(%rbp)       # 8-byte Spill
	jmp	.LBB8_643
.LBB8_642:                              # %cond.false.3975
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9344(%rbp)       # 8-byte Spill
.LBB8_643:                              # %cond.end.3981
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9344(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_644:                              # %cond.false.3983
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_646
# BB#645:                               # %cond.true.3992
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9352(%rbp)       # 8-byte Spill
	jmp	.LBB8_647
.LBB8_646:                              # %cond.false.4015
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9352(%rbp)       # 8-byte Spill
.LBB8_647:                              # %cond.end.4022
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9352(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_657
# BB#648:                               # %cond.true.4026
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_653
# BB#649:                               # %cond.true.4030
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9360(%rbp)       # 8-byte Spill
	jge	.LBB8_651
# BB#650:                               # %cond.true.4039
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9368(%rbp)       # 8-byte Spill
	jmp	.LBB8_652
.LBB8_651:                              # %cond.false.4062
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9368(%rbp)       # 8-byte Spill
.LBB8_652:                              # %cond.end.4069
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9368(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9360(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_665
	jmp	.LBB8_662
.LBB8_653:                              # %cond.false.4076
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_655
# BB#654:                               # %cond.true.4085
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9376(%rbp)       # 8-byte Spill
	jmp	.LBB8_656
.LBB8_655:                              # %cond.false.4096
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9376(%rbp)       # 8-byte Spill
.LBB8_656:                              # %cond.end.4103
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9376(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_665
	jmp	.LBB8_662
.LBB8_657:                              # %cond.false.4110
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_659
# BB#658:                               # %cond.true.4113
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_665
	jmp	.LBB8_662
.LBB8_659:                              # %cond.false.4121
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_661
# BB#660:                               # %cond.true.4125
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_665
	jmp	.LBB8_662
.LBB8_661:                              # %cond.false.4131
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_665
.LBB8_662:                              # %lor.lhs.false.4139
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_664
# BB#663:                               # %land.lhs.true.4147
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_665
.LBB8_664:                              # %lor.lhs.false.4153
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_669
.LBB8_665:                              # %cond.true.4159
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_667
# BB#666:                               # %cond.true.4165
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9384(%rbp)       # 8-byte Spill
	jmp	.LBB8_668
.LBB8_667:                              # %cond.false.4169
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9384(%rbp)       # 8-byte Spill
.LBB8_668:                              # %cond.end.4175
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9384(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_669:                              # %cond.false.4177
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_671
# BB#670:                               # %cond.true.4183
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9392(%rbp)       # 8-byte Spill
	jmp	.LBB8_672
.LBB8_671:                              # %cond.false.4187
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9392(%rbp)       # 8-byte Spill
.LBB8_672:                              # %cond.end.4193
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9392(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_673:                              # %cond.false.4195
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB8_674
	jmp	.LBB8_703
.LBB8_674:                              # %cond.true.4196
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_676
# BB#675:                               # %cond.true.4205
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	imulq	$0, %rdx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rdi
	imulq	$0, %rdi, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9400(%rbp)       # 8-byte Spill
	jmp	.LBB8_677
.LBB8_676:                              # %cond.false.4228
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9400(%rbp)       # 8-byte Spill
.LBB8_677:                              # %cond.end.4235
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9400(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_687
# BB#678:                               # %cond.true.4239
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_683
# BB#679:                               # %cond.true.4244
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	imulq	$0, %rdx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9408(%rbp)       # 8-byte Spill
	jge	.LBB8_681
# BB#680:                               # %cond.true.4253
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	imulq	$0, %rdx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rdi
	imulq	$0, %rdi, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9416(%rbp)       # 8-byte Spill
	jmp	.LBB8_682
.LBB8_681:                              # %cond.false.4276
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9416(%rbp)       # 8-byte Spill
.LBB8_682:                              # %cond.end.4283
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9416(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9408(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_695
	jmp	.LBB8_692
.LBB8_683:                              # %cond.false.4290
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_685
# BB#684:                               # %cond.true.4299
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9424(%rbp)       # 8-byte Spill
	jmp	.LBB8_686
.LBB8_685:                              # %cond.false.4310
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	imulq	$0, %rcx, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9424(%rbp)       # 8-byte Spill
.LBB8_686:                              # %cond.end.4317
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9424(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_695
	jmp	.LBB8_692
.LBB8_687:                              # %cond.false.4324
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_689
# BB#688:                               # %cond.true.4327
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_695
	jmp	.LBB8_692
.LBB8_689:                              # %cond.false.4335
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_691
# BB#690:                               # %cond.true.4340
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_695
	jmp	.LBB8_692
.LBB8_691:                              # %cond.false.4346
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_695
.LBB8_692:                              # %lor.lhs.false.4354
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_694
# BB#693:                               # %land.lhs.true.4362
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_695
.LBB8_694:                              # %lor.lhs.false.4368
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_699
.LBB8_695:                              # %cond.true.4374
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_697
# BB#696:                               # %cond.true.4380
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9432(%rbp)       # 8-byte Spill
	jmp	.LBB8_698
.LBB8_697:                              # %cond.false.4384
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9432(%rbp)       # 8-byte Spill
.LBB8_698:                              # %cond.end.4390
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9432(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_699:                              # %cond.false.4392
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_701
# BB#700:                               # %cond.true.4398
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9440(%rbp)       # 8-byte Spill
	jmp	.LBB8_702
.LBB8_701:                              # %cond.false.4402
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9440(%rbp)       # 8-byte Spill
.LBB8_702:                              # %cond.end.4408
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9440(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_703:                              # %cond.false.4410
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_705
# BB#704:                               # %cond.true.4419
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9448(%rbp)       # 8-byte Spill
	jmp	.LBB8_706
.LBB8_705:                              # %cond.false.4442
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9448(%rbp)       # 8-byte Spill
.LBB8_706:                              # %cond.end.4449
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9448(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB8_716
# BB#707:                               # %cond.true.4453
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_712
# BB#708:                               # %cond.true.4457
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -9456(%rbp)       # 8-byte Spill
	jge	.LBB8_710
# BB#709:                               # %cond.true.4466
                                        #   in Loop: Header=BB8_31 Depth=2
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	imull	$0, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	-8272(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rdi
	addq	-8272(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -9464(%rbp)       # 8-byte Spill
	jmp	.LBB8_711
.LBB8_710:                              # %cond.false.4489
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -9464(%rbp)       # 8-byte Spill
.LBB8_711:                              # %cond.end.4496
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9464(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	movq	-9456(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jl	.LBB8_724
	jmp	.LBB8_721
.LBB8_712:                              # %cond.false.4503
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB8_714
# BB#713:                               # %cond.true.4512
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -9472(%rbp)       # 8-byte Spill
	jmp	.LBB8_715
.LBB8_714:                              # %cond.false.4523
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	imull	$0, %eax, %eax
	movslq	%eax, %rcx
	addq	-8272(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -9472(%rbp)       # 8-byte Spill
.LBB8_715:                              # %cond.end.4530
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9472(%rbp), %rax       # 8-byte Reload
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	subq	%rdx, %rax
	cmpq	-8272(%rbp), %rax
	jl	.LBB8_724
	jmp	.LBB8_721
.LBB8_716:                              # %cond.false.4537
                                        #   in Loop: Header=BB8_31 Depth=2
	cmpq	$0, -8272(%rbp)
	jge	.LBB8_718
# BB#717:                               # %cond.true.4540
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-8272(%rbp), %rdx
	movl	-28(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB8_724
	jmp	.LBB8_721
.LBB8_718:                              # %cond.false.4548
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-28(%rbp), %eax
	subl	$48, %eax
	cmpl	$0, %eax
	jge	.LBB8_720
# BB#719:                               # %cond.true.4552
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jle	.LBB8_724
	jmp	.LBB8_721
.LBB8_720:                              # %cond.false.4558
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jl	.LBB8_724
.LBB8_721:                              # %lor.lhs.false.4566
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB8_723
# BB#722:                               # %land.lhs.true.4574
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB8_724
.LBB8_723:                              # %lor.lhs.false.4580
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB8_728
.LBB8_724:                              # %cond.true.4586
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_726
# BB#725:                               # %cond.true.4592
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9480(%rbp)       # 8-byte Spill
	jmp	.LBB8_727
.LBB8_726:                              # %cond.false.4596
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9480(%rbp)       # 8-byte Spill
.LBB8_727:                              # %cond.end.4602
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9480(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -8272(%rbp)
	testb	$1, %cl
	jne	.LBB8_733
	jmp	.LBB8_732
.LBB8_728:                              # %cond.false.4604
                                        #   in Loop: Header=BB8_31 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8272(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$48, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB8_730
# BB#729:                               # %cond.true.4610
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -9488(%rbp)       # 8-byte Spill
	jmp	.LBB8_731
.LBB8_730:                              # %cond.false.4614
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-8272(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -9488(%rbp)       # 8-byte Spill
.LBB8_731:                              # %cond.end.4620
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-9488(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -8272(%rbp)
	testb	$1, %dl
	jne	.LBB8_733
.LBB8_732:                              # %lor.lhs.false.4622
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	$-1, %rax
	cmpq	-8272(%rbp), %rax
	jae	.LBB8_734
.LBB8_733:                              # %if.then.4625
	callq	memory_exhausted
.LBB8_734:                              # %if.end.4626
                                        #   in Loop: Header=BB8_31 Depth=2
	jmp	.LBB8_31
.LBB8_735:                              # %while.end.4627
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$1, -8272(%rbp)
	jg	.LBB8_737
# BB#736:                               # %if.then.4630
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	fatal
.LBB8_737:                              # %if.end.4631
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$32, -28(%rbp)
	je	.LBB8_739
# BB#738:                               # %if.then.4634
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	fatal
.LBB8_739:                              # %if.end.4635
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-8272(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -8272(%rbp)
	movq	-40(%rbp), %rdi
	callq	free
	movq	-8272(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	$0, -8280(%rbp)
.LBB8_740:                              # %for.cond.4637
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8280(%rbp), %rax
	cmpq	-8272(%rbp), %rax
	jge	.LBB8_743
# BB#741:                               # %for.body.4640
                                        #   in Loop: Header=BB8_740 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movb	%al, %cl
	movq	-8280(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	%cl, (%rdx,%rdi)
# BB#742:                               # %for.inc.4644
                                        #   in Loop: Header=BB8_740 Depth=2
	movq	-8280(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8280(%rbp)
	jmp	.LBB8_740
.LBB8_743:                              # %for.end.4646
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-8272(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB8_744:                              # %while.cond.4649
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$10, -28(%rbp)
	movb	%al, -9489(%rbp)        # 1-byte Spill
	je	.LBB8_746
# BB#745:                               # %lor.rhs.4652
                                        #   in Loop: Header=BB8_744 Depth=2
	cmpl	$13, -28(%rbp)
	sete	%al
	movb	%al, -9489(%rbp)        # 1-byte Spill
.LBB8_746:                              # %lor.end.4655
                                        #   in Loop: Header=BB8_744 Depth=2
	movb	-9489(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_747
	jmp	.LBB8_748
.LBB8_747:                              # %while.body.4656
                                        #   in Loop: Header=BB8_744 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB8_744
.LBB8_748:                              # %while.end.4658
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_749
.LBB8_749:                              # %while.cond.4659
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -28(%rbp)
	movb	%cl, -9490(%rbp)        # 1-byte Spill
	je	.LBB8_751
# BB#750:                               # %land.rhs.4662
                                        #   in Loop: Header=BB8_749 Depth=2
	cmpl	$13, -28(%rbp)
	setne	%al
	movb	%al, -9490(%rbp)        # 1-byte Spill
.LBB8_751:                              # %land.end.4665
                                        #   in Loop: Header=BB8_749 Depth=2
	movb	-9490(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_752
	jmp	.LBB8_753
.LBB8_752:                              # %while.body.4666
                                        #   in Loop: Header=BB8_749 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB8_749
.LBB8_753:                              # %while.end.4668
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_754
.LBB8_754:                              # %if.end.4669
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_755:                              # %if.end.4670
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$40, -28(%rbp)
	je	.LBB8_757
# BB#756:                               # %if.then.4673
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_757:                              # %if.end.4674
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_760
# BB#758:                               # %lor.lhs.false.4678
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_760
# BB#759:                               # %lor.lhs.false.4682
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_778
.LBB8_760:                              # %if.then.4686
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movb	$70, -8257(%rbp)
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$110, -28(%rbp)
	jne	.LBB8_765
# BB#761:                               # %if.then.4691
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$105, %eax
	jne	.LBB8_763
# BB#762:                               # %lor.lhs.false.4695
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$108, %eax
	je	.LBB8_764
.LBB8_763:                              # %if.then.4699
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.26, %rsi
	leaq	-8256(%rbp), %rdx
	movq	stderr, %rdi
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9496(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_764:                              # %if.end.4702
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_772
.LBB8_765:                              # %if.else
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$40, -28(%rbp)
	je	.LBB8_767
# BB#766:                               # %if.then.4705
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.26, %rsi
	leaq	-8256(%rbp), %rdx
	movq	stderr, %rdi
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9500(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_767:                              # %if.else.4708
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_768
.LBB8_768:                              # %while.cond.4709
                                        #   Parent Loop BB8_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$41, -28(%rbp)
	je	.LBB8_770
# BB#769:                               # %while.body.4712
                                        #   in Loop: Header=BB8_768 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB8_768
.LBB8_770:                              # %while.end.4714
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_771
.LBB8_771:                              # %if.end.4715
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_772
.LBB8_772:                              # %if.end.4716
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	skip_white
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$34, %eax
	jne	.LBB8_776
# BB#773:                               # %lor.lhs.false.4720
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$92, %eax
	jne	.LBB8_776
# BB#774:                               # %lor.lhs.false.4724
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$10, %eax
	je	.LBB8_777
# BB#775:                               # %land.lhs.true.4728
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$13, -28(%rbp)
	je	.LBB8_777
.LBB8_776:                              # %if.then.4731
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_777:                              # %if.end.4732
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_840
.LBB8_778:                              # %if.else.4733
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_781
# BB#779:                               # %lor.lhs.false.4737
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_781
# BB#780:                               # %lor.lhs.false.4741
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.29, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_786
.LBB8_781:                              # %if.then.4745
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movb	$86, -8257(%rbp)
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	cmpq	$0, -40(%rbp)
	jne	.LBB8_785
# BB#782:                               # %if.then.4749
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	search_lisp_doc_at_eol
	testb	$1, %al
	jne	.LBB8_784
# BB#783:                               # %if.then.4751
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_784:                              # %if.end.4752
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_785
.LBB8_785:                              # %if.end.4753
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_839
.LBB8_786:                              # %if.else.4754
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_788
# BB#787:                               # %lor.lhs.false.4758
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.31, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_802
.LBB8_788:                              # %if.then.4762
                                        #   in Loop: Header=BB8_19 Depth=1
	movb	$86, -8257(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$39, -28(%rbp)
	jne	.LBB8_790
# BB#789:                               # %if.then.4766
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	jmp	.LBB8_797
.LBB8_790:                              # %if.else.4768
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$40, -28(%rbp)
	je	.LBB8_792
# BB#791:                               # %if.then.4771
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9504(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_792:                              # %if.end.4773
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_794
# BB#793:                               # %if.then.4778
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.32, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9508(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_794:                              # %if.end.4780
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$41, -28(%rbp)
	je	.LBB8_796
# BB#795:                               # %if.then.4785
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.34, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9512(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_796:                              # %if.end.4787
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_797
.LBB8_797:                              # %if.end.4788
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB8_801
# BB#798:                               # %if.then.4791
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	search_lisp_doc_at_eol
	testb	$1, %al
	jne	.LBB8_800
# BB#799:                               # %if.then.4793
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_800:                              # %if.end.4794
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_801
.LBB8_801:                              # %if.end.4795
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_838
.LBB8_802:                              # %if.else.4796
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_804
# BB#803:                               # %lor.lhs.false.4800
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_818
.LBB8_804:                              # %if.then.4804
                                        #   in Loop: Header=BB8_19 Depth=1
	movb	$70, -8257(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$39, -28(%rbp)
	jne	.LBB8_806
# BB#805:                               # %if.then.4808
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	jmp	.LBB8_813
.LBB8_806:                              # %if.else.4810
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$40, -28(%rbp)
	je	.LBB8_808
# BB#807:                               # %if.then.4813
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.37, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9516(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_808:                              # %if.end.4815
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_810
# BB#809:                               # %if.then.4820
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.37, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9520(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_810:                              # %if.end.4822
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$41, -28(%rbp)
	je	.LBB8_812
# BB#811:                               # %if.then.4827
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.38, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9524(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_812:                              # %if.end.4829
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_813
.LBB8_813:                              # %if.end.4830
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB8_817
# BB#814:                               # %if.then.4833
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	search_lisp_doc_at_eol
	testb	$1, %al
	jne	.LBB8_816
# BB#815:                               # %if.then.4835
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_816:                              # %if.end.4836
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_817
.LBB8_817:                              # %if.end.4837
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_837
.LBB8_818:                              # %if.else.4838
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.39, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_835
# BB#819:                               # %if.then.4842
                                        #   in Loop: Header=BB8_19 Depth=1
	movb	$70, -8257(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$39, -28(%rbp)
	jne	.LBB8_821
# BB#820:                               # %if.then.4846
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	jmp	.LBB8_828
.LBB8_821:                              # %if.else.4848
                                        #   in Loop: Header=BB8_19 Depth=1
	cmpl	$40, -28(%rbp)
	je	.LBB8_823
# BB#822:                               # %if.then.4851
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.40, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9528(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_823:                              # %if.end.4853
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	leaq	-8256(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB8_825
# BB#824:                               # %if.then.4858
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.40, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9532(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_825:                              # %if.end.4860
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-8256(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_lisp_symbol
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$41, -28(%rbp)
	je	.LBB8_827
# BB#826:                               # %if.then.4865
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.41, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9536(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_827:                              # %if.end.4867
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_828
.LBB8_828:                              # %if.end.4868
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	skip_white
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$34, %eax
	je	.LBB8_830
# BB#829:                               # %if.then.4872
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.42, %rsi
	leaq	-8256(%rbp), %rdx
	movq	stderr, %rdi
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -9540(%rbp)       # 4-byte Spill
	jmp	.LBB8_19
.LBB8_830:                              # %if.end.4875
                                        #   in Loop: Header=BB8_19 Depth=1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	read_c_string_or_comment
	cmpq	$0, -40(%rbp)
	movl	%eax, -9544(%rbp)       # 4-byte Spill
	jne	.LBB8_834
# BB#831:                               # %if.then.4879
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-24(%rbp), %rdi
	callq	search_lisp_doc_at_eol
	testb	$1, %al
	jne	.LBB8_833
# BB#832:                               # %if.then.4881
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_833:                              # %if.end.4882
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_834
.LBB8_834:                              # %if.end.4883
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_836
.LBB8_835:                              # %if.else.4884
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_836:                              # %if.end.4885
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_837
.LBB8_837:                              # %if.end.4886
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_838
.LBB8_838:                              # %if.end.4887
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_839
.LBB8_839:                              # %if.end.4888
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_840
.LBB8_840:                              # %if.end.4889
                                        #   in Loop: Header=BB8_19 Depth=1
	movabsq	$.L.str.43, %rdi
	leaq	-8256(%rbp), %rdx
	movsbl	-8257(%rbp), %esi
	movb	$0, %al
	callq	printf
	cmpq	$0, -40(%rbp)
	movl	%eax, -9548(%rbp)       # 4-byte Spill
	je	.LBB8_842
# BB#841:                               # %if.then.4894
                                        #   in Loop: Header=BB8_19 Depth=1
	movq	-40(%rbp), %rdi
	movq	stdout, %rsi
	callq	fputs
	movq	-40(%rbp), %rdi
	movl	%eax, -9552(%rbp)       # 4-byte Spill
	callq	free
	movq	$0, -40(%rbp)
	jmp	.LBB8_843
.LBB8_842:                              # %if.else.4896
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	read_c_string_or_comment
	movl	%eax, -9556(%rbp)       # 4-byte Spill
.LBB8_843:                              # %if.end.4898
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_844:                              # %while.end.4899
	movq	-40(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	jne	.LBB8_846
# BB#845:                               # %lor.lhs.false.4902
	movq	-24(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB8_847
.LBB8_846:                              # %if.then.4906
	movabsq	$.L.str.44, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	fatal
.LBB8_847:                              # %if.end.4907
	addq	$9568, %rsp             # imm = 0x2560
	popq	%rbp
	retq
.Lfunc_end8:
	.size	scan_lisp_file, .Lfunc_end8-scan_lisp_file
	.cfi_endproc

	.align	16, 0x90
	.type	scan_c_file,@function
scan_c_file:                            # @scan_c_file
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rsi
	movb	(%rsi,%rax), %cl
	movb	%cl, -25(%rbp)
	movsbl	-25(%rbp), %edx
	cmpl	$111, %edx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rdi
	movb	$99, (%rdi,%rax)
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_7
# BB#3:                                 # %land.lhs.true
	movsbl	-25(%rbp), %eax
	cmpl	$111, %eax
	jne	.LBB9_7
# BB#4:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rdi
	movb	$109, (%rdi,%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.18
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rdi
	movb	$99, (%rdi,%rax)
.LBB9_6:                                # %if.end.22
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.23
	cmpq	$0, -24(%rbp)
	jne	.LBB9_9
# BB#8:                                 # %if.then.26
	movq	-8(%rbp), %rdi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB9_9:                                # %if.end.27
	movb	-25(%rbp), %al
	movq	-8(%rbp), %rdi
	movb	%al, -26(%rbp)          # 1-byte Spill
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rdi
	movb	-26(%rbp), %cl          # 1-byte Reload
	movb	%cl, (%rdi,%rax)
	movq	-24(%rbp), %rdi
	callq	scan_c_stream
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	scan_c_file, .Lfunc_end9-scan_c_file
	.cfi_endproc

	.align	16, 0x90
	.type	memory_exhausted,@function
memory_exhausted:                       # @memory_exhausted
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
	movabsq	$.L.str.45, %rdi
	movb	$0, %al
	callq	fatal
.Lfunc_end10:
	.size	memory_exhausted, .Lfunc_end10-memory_exhausted
	.cfi_endproc

	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	callq	memory_exhausted
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	xmalloc, .Lfunc_end11-xmalloc
	.cfi_endproc

	.align	16, 0x90
	.type	read_lisp_symbol,@function
read_lisp_symbol:                       # @read_lisp_symbol
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	skip_white
.LBB12_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movsbl	-17(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB12_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movb	%al, %cl
	movq	-32(%rbp), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, 1(%rdi)
	jmp	.LBB12_12
.LBB12_3:                               # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$32, %eax
	je	.LBB12_9
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB12_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$9, %eax
	je	.LBB12_9
# BB#5:                                 # %lor.lhs.false.11
                                        #   in Loop: Header=BB12_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB12_9
# BB#6:                                 # %lor.lhs.false.15
                                        #   in Loop: Header=BB12_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$13, %eax
	je	.LBB12_9
# BB#7:                                 # %lor.lhs.false.19
                                        #   in Loop: Header=BB12_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB12_9
# BB#8:                                 # %lor.lhs.false.23
                                        #   in Loop: Header=BB12_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$41, %eax
	jne	.LBB12_10
.LBB12_9:                               # %if.then.27
	movsbl	-17(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	ungetc
	movq	-32(%rbp), %rsi
	movb	$0, (%rsi)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB12_13
.LBB12_10:                              # %if.else.30
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-17(%rbp), %al
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%al, (%rcx)
# BB#11:                                # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_12
.LBB12_12:                              # %if.end.32
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_13:                              # %while.end
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB12_15
# BB#14:                                # %if.then.33
	movabsq	$.L.str.46, %rsi
	movq	stderr, %rdi
	movsbl	-17(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB12_15:                              # %if.end.36
	movq	-8(%rbp), %rdi
	callq	skip_white
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	read_lisp_symbol, .Lfunc_end12-read_lisp_symbol
	.cfi_endproc

	.align	16, 0x90
	.type	skip_white,@function
skip_white:                             # @skip_white
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$32, -9(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movsbl	-9(%rbp), %ecx
	cmpl	$32, %ecx
	movb	%al, -10(%rbp)          # 1-byte Spill
	je	.LBB13_5
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	$1, %al
	movsbl	-9(%rbp), %ecx
	cmpl	$9, %ecx
	movb	%al, -10(%rbp)          # 1-byte Spill
	je	.LBB13_5
# BB#3:                                 # %lor.lhs.false.5
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	$1, %al
	movsbl	-9(%rbp), %ecx
	cmpl	$10, %ecx
	movb	%al, -10(%rbp)          # 1-byte Spill
	je	.LBB13_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	movsbl	-9(%rbp), %eax
	cmpl	$13, %eax
	sete	%cl
	movb	%cl, -10(%rbp)          # 1-byte Spill
.LBB13_5:                               # %lor.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-10(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_6
	jmp	.LBB13_7
.LBB13_6:                               # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movb	%al, %cl
	movb	%cl, -9(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %while.end
	movsbl	-9(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	ungetc
	movl	%eax, -16(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	skip_white, .Lfunc_end13-skip_white
	.cfi_endproc

	.align	16, 0x90
	.type	search_lisp_doc_at_eol,@function
search_lisp_doc_at_eol:                 # @search_lisp_doc_at_eol
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -20(%rbp)
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB14_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$13, -20(%rbp)
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB14_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$-1, -20(%rbp)
	setne	%al
	movb	%al, -29(%rbp)          # 1-byte Spill
.LBB14_4:                               # %land.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_5
	jmp	.LBB14_6
.LBB14_5:                               # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -20(%rbp)
	jmp	.LBB14_1
.LBB14_6:                               # %while.end
	cmpl	$34, -28(%rbp)
	jne	.LBB14_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$92, -24(%rbp)
	je	.LBB14_9
.LBB14_8:                               # %if.then
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	movb	$0, -1(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %if.end
	movb	$1, -1(%rbp)
.LBB14_10:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	search_lisp_doc_at_eol, .Lfunc_end14-search_lisp_doc_at_eol
	.cfi_endproc

	.align	16, 0x90
	.type	read_c_string_or_comment,@function
read_c_string_or_comment:               # @read_c_string_or_comment
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
	subq	$112, %rsp
	movb	%dl, %al
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$input_buffer, %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	cmpl	$0, -12(%rbp)
	cmovlq	%r9, %r8
	movq	%r8, -72(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB15_2
# BB#1:                                 # %cond.true
	movq	stdout, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB15_3
.LBB15_3:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.47, %rsi
	movq	%rax, -64(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	cmpq	$0, -24(%rbp)
	cmovneq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movb	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	testb	$1, -13(%rbp)
	je	.LBB15_12
# BB#4:                                 # %if.then
	jmp	.LBB15_5
.LBB15_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$10, -28(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB15_9
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_5 Depth=1
	movb	$1, %al
	cmpl	$13, -28(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB15_9
# BB#7:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB15_5 Depth=1
	movb	$1, %al
	cmpl	$9, -28(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB15_9
# BB#8:                                 # %lor.rhs
                                        #   in Loop: Header=BB15_5 Depth=1
	cmpl	$32, -28(%rbp)
	sete	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB15_9:                               # %lor.end
                                        #   in Loop: Header=BB15_5 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_10
	jmp	.LBB15_11
.LBB15_10:                              # %while.body
                                        #   in Loop: Header=BB15_5 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB15_5
.LBB15_11:                              # %while.end
	jmp	.LBB15_12
.LBB15_12:                              # %if.end
	jmp	.LBB15_13
.LBB15_13:                              # %while.cond.12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_15 Depth 2
	cmpl	$-1, -28(%rbp)
	je	.LBB15_47
# BB#14:                                # %while.body.14
                                        #   in Loop: Header=BB15_13 Depth=1
	jmp	.LBB15_15
.LBB15_15:                              # %while.cond.15
                                        #   Parent Loop BB15_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -28(%rbp)
	movb	%cl, -106(%rbp)         # 1-byte Spill
	je	.LBB15_20
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB15_15 Depth=2
	testb	$1, -13(%rbp)
	je	.LBB15_18
# BB#17:                                # %cond.true.18
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$42, -28(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB15_19
.LBB15_18:                              # %cond.false.20
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$34, -28(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB15_19:                              # %cond.end.23
                                        #   in Loop: Header=BB15_15 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -106(%rbp)         # 1-byte Spill
.LBB15_20:                              # %land.end
                                        #   in Loop: Header=BB15_15 Depth=2
	movb	-106(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB15_21
	jmp	.LBB15_37
.LBB15_21:                              # %while.body.26
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$92, -28(%rbp)
	jne	.LBB15_30
# BB#22:                                # %if.then.29
                                        #   in Loop: Header=BB15_15 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$10, -28(%rbp)
	je	.LBB15_24
# BB#23:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$13, -28(%rbp)
	jne	.LBB15_25
.LBB15_24:                              # %if.then.36
                                        #   in Loop: Header=BB15_15 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB15_15
.LBB15_25:                              # %if.end.38
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$110, -28(%rbp)
	jne	.LBB15_27
# BB#26:                                # %if.then.41
                                        #   in Loop: Header=BB15_15 Depth=2
	movl	$10, -28(%rbp)
.LBB15_27:                              # %if.end.42
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$116, -28(%rbp)
	jne	.LBB15_29
# BB#28:                                # %if.then.45
                                        #   in Loop: Header=BB15_15 Depth=2
	movl	$9, -28(%rbp)
.LBB15_29:                              # %if.end.46
                                        #   in Loop: Header=BB15_15 Depth=2
	jmp	.LBB15_30
.LBB15_30:                              # %if.end.47
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$32, -28(%rbp)
	jne	.LBB15_32
# BB#31:                                # %if.then.50
                                        #   in Loop: Header=BB15_15 Depth=2
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB15_36
.LBB15_32:                              # %if.else
                                        #   in Loop: Header=BB15_15 Depth=2
	cmpl	$10, -28(%rbp)
	jne	.LBB15_34
# BB#33:                                # %if.then.54
                                        #   in Loop: Header=BB15_15 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	jmp	.LBB15_35
.LBB15_34:                              # %if.else.58
                                        #   in Loop: Header=BB15_15 Depth=2
	leaq	-96(%rbp), %rsi
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %edi
	callq	scan_keyword_or_put_char
.LBB15_35:                              # %if.end.60
                                        #   in Loop: Header=BB15_15 Depth=2
	jmp	.LBB15_36
.LBB15_36:                              # %if.end.61
                                        #   in Loop: Header=BB15_15 Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB15_15
.LBB15_37:                              # %while.end.63
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpl	$-1, -28(%rbp)
	je	.LBB15_39
# BB#38:                                # %if.then.66
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
.LBB15_39:                              # %if.end.68
                                        #   in Loop: Header=BB15_13 Depth=1
	testb	$1, -13(%rbp)
	je	.LBB15_43
# BB#40:                                # %if.then.70
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpl	$47, -28(%rbp)
	jne	.LBB15_42
# BB#41:                                # %if.then.73
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	jmp	.LBB15_47
.LBB15_42:                              # %if.end.75
                                        #   in Loop: Header=BB15_13 Depth=1
	movl	$42, %edi
	leaq	-96(%rbp), %rsi
	callq	scan_keyword_or_put_char
	jmp	.LBB15_46
.LBB15_43:                              # %if.else.76
                                        #   in Loop: Header=BB15_13 Depth=1
	cmpl	$34, -28(%rbp)
	je	.LBB15_45
# BB#44:                                # %if.then.79
	jmp	.LBB15_47
.LBB15_45:                              # %if.end.80
                                        #   in Loop: Header=BB15_13 Depth=1
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
.LBB15_46:                              # %if.end.82
                                        #   in Loop: Header=BB15_13 Depth=1
	jmp	.LBB15_13
.LBB15_47:                              # %while.end.83
	cmpl	$0, -12(%rbp)
	jge	.LBB15_49
# BB#48:                                # %if.then.86
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.LBB15_49:                              # %if.end.88
	cmpq	$0, -24(%rbp)
	je	.LBB15_51
# BB#50:                                # %if.then.90
	movb	-40(%rbp), %al
	movq	-24(%rbp), %rcx
	andb	$1, %al
	movb	%al, (%rcx)
.LBB15_51:                              # %if.end.94
	movl	-28(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	read_c_string_or_comment, .Lfunc_end15-read_c_string_or_comment
	.cfi_endproc

	.align	16, 0x90
	.type	scan_keyword_or_put_char,@function
scan_keyword_or_put_char:               # @scan_keyword_or_put_char
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
	subq	$48, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 40(%rsi)
	je	.LBB16_21
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movsbl	(%rax), %ecx
	movsbl	-1(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB16_21
# BB#2:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	ja	.LBB16_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jle	.LBB16_21
.LBB16_4:                               # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 48(%rax)
	movsbl	1(%rcx), %esi
	cmpl	$0, %esi
	jne	.LBB16_20
# BB#5:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movb	$1, 56(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	$2, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB16_6:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -20(%rbp)
# BB#7:                                 # %do.cond
                                        #   in Loop: Header=BB16_6 Depth=1
	movb	$1, %al
	cmpl	$32, -20(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
	je	.LBB16_9
# BB#8:                                 # %lor.rhs
                                        #   in Loop: Header=BB16_6 Depth=1
	cmpl	$10, -20(%rbp)
	sete	%al
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB16_9:                               # %lor.end
                                        #   in Loop: Header=BB16_6 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_6
# BB#10:                                # %do.end
	cmpl	$40, -20(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.24
	movabsq	$.L.str.48, %rdi
	movb	$0, %al
	callq	fatal
.LBB16_12:                              # %if.end
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rsi
	movsbl	%cl, %edi
	callq	put_char
.LBB16_13:                              # %do.body.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.31
	movabsq	$.L.str.49, %rdi
	movb	$0, %al
	callq	fatal
.LBB16_15:                              # %if.end.32
                                        #   in Loop: Header=BB16_13 Depth=1
	jmp	.LBB16_16
.LBB16_16:                              # %do.cond.33
                                        #   in Loop: Header=BB16_13 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -20(%rbp)
	movb	%cl, -34(%rbp)          # 1-byte Spill
	je	.LBB16_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB16_13 Depth=1
	cmpl	$41, -20(%rbp)
	setne	%al
	movb	%al, -34(%rbp)          # 1-byte Spill
.LBB16_18:                              # %land.end
                                        #   in Loop: Header=BB16_13 Depth=1
	movb	-34(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_13
# BB#19:                                # %do.end.38
	movl	$102, %edi
	movq	-16(%rbp), %rsi
	callq	put_char
	movl	$110, %edi
	movq	-16(%rbp), %rsi
	callq	put_char
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	callq	ungetc
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB16_20:                              # %if.end.41
	jmp	.LBB16_29
.LBB16_21:                              # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_28
# BB#22:                                # %land.lhs.true.44
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jbe	.LBB16_28
# BB#23:                                # %if.then.49
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB16_24:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jae	.LBB16_27
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB16_24 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rsi
	movsbl	%cl, %edi
	callq	put_char
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB16_24 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB16_24
.LBB16_27:                              # %for.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB16_28:                              # %if.end.57
	movb	-1(%rbp), %al
	movq	-16(%rbp), %rsi
	movsbl	%al, %edi
	callq	put_char
.LBB16_29:                              # %if.end.58
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	scan_keyword_or_put_char, .Lfunc_end16-scan_keyword_or_put_char
	.cfi_endproc

	.align	16, 0x90
	.type	put_char,@function
put_char:                               # @put_char
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
	subq	$32, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
.LBB17_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jle	.LBB17_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 8(%rax)
	movb	$10, -17(%rbp)
	jmp	.LBB17_7
.LBB17_3:                               # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jle	.LBB17_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, (%rax)
	movb	$32, -17(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %if.else.6
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	-1(%rbp), %al
	movb	%al, -17(%rbp)
.LBB17_6:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.7
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB17_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB17_1 Depth=1
	movsbl	-17(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB17_9:                               # %if.end.10
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB17_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	-17(%rbp), %al
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
.LBB17_11:                              # %if.end.14
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_12
.LBB17_12:                              # %do.cond
                                        #   in Loop: Header=BB17_1 Depth=1
	movsbl	-17(%rbp), %eax
	movsbl	-1(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB17_1
# BB#13:                                # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	put_char, .Lfunc_end17-put_char
	.cfi_endproc

	.align	16, 0x90
	.type	compare_globals,@function
compare_globals:                        # @compare_globals
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-40(%rbp), %rsi
	cmpl	(%rsi), %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB18_7
.LBB18_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB18_6
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.76, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -41(%rbp)
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	$.L.str.76, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -42(%rbp)
	movb	-41(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movb	-42(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	orl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB18_5
# BB#4:                                 # %if.then.15
	movb	-42(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-41(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	subl	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB18_7
.LBB18_5:                               # %if.end.21
	jmp	.LBB18_6
.LBB18_6:                               # %if.end.22
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	movl	%eax, -4(%rbp)
.LBB18_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	compare_globals, .Lfunc_end18-compare_globals
	.cfi_endproc

	.align	16, 0x90
	.type	error,@function
error:                                  # @error
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB19_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB19_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	verror
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end19:
	.size	error, .Lfunc_end19-error
	.cfi_endproc

	.align	16, 0x90
	.type	close_emacs_globals,@function
close_emacs_globals:                    # @close_emacs_globals
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
	subq	$16, %rsp
	movabsq	$.L.str.77, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	close_emacs_globals, .Lfunc_end20-close_emacs_globals
	.cfi_endproc

	.align	16, 0x90
	.type	add_global,@function
add_global:                             # @add_global
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
	subq	$96, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.84, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB21_15
# BB#1:                                 # %if.then
	movq	num_globals, %rax
	cmpq	num_globals_allocated, %rax
	jne	.LBB21_8
# BB#2:                                 # %if.then.1
	movabsq	$288230376151711743, %rax # imm = 0x3FFFFFFFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	num_globals_allocated, %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_4
# BB#3:                                 # %if.then.3
	callq	memory_exhausted
.LBB21_4:                               # %if.end
	movl	$2, %eax
	movl	%eax, %ecx
	movq	num_globals_allocated, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB21_6
# BB#5:                                 # %if.then.5
	movq	num_globals_allocated, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, num_globals_allocated
	jmp	.LBB21_7
.LBB21_6:                               # %if.else
	movq	-48(%rbp), %rax
	movq	%rax, num_globals_allocated
.LBB21_7:                               # %if.end.6
	movq	globals, %rax
	movq	num_globals_allocated, %rcx
	shlq	$5, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, globals
.LBB21_8:                               # %if.end.9
	movq	num_globals, %rax
	addq	$1, %rax
	movq	%rax, num_globals
	movq	-24(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, -40(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB21_10
# BB#9:                                 # %cond.true
	movq	-40(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB21_11
.LBB21_11:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %edx
	movq	num_globals, %rax
	subq	$1, %rax
	shlq	$5, %rax
	addq	globals, %rax
	movl	%edx, (%rax)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movq	num_globals, %rcx
	subq	$1, %rcx
	shlq	$5, %rcx
	addq	globals, %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -40(%rbp)
	je	.LBB21_13
# BB#12:                                # %if.then.23
	movq	-64(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	num_globals, %rsi
	subq	$1, %rsi
	shlq	$5, %rsi
	addq	globals, %rsi
	movq	%rax, 24(%rsi)
	jmp	.LBB21_14
.LBB21_13:                              # %if.else.28
	movl	-28(%rbp), %eax
	movq	num_globals, %rcx
	subq	$1, %rcx
	shlq	$5, %rcx
	addq	globals, %rcx
	movl	%eax, 24(%rcx)
.LBB21_14:                              # %if.end.33
	movq	num_globals, %rax
	subq	$1, %rax
	shlq	$5, %rax
	addq	globals, %rax
	movl	$0, 16(%rax)
	movq	globals, %rax
	movq	num_globals, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$-32, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_16
.LBB21_15:                              # %if.end.38
	movq	$0, -8(%rbp)
.LBB21_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	add_global, .Lfunc_end21-add_global
	.cfi_endproc

	.align	16, 0x90
	.type	stream_match,@function
stream_match:                           # @stream_match
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB22_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.LBB22_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB22_9
.LBB22_4:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB22_9
.LBB22_6:                               # %if.end.4
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_7
.LBB22_7:                               # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB22_1
.LBB22_8:                               # %for.end
	movl	$1, -4(%rbp)
.LBB22_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	stream_match, .Lfunc_end22-stream_match
	.cfi_endproc

	.align	16, 0x90
	.type	write_c_args,@function
write_c_args:                           # @write_c_args
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
	subq	$96, %rsp
	movabsq	$.L.str.85, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movb	$0, -33(%rbp)
	movq	$0, -56(%rbp)
	movq	stdout, %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-16(%rbp), %rsi
	movsbl	(%rsi), %ecx
	cmpl	$40, %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB23_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_29 Depth 2
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB23_41
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$65, %eax
	movq	-32(%rbp), %rcx
	movb	(%rcx), %dl
	movb	%dl, -57(%rbp)
	movsbl	-57(%rbp), %esi
	cmpl	%esi, %eax
	jg	.LBB23_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_3 Depth=1
	movb	$1, %al
	movsbl	-57(%rbp), %ecx
	cmpl	$90, %ecx
	movb	%al, -65(%rbp)          # 1-byte Spill
	jle	.LBB23_11
.LBB23_6:                               # %lor.lhs.false
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$97, %eax
	movsbl	-57(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB23_8
# BB#7:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB23_3 Depth=1
	movb	$1, %al
	movsbl	-57(%rbp), %ecx
	cmpl	$122, %ecx
	movb	%al, -65(%rbp)          # 1-byte Spill
	jle	.LBB23_11
.LBB23_8:                               # %lor.lhs.false.15
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$48, %eax
	movsbl	-57(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB23_10
# BB#9:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB23_3 Depth=1
	movb	$1, %al
	movsbl	-57(%rbp), %ecx
	cmpl	$57, %ecx
	movb	%al, -65(%rbp)          # 1-byte Spill
	jle	.LBB23_11
.LBB23_10:                              # %lor.rhs
                                        #   in Loop: Header=BB23_3 Depth=1
	movsbl	-57(%rbp), %eax
	cmpl	$95, %eax
	sete	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB23_11:                              # %lor.end
                                        #   in Loop: Header=BB23_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	cmpl	%edx, %ecx
	je	.LBB23_16
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB23_3 Depth=1
	testb	$1, -33(%rbp)
	jne	.LBB23_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB23_3 Depth=1
	movb	$1, -33(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB23_15
.LBB23_14:                              # %if.else
                                        #   in Loop: Header=BB23_3 Depth=1
	movb	$0, -33(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB23_15:                              # %if.end.33
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_16
.LBB23_16:                              # %if.end.34
                                        #   in Loop: Header=BB23_3 Depth=1
	movsbl	-57(%rbp), %eax
	cmpl	$44, %eax
	je	.LBB23_18
# BB#17:                                # %lor.lhs.false.38
                                        #   in Loop: Header=BB23_3 Depth=1
	movsbl	-57(%rbp), %eax
	cmpl	$41, %eax
	jne	.LBB23_39
.LBB23_18:                              # %if.then.42
                                        #   in Loop: Header=BB23_3 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB23_20
# BB#19:                                # %if.then.45
                                        #   in Loop: Header=BB23_3 Depth=1
	movabsq	$.L.str.86, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	error
	jmp	.LBB23_40
.LBB23_20:                              # %if.end.46
                                        #   in Loop: Header=BB23_3 Depth=1
	movabsq	$.L.str.87, %rsi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB23_22
# BB#21:                                # %if.then.50
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_40
.LBB23_22:                              # %if.end.51
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$32, %edi
	callq	putchar
	cmpl	$0, -20(%rbp)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jne	.LBB23_25
# BB#23:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB23_3 Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB23_25
# BB#24:                                # %if.then.58
                                        #   in Loop: Header=BB23_3 Depth=1
	movabsq	$.L.str.88, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB23_25:                              # %if.end.60
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	cmpq	$6, -56(%rbp)
	jne	.LBB23_28
# BB#26:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-48(%rbp), %rdi
	movl	$.L.str.89, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB23_28
# BB#27:                                # %if.then.68
                                        #   in Loop: Header=BB23_3 Depth=1
	movabsq	$.L.str.90, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB23_38
.LBB23_28:                              # %if.else.70
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_29
.LBB23_29:                              # %while.cond
                                        #   Parent Loop BB23_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$0, %rax
	jle	.LBB23_37
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB23_29 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movb	%dl, -57(%rbp)
	movsbl	-57(%rbp), %esi
	cmpl	$97, %esi
	jl	.LBB23_33
# BB#31:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB23_29 Depth=2
	movsbl	-57(%rbp), %eax
	cmpl	$122, %eax
	jg	.LBB23_33
# BB#32:                                # %if.then.82
                                        #   in Loop: Header=BB23_29 Depth=2
	movsbl	-57(%rbp), %eax
	addl	$-32, %eax
	movb	%al, %cl
	movb	%cl, -57(%rbp)
	jmp	.LBB23_36
.LBB23_33:                              # %if.else.85
                                        #   in Loop: Header=BB23_29 Depth=2
	movsbl	-57(%rbp), %eax
	cmpl	$95, %eax
	jne	.LBB23_35
# BB#34:                                # %if.then.89
                                        #   in Loop: Header=BB23_29 Depth=2
	movb	$45, -57(%rbp)
.LBB23_35:                              # %if.end.90
                                        #   in Loop: Header=BB23_29 Depth=2
	jmp	.LBB23_36
.LBB23_36:                              # %if.end.91
                                        #   in Loop: Header=BB23_29 Depth=2
	movsbl	-57(%rbp), %edi
	callq	putchar
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB23_29
.LBB23_37:                              # %while.end
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_38
.LBB23_38:                              # %if.end.94
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_39
.LBB23_39:                              # %if.end.95
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_40
.LBB23_40:                              # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_3
.LBB23_41:                              # %for.end
	movl	$41, %edi
	callq	putchar
	movl	%eax, -88(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	write_c_args, .Lfunc_end23-write_c_args
	.cfi_endproc

	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	callq	memory_exhausted
.LBB24_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	xrealloc, .Lfunc_end24-xrealloc
	.cfi_endproc

	.type	progname,@object        # @progname
	.local	progname
	.comm	progname,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-o"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-a"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"a"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-d"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-g"
	.size	.L.str.5, 3

	.type	generate_globals,@object # @generate_globals
	.local	generate_globals
	.comm	generate_globals,1,1
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"write error"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s: "
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\n"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".elc"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"rb"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".el"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"r"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\037S%s\n"
	.size	.L.str.13, 6

	.type	scan_lisp_file.uncompiled,@object # @scan_lisp_file.uncompiled
	.section	.rodata,"a",@progbits
	.align	16
scan_lisp_file.uncompiled:
	.quad	.L.str.14
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.15
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.16
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.17
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.18
	.long	11                      # 0xb
	.zero	4
	.size	scan_lisp_file.uncompiled, 80

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"loaddefs.el"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"loadup.el"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"charprop.el"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cp51932.el"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"eucjp-ms.el"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"scanning lisp file when -g specified"
	.size	.L.str.19, 37

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"uncompiled lisp file %s is not supported"
	.size	.L.str.20, 41

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"invalid dynamic doc string length"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"space not found after dynamic doc string length"
	.size	.L.str.22, 48

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"defun"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"defmacro"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"defsubst"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"## unparsable arglist in %s (%s)\n"
	.size	.L.str.26, 34

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"defvar"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"defconst"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"defcustom"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"custom-declare-variable"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"defvaralias"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"## unparsable name in custom-declare-variable in %s\n"
	.size	.L.str.32, 53

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"quote"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"## unparsable quoted name in custom-declare-variable in %s\n"
	.size	.L.str.34, 60

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"fset"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"defalias"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"## unparsable name in fset in %s\n"
	.size	.L.str.37, 34

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"## unparsable quoted name in fset in %s\n"
	.size	.L.str.38, 41

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"autoload"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"## unparsable name in autoload in %s\n"
	.size	.L.str.40, 38

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"## unparsable quoted name in autoload in %s\n"
	.size	.L.str.41, 45

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"## autoload of %s unparsable (%s)\n"
	.size	.L.str.42, 35

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\037%c%s\n"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s: read error"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"virtual memory exhausted"
	.size	.L.str.45, 25

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"## expected a symbol, got '%c'\n"
	.size	.L.str.46, 32

	.type	input_buffer,@object    # @input_buffer
	.local	input_buffer
	.comm	input_buffer,128,16
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"usage:"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Missing '(' after keyword"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Unexpected EOF after keyword"
	.size	.L.str.49, 29

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"/* This file was auto-generated by make-docfile.  */"
	.size	.L.str.50, 53

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/* DO NOT EDIT.  */"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"struct emacs_globals {"
	.size	.L.str.52, 23

	.type	globals,@object         # @globals
	.local	globals
	.comm	globals,8,8
	.type	num_globals,@object     # @num_globals
	.local	num_globals
	.comm	num_globals,8,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"function '%s' defined twice with differing signatures"
	.size	.L.str.53, 54

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"EMACS_INT"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"bool"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Lisp_Object"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"not a recognized DEFVAR_"
	.size	.L.str.57, 25

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"  %s f_%s;\n"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"#define %s globals.f_%s\n"
	.size	.L.str.59, 25

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"#define i%s %td\nDEFINE_LISP_SYMBOL (%s)\n"
	.size	.L.str.60, 41

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_Noreturn "
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"EXFUN (%s, "
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"MANY"
	.size	.L.str.63, 5

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"UNEVALLED"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%d"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	" ATTRIBUTE_CONST"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	";"
	.size	.L.str.67, 2

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"#ifdef DEFINE_SYMBOLS"
	.size	.L.str.68, 22

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"static char const *const defsym_name[] = {"
	.size	.L.str.69, 43

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"\t\"%s\",\n"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"};"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"#endif"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"#define Qnil builtin_lisp_symbol (0)"
	.size	.L.str.73, 37

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"#if DEFINE_NON_NIL_Q_SYMBOL_MACROS"
	.size	.L.str.74, 35

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"# define %s builtin_lisp_symbol (%td)\n"
	.size	.L.str.75, 39

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Qnil"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"};\nextern struct emacs_globals globals;\n\n#ifndef DEFINE_SYMBOLS\nextern\n#endif\nstruct Lisp_Symbol alignas (GCALIGNMENT) lispsym[%td];\n"
	.size	.L.str.77, 134

	.type	scan_c_stream.name,@object # @scan_c_stream.name
	.local	scan_c_stream.name
	.comm	scan_c_stream.name,8,8
	.type	scan_c_stream.name_size,@object # @scan_c_stream.name_size
	.local	scan_c_stream.name_size
	.comm	scan_c_stream.name_size,8,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"ttributes:"
	.size	.L.str.78, 11

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"noreturn"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"const"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"\n\n"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Missing 'usage' for function '%s'.\n"
	.size	.L.str.82, 36

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"read error"
	.size	.L.str.83, 11

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"..."
	.size	.L.str.84, 4

	.type	num_globals_allocated,@object # @num_globals_allocated
	.local	num_globals_allocated
	.comm	num_globals_allocated,8,8
	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"(fn"
	.size	.L.str.85, 4

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"empty arg list for '%s' should be (void), not ()"
	.size	.L.str.86, 49

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"void"
	.size	.L.str.87, 5

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"&optional "
	.size	.L.str.88, 11

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"defalt"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"DEFAULT"
	.size	.L.str.90, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
