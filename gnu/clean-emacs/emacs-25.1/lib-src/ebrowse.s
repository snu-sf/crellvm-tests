	.text
	.file	"ebrowse.bc"
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
	subq	$144, %rsp
	movabsq	$.L.str.15, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movq	%rax, filename
	movq	stdout, %rax
	movq	%rax, yyout
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.16, %rdx
	movabsq	$options, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	getopt_long
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	je	.LBB0_23
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$-3, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	je	.LBB0_21
	jmp	.LBB0_61
.LBB0_61:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$-2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB0_20
	jmp	.LBB0_62
.LBB0_62:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$73, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB0_19
	jmp	.LBB0_63
.LBB0_63:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB0_18
	jmp	.LBB0_64
.LBB0_64:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB0_15
	jmp	.LBB0_65
.LBB0_65:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB0_12
	jmp	.LBB0_66
.LBB0_66:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB0_6
	jmp	.LBB0_67
.LBB0_67:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB0_17
	jmp	.LBB0_68
.LBB0_68:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_69
.LBB0_69:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB0_16
	jmp	.LBB0_70
.LBB0_70:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB0_3
	jmp	.LBB0_71
.LBB0_71:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB0_13
	jmp	.LBB0_72
.LBB0_72:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_14
	jmp	.LBB0_73
.LBB0_73:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_5
	jmp	.LBB0_22
.LBB0_3:                                # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rdi
	callq	atoi
	movl	%eax, info_position
	jmp	.LBB0_22
.LBB0_4:                                # %sw.bb.2
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, f_nested_classes
	jmp	.LBB0_22
.LBB0_5:                                # %sw.bb.3
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, f_regexps
	jmp	.LBB0_22
.LBB0_6:                                # %sw.bb.4
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	main.n_input_files, %eax
	cmpl	main.input_filenames_size, %eax
	jne	.LBB0_11
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$10, %eax
	movl	main.input_filenames_size, %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$10, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	main.input_filenames_size, %eax
	shll	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB0_10:                               # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, main.input_filenames_size
	movq	main.input_filenames, %rcx
	movslq	main.input_filenames_size, %rsi
	movq	%rcx, %rdi
	callq	xrealloc
	movq	%rax, main.input_filenames
.LBB0_11:                               # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rdi
	callq	xstrdup
	movl	main.n_input_files, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, main.n_input_files
	movslq	%ecx, %rdi
	movq	main.input_filenames, %rsi
	movq	%rax, (%rsi,%rdi,8)
	jmp	.LBB0_22
.LBB0_12:                               # %sw.bb.10
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, f_append
	jmp	.LBB0_22
.LBB0_13:                               # %sw.bb.11
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, f_structs
	jmp	.LBB0_22
.LBB0_14:                               # %sw.bb.12
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, f_verbose
	jmp	.LBB0_22
.LBB0_15:                               # %sw.bb.13
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, f_verbose
	movl	$1, f_very_verbose
	jmp	.LBB0_22
.LBB0_16:                               # %sw.bb.14
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rax
	movq	%rax, main.out_filename
	jmp	.LBB0_22
.LBB0_17:                               # %sw.bb.15
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rdi
	callq	atoi
	movl	%eax, min_regexp
	jmp	.LBB0_22
.LBB0_18:                               # %sw.bb.17
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rdi
	callq	atoi
	movl	%eax, max_regexp
	jmp	.LBB0_22
.LBB0_19:                               # %sw.bb.19
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rdi
	callq	add_search_path
	jmp	.LBB0_22
.LBB0_20:                               # %sw.bb.20
	xorl	%edi, %edi
	callq	usage
.LBB0_21:                               # %sw.bb.21
	callq	version
.LBB0_22:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_23:                               # %while.end
	callq	init_scanner
	callq	init_sym
	movq	main.out_filename, %rax
	cmpb	$0, (%rax)
	je	.LBB0_38
# BB#24:                                # %if.then.22
	cmpl	$0, f_append
	je	.LBB0_35
# BB#25:                                # %if.then.24
	movabsq	$.L.str.17, %rsi
	movq	main.out_filename, %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.28
	movabsq	$.L.str.18, %rdi
	movq	main.out_filename, %rsi
	callq	yyerror
	movl	$1, %edi
	callq	exit
.LBB0_27:                               # %if.end.29
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	callq	fseek
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB0_29
# BB#28:                                # %if.then.33
	movabsq	$.L.str.19, %rdi
	movq	main.out_filename, %rsi
	callq	yyerror
	movl	$1, %edi
	callq	exit
.LBB0_29:                               # %if.end.34
	movq	-32(%rbp), %rdi
	callq	ftell
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.39
	movabsq	$.L.str.20, %rdi
	movq	main.out_filename, %rsi
	callq	yyerror
	movl	$1, %edi
	callq	exit
.LBB0_31:                               # %if.else
	cmpl	$0, -36(%rbp)
	jne	.LBB0_33
# BB#32:                                # %if.then.42
	movabsq	$.L.str.21, %rdi
	movq	main.out_filename, %rsi
	callq	yyerror
.LBB0_33:                               # %if.end.43
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.44
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB0_35:                               # %if.end.46
	movabsq	$.L.str.23, %rax
	movabsq	$.L.str.22, %rcx
	movq	main.out_filename, %rdi
	cmpl	$0, f_append
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, yyout
	cmpq	$0, yyout
	jne	.LBB0_37
# BB#36:                                # %if.then.52
	movabsq	$.L.str.24, %rdi
	movq	main.out_filename, %rsi
	callq	yyerror
	movl	$1, %edi
	callq	exit
.LBB0_37:                               # %if.end.53
	jmp	.LBB0_38
.LBB0_38:                               # %if.end.54
	jmp	.LBB0_39
.LBB0_39:                               # %while.cond.55
                                        # =>This Inner Loop Header: Depth=1
	movl	optind, %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_41
# BB#40:                                # %while.body.58
                                        #   in Loop: Header=BB0_39 Depth=1
	movl	optind, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, optind
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdi
	callq	process_file
	movl	$1, -24(%rbp)
	jmp	.LBB0_39
.LBB0_41:                               # %while.end.62
	cmpl	$0, -24(%rbp)
	jne	.LBB0_47
# BB#42:                                # %land.lhs.true
	cmpl	$0, main.n_input_files
	jne	.LBB0_47
# BB#43:                                # %if.then.66
	jmp	.LBB0_44
.LBB0_44:                               # %while.cond.67
                                        # =>This Inner Loop Header: Depth=1
	movq	stdin, %rdi
	callq	read_line
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB0_46
# BB#45:                                # %while.body.71
                                        #   in Loop: Header=BB0_44 Depth=1
	movq	-48(%rbp), %rdi
	callq	process_file
	jmp	.LBB0_44
.LBB0_46:                               # %while.end.72
	jmp	.LBB0_58
.LBB0_47:                               # %if.else.73
	movl	$0, -20(%rbp)
.LBB0_48:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	movl	-20(%rbp), %eax
	cmpl	main.n_input_files, %eax
	jge	.LBB0_57
# BB#49:                                # %for.body
                                        #   in Loop: Header=BB0_48 Depth=1
	movabsq	$.L.str.17, %rsi
	movslq	-20(%rbp), %rax
	movq	main.input_filenames, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_51
# BB#50:                                # %if.then.82
                                        #   in Loop: Header=BB0_48 Depth=1
	movabsq	$.L.str.25, %rdi
	movslq	-20(%rbp), %rax
	movq	main.input_filenames, %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	yyerror
	jmp	.LBB0_55
.LBB0_51:                               # %if.else.85
                                        #   in Loop: Header=BB0_48 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %while.cond.87
                                        #   Parent Loop BB0_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi
	callq	read_line
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB0_54
# BB#53:                                # %while.body.91
                                        #   in Loop: Header=BB0_52 Depth=2
	movq	-64(%rbp), %rdi
	callq	process_file
	jmp	.LBB0_52
.LBB0_54:                               # %while.end.92
                                        #   in Loop: Header=BB0_48 Depth=1
	movq	-56(%rbp), %rdi
	callq	fclose
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB0_55:                               # %if.end.94
                                        #   in Loop: Header=BB0_48 Depth=1
	jmp	.LBB0_56
.LBB0_56:                               # %for.inc
                                        #   in Loop: Header=BB0_48 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_48
.LBB0_57:                               # %for.end
	jmp	.LBB0_58
.LBB0_58:                               # %if.end.96
	movq	yyout, %rdi
	callq	dump_roots
	movq	yyout, %rdi
	cmpq	stdout, %rdi
	je	.LBB0_60
# BB#59:                                # %if.then.99
	movq	yyout, %rdi
	callq	fclose
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB0_60:                               # %if.end.101
	xorl	%eax, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
	movl	$1, %edi
	callq	exit
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xrealloc, .Lfunc_end1-xrealloc
	.cfi_endproc

	.align	16, 0x90
	.type	xstrdup,@function
xstrdup:                                # @xstrdup
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xstrdup, .Lfunc_end2-xstrdup
	.cfi_endproc

	.align	16, 0x90
	.type	add_search_path,@function
add_search_path:                        # @add_search_path
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #     Child Loop BB3_11 Depth 2
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_14
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_3:                                # %while.cond.1
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB3_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB3_5:                                # %land.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_6
	jmp	.LBB3_7
.LBB3_6:                                # %while.body.5
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_7:                                # %while.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	subq	%rdi, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, search_path_tail
	je	.LBB3_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	search_path_tail, %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, search_path_tail
	jmp	.LBB3_10
.LBB3_9:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, search_path_tail
	movq	%rax, search_path
.LBB3_10:                               # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %while.cond.17
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB3_13
# BB#12:                                # %while.body.21
                                        #   in Loop: Header=BB3_11 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_11
.LBB3_13:                               # %while.end.23
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_14:                               # %while.end.24
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	add_search_path, .Lfunc_end3-add_search_path
	.cfi_endproc

	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	cmpq	$2, %rax
	jae	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-8(%rbp), %rax
	movq	usage_message(,%rax,8), %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	%eax, -12(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -4(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %edi
	callq	exit
.Lfunc_end4:
	.size	usage, .Lfunc_end4-usage
	.cfi_endproc

	.align	16, 0x90
	.type	version,@function
version:                                # @version
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
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.Lversion.emacs_copyright, %rax
	movl	$50, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	printf
	leaq	-64(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.31, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	puts
	xorl	%edi, %edi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end5:
	.size	version, .Lfunc_end5-version
	.cfi_endproc

	.align	16, 0x90
	.type	init_scanner,@function
init_scanner:                           # @init_scanner
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
	subq	$16, %rsp
	movq	$102401, inbuffer_size  # imm = 0x19001
	movq	inbuffer_size, %rdi
	callq	xmalloc
	movq	%rax, in
	movq	%rax, inbuffer
	movl	$1, yyline
	movl	$0, -4(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-4(%rbp), %rax
	cmpq	$255, %rax
	jae	.LBB6_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$95, -4(%rbp)
	je	.LBB6_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	je	.LBB6_5
.LBB6_4:                                # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-4(%rbp), %rax
	movb	$1, is_ident(,%rax)
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$48, -4(%rbp)
	jl	.LBB6_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$57, -4(%rbp)
	jg	.LBB6_8
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-4(%rbp), %rax
	movb	$1, is_digit(,%rax)
.LBB6_8:                                # %if.end.15
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$32, -4(%rbp)
	je	.LBB6_12
# BB#9:                                 # %lor.lhs.false.18
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$9, -4(%rbp)
	je	.LBB6_12
# BB#10:                                # %lor.lhs.false.21
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$12, -4(%rbp)
	je	.LBB6_12
# BB#11:                                # %lor.lhs.false.24
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$11, -4(%rbp)
	jne	.LBB6_13
.LBB6_12:                               # %if.then.27
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-4(%rbp), %rax
	movb	$1, is_white(,%rax)
.LBB6_13:                               # %if.end.30
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_1
.LBB6_15:                               # %for.end
	movabsq	$.L.str.32, %rdi
	movl	$275, %esi              # imm = 0x113
	callq	insert_keyword
	movabsq	$.L.str.33, %rdi
	movl	$276, %esi              # imm = 0x114
	callq	insert_keyword
	movabsq	$.L.str.34, %rdi
	movl	$286, %esi              # imm = 0x11E
	callq	insert_keyword
	movabsq	$.L.str.35, %rdi
	movl	$287, %esi              # imm = 0x11F
	callq	insert_keyword
	movabsq	$.L.str.36, %rdi
	movl	$38, %esi
	callq	insert_keyword
	movabsq	$.L.str.37, %rdi
	movl	$124, %esi
	callq	insert_keyword
	movabsq	$.L.str.38, %rdi
	movl	$335, %esi              # imm = 0x14F
	callq	insert_keyword
	movabsq	$.L.str.39, %rdi
	movl	$288, %esi              # imm = 0x120
	callq	insert_keyword
	movabsq	$.L.str.40, %rdi
	movl	$289, %esi              # imm = 0x121
	callq	insert_keyword
	movabsq	$.L.str.41, %rdi
	movl	$290, %esi              # imm = 0x122
	callq	insert_keyword
	movabsq	$.L.str.42, %rdi
	movl	$291, %esi              # imm = 0x123
	callq	insert_keyword
	movabsq	$.L.str.43, %rdi
	movl	$292, %esi              # imm = 0x124
	callq	insert_keyword
	movabsq	$.L.str.44, %rdi
	movl	$126, %esi
	callq	insert_keyword
	movabsq	$.L.str.45, %rdi
	movl	$293, %esi              # imm = 0x125
	callq	insert_keyword
	movabsq	$.L.str.46, %rdi
	movl	$342, %esi              # imm = 0x156
	callq	insert_keyword
	movabsq	$.L.str.47, %rdi
	movl	$294, %esi              # imm = 0x126
	callq	insert_keyword
	movabsq	$.L.str.48, %rdi
	movl	$295, %esi              # imm = 0x127
	callq	insert_keyword
	movabsq	$.L.str.49, %rdi
	movl	$296, %esi              # imm = 0x128
	callq	insert_keyword
	movabsq	$.L.str.50, %rdi
	movl	$297, %esi              # imm = 0x129
	callq	insert_keyword
	movabsq	$.L.str.51, %rdi
	movl	$298, %esi              # imm = 0x12A
	callq	insert_keyword
	movabsq	$.L.str.52, %rdi
	movl	$343, %esi              # imm = 0x157
	callq	insert_keyword
	movabsq	$.L.str.53, %rdi
	movl	$299, %esi              # imm = 0x12B
	callq	insert_keyword
	movabsq	$.L.str.54, %rdi
	movl	$300, %esi              # imm = 0x12C
	callq	insert_keyword
	movabsq	$.L.str.55, %rdi
	movl	$340, %esi              # imm = 0x154
	callq	insert_keyword
	movabsq	$.L.str.56, %rdi
	movl	$301, %esi              # imm = 0x12D
	callq	insert_keyword
	movabsq	$.L.str.57, %rdi
	movl	$337, %esi              # imm = 0x151
	callq	insert_keyword
	movabsq	$.L.str.58, %rdi
	movl	$302, %esi              # imm = 0x12E
	callq	insert_keyword
	movabsq	$.L.str.59, %rdi
	movl	$303, %esi              # imm = 0x12F
	callq	insert_keyword
	movabsq	$.L.str.60, %rdi
	movl	$304, %esi              # imm = 0x130
	callq	insert_keyword
	movabsq	$.L.str.61, %rdi
	movl	$305, %esi              # imm = 0x131
	callq	insert_keyword
	movabsq	$.L.str.62, %rdi
	movl	$306, %esi              # imm = 0x132
	callq	insert_keyword
	movabsq	$.L.str.63, %rdi
	movl	$307, %esi              # imm = 0x133
	callq	insert_keyword
	movabsq	$.L.str.64, %rdi
	movl	$308, %esi              # imm = 0x134
	callq	insert_keyword
	movabsq	$.L.str.65, %rdi
	movl	$309, %esi              # imm = 0x135
	callq	insert_keyword
	movabsq	$.L.str.66, %rdi
	movl	$334, %esi              # imm = 0x14E
	callq	insert_keyword
	movabsq	$.L.str.67, %rdi
	movl	$339, %esi              # imm = 0x153
	callq	insert_keyword
	movabsq	$.L.str.68, %rdi
	movl	$310, %esi              # imm = 0x136
	callq	insert_keyword
	movabsq	$.L.str.69, %rdi
	movl	$33, %esi
	callq	insert_keyword
	movabsq	$.L.str.70, %rdi
	movl	$281, %esi              # imm = 0x119
	callq	insert_keyword
	movabsq	$.L.str.71, %rdi
	movl	$311, %esi              # imm = 0x137
	callq	insert_keyword
	movabsq	$.L.str.72, %rdi
	movl	$273, %esi              # imm = 0x111
	callq	insert_keyword
	movabsq	$.L.str.73, %rdi
	movl	$274, %esi              # imm = 0x112
	callq	insert_keyword
	movabsq	$.L.str.74, %rdi
	movl	$312, %esi              # imm = 0x138
	callq	insert_keyword
	movabsq	$.L.str.75, %rdi
	movl	$313, %esi              # imm = 0x139
	callq	insert_keyword
	movabsq	$.L.str.76, %rdi
	movl	$314, %esi              # imm = 0x13A
	callq	insert_keyword
	movabsq	$.L.str.77, %rdi
	movl	$315, %esi              # imm = 0x13B
	callq	insert_keyword
	movabsq	$.L.str.78, %rdi
	movl	$344, %esi              # imm = 0x158
	callq	insert_keyword
	movabsq	$.L.str.79, %rdi
	movl	$316, %esi              # imm = 0x13C
	callq	insert_keyword
	movabsq	$.L.str.80, %rdi
	movl	$317, %esi              # imm = 0x13D
	callq	insert_keyword
	movabsq	$.L.str.81, %rdi
	movl	$318, %esi              # imm = 0x13E
	callq	insert_keyword
	movabsq	$.L.str.82, %rdi
	movl	$319, %esi              # imm = 0x13F
	callq	insert_keyword
	movabsq	$.L.str.83, %rdi
	movl	$320, %esi              # imm = 0x140
	callq	insert_keyword
	movabsq	$.L.str.84, %rdi
	movl	$345, %esi              # imm = 0x159
	callq	insert_keyword
	movabsq	$.L.str.85, %rdi
	movl	$321, %esi              # imm = 0x141
	callq	insert_keyword
	movabsq	$.L.str.86, %rdi
	movl	$322, %esi              # imm = 0x142
	callq	insert_keyword
	movabsq	$.L.str.87, %rdi
	movl	$323, %esi              # imm = 0x143
	callq	insert_keyword
	movabsq	$.L.str.88, %rdi
	movl	$324, %esi              # imm = 0x144
	callq	insert_keyword
	movabsq	$.L.str.89, %rdi
	movl	$325, %esi              # imm = 0x145
	callq	insert_keyword
	movabsq	$.L.str.90, %rdi
	movl	$336, %esi              # imm = 0x150
	callq	insert_keyword
	movabsq	$.L.str.91, %rdi
	movl	$326, %esi              # imm = 0x146
	callq	insert_keyword
	movabsq	$.L.str.92, %rdi
	movl	$327, %esi              # imm = 0x147
	callq	insert_keyword
	movabsq	$.L.str.93, %rdi
	movl	$346, %esi              # imm = 0x15A
	callq	insert_keyword
	movabsq	$.L.str.94, %rdi
	movl	$341, %esi              # imm = 0x155
	callq	insert_keyword
	movabsq	$.L.str.95, %rdi
	movl	$328, %esi              # imm = 0x148
	callq	insert_keyword
	movabsq	$.L.str.96, %rdi
	movl	$329, %esi              # imm = 0x149
	callq	insert_keyword
	movabsq	$.L.str.97, %rdi
	movl	$347, %esi              # imm = 0x15B
	callq	insert_keyword
	movabsq	$.L.str.98, %rdi
	movl	$330, %esi              # imm = 0x14A
	callq	insert_keyword
	movabsq	$.L.str.99, %rdi
	movl	$331, %esi              # imm = 0x14B
	callq	insert_keyword
	movabsq	$.L.str.100, %rdi
	movl	$332, %esi              # imm = 0x14C
	callq	insert_keyword
	movabsq	$.L.str.101, %rdi
	movl	$348, %esi              # imm = 0x15C
	callq	insert_keyword
	movabsq	$.L.str.102, %rdi
	movl	$333, %esi              # imm = 0x14D
	callq	insert_keyword
	movabsq	$.L.str.103, %rdi
	movl	$94, %esi
	callq	insert_keyword
	movabsq	$.L.str.104, %rdi
	movl	$277, %esi              # imm = 0x115
	callq	insert_keyword
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_scanner, .Lfunc_end6-init_scanner
	.cfi_endproc

	.align	16, 0x90
	.type	init_sym,@function
init_sym:                               # @init_sym
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
	movabsq	$.L.str.105, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	add_sym
	movq	%rax, global_symbols
	popq	%rbp
	retq
.Lfunc_end7:
	.size	init_sym, .Lfunc_end7-init_sym
	.cfi_endproc

	.align	16, 0x90
	.type	yyerror,@function
yyerror:                                # @yyerror
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
	subq	$32, %rsp
	movabsq	$.L.str.106, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	stderr, %rdi
	movq	filename, %rdx
	movl	yyline, %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	stderr, %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	yyerror, .Lfunc_end8-yyerror
	.cfi_endproc

	.align	16, 0x90
	.type	process_file,@function
process_file:                           # @process_file
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	open_file
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_13
# BB#1:                                 # %if.then
	cmpl	$0, f_very_verbose
	je	.LBB9_3
# BB#2:                                 # %if.then.2
	movq	filename, %rdi
	callq	puts
	movq	stdout, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	fflush
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_3:                                # %if.else
	cmpl	$0, f_verbose
	je	.LBB9_5
# BB#4:                                 # %if.then.6
	movl	$46, %edi
	callq	putchar
	movq	stdout, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fflush
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.9
	movq	$0, -24(%rbp)
.LBB9_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$102400, %rax           # imm = 0x19000
	cmpq	inbuffer_size, %rax
	jb	.LBB9_9
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-24(%rbp), %rax
	addq	$102400, %rax           # imm = 0x19000
	addq	$1, %rax
	movq	%rax, inbuffer_size
	movq	inbuffer, %rdi
	movq	inbuffer_size, %rsi
	callq	xrealloc
	movq	%rax, inbuffer
.LBB9_9:                                # %if.end.14
                                        #   in Loop: Header=BB9_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$102400, %eax           # imm = 0x19000
	movl	%eax, %edx
	movq	inbuffer, %rcx
	addq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	fread
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_11
# BB#10:                                # %if.then.17
	jmp	.LBB9_12
.LBB9_11:                               # %if.end.18
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_7
.LBB9_12:                               # %for.end
	movq	-24(%rbp), %rax
	movq	inbuffer, %rcx
	movb	$0, (%rcx,%rax)
	callq	re_init_scanner
	callq	re_init_parser
	callq	yyparse
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB9_13:                               # %if.end.21
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	process_file, .Lfunc_end9-process_file
	.cfi_endproc

	.align	16, 0x90
	.type	read_line,@function
read_line:                              # @read_line
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -24(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -25(%rbp)          # 1-byte Spill
	je	.LBB10_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$10, -24(%rbp)
	setne	%al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB10_3:                               # %land.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_10
.LBB10_4:                               # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	read_line.buffer_size, %eax
	jl	.LBB10_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$100, %eax
	movl	read_line.buffer_size, %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB10_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$100, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	read_line.buffer_size, %eax
	shll	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB10_8:                               # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, read_line.buffer_size
	movq	read_line.buffer, %rdi
	movslq	read_line.buffer_size, %rsi
	callq	xrealloc
	movq	%rax, read_line.buffer
.LBB10_9:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-24(%rbp), %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rsi
	movq	read_line.buffer, %rdi
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB10_1
.LBB10_10:                              # %while.end
	cmpl	$-1, -24(%rbp)
	jne	.LBB10_13
# BB#11:                                # %land.lhs.true
	cmpl	$0, -20(%rbp)
	jne	.LBB10_13
# BB#12:                                # %if.then.11
	movq	$0, -8(%rbp)
	jmp	.LBB10_22
.LBB10_13:                              # %if.end.12
	movl	-20(%rbp), %eax
	cmpl	read_line.buffer_size, %eax
	jne	.LBB10_18
# BB#14:                                # %if.then.15
	movl	$100, %eax
	movl	read_line.buffer_size, %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB10_16
# BB#15:                                # %cond.true.19
	movl	$100, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.20
	movl	read_line.buffer_size, %eax
	shll	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB10_17:                              # %cond.end.22
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, read_line.buffer_size
	movq	read_line.buffer, %rdi
	movslq	read_line.buffer_size, %rsi
	callq	xrealloc
	movq	%rax, read_line.buffer
.LBB10_18:                              # %if.end.26
	movslq	-20(%rbp), %rax
	movq	read_line.buffer, %rcx
	movb	$0, (%rcx,%rax)
	cmpl	$0, -20(%rbp)
	jle	.LBB10_21
# BB#19:                                # %land.lhs.true.31
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	read_line.buffer, %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB10_21
# BB#20:                                # %if.then.37
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	read_line.buffer, %rdx
	movb	$0, (%rdx,%rcx)
.LBB10_21:                              # %if.end.41
	movq	read_line.buffer, %rax
	movq	%rax, -8(%rbp)
.LBB10_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	read_line, .Lfunc_end10-read_line
	.cfi_endproc

	.align	16, 0x90
	.type	dump_roots,@function
dump_roots:                             # @dump_roots
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	cmpl	$0, f_append
	jne	.LBB11_6
# BB#1:                                 # %if.then
	movabsq	$.L.str.156, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.157, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	putstr
	movl	$34, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	cmpl	$0, f_structs
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jne	.LBB11_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.158, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB11_3:                               # %if.end
	cmpl	$0, f_regexps
	je	.LBB11_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.159, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB11_5:                               # %if.end.8
	movl	$34, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movabsq	$.L.str.160, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	fputs
	movabsq	$.L.str.160, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fputs
	movl	$93, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB11_6:                               # %if.end.13
	callq	mark_inherited_virtual
	movl	$0, -12(%rbp)
.LBB11_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	cmpl	$1001, -12(%rbp)        # imm = 0x3E9
	jge	.LBB11_16
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB11_7 Depth=1
	movslq	-12(%rbp), %rax
	movq	class_table(,%rax,8), %rax
	movq	%rax, -24(%rbp)
.LBB11_9:                               # %for.cond.14
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB11_14
# BB#10:                                # %for.body.16
                                        #   in Loop: Header=BB11_9 Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB11_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB11_9 Depth=2
	movabsq	$.L.str.161, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	dump_tree
	movl	$93, %edi
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB11_12:                              # %if.end.22
                                        #   in Loop: Header=BB11_9 Depth=2
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc
                                        #   in Loop: Header=BB11_9 Depth=2
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_9
.LBB11_14:                              # %for.end
                                        #   in Loop: Header=BB11_7 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc.23
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_7
.LBB11_16:                              # %for.end.24
	cmpl	$0, f_verbose
	je	.LBB11_18
# BB#17:                                # %if.then.26
	movl	$10, %edi
	callq	putchar
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB11_18:                              # %if.end.28
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dump_roots, .Lfunc_end11-dump_roots
	.cfi_endproc

	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
	movl	$1, %edi
	callq	exit
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xmalloc, .Lfunc_end12-xmalloc
	.cfi_endproc

	.align	16, 0x90
	.type	insert_keyword,@function
insert_keyword:                         # @insert_keyword
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
	subq	$48, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -28(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movl	$1001, %eax             # imm = 0x3E9
	movl	-28(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%edx, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, (%rdi)
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	%edx, 8(%rsi)
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	keyword_table(,%rsi,8), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	%edx, %edi
	movq	%rsi, keyword_table(,%rdi,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	insert_keyword, .Lfunc_end13-insert_keyword
	.cfi_endproc

	.align	16, 0x90
	.type	add_sym,@function
add_sym:                                # @add_sym
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %cond.false
	movq	current_namespace, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB14_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB14_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB14_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB14_4 Depth=1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_4
.LBB14_7:                               # %for.end
	movl	$1001, %eax             # imm = 0x3E9
	movl	-28(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	class_table(,%rsi,8), %rsi
	movq	%rsi, -24(%rbp)
.LBB14_8:                               # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_18
# BB#9:                                 # %for.body.4
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB14_10
	jmp	.LBB14_16
.LBB14_10:                              # %land.lhs.true
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB14_12
# BB#11:                                # %land.lhs.true.8
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB14_15
.LBB14_12:                              # %lor.lhs.false
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB14_16
# BB#13:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB14_16
# BB#14:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	addq	$120, %rax
	movq	-48(%rbp), %rcx
	addq	$120, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB14_15
	jmp	.LBB14_16
.LBB14_15:                              # %if.then
	jmp	.LBB14_18
.LBB14_16:                              # %if.end
                                        #   in Loop: Header=BB14_8 Depth=1
	jmp	.LBB14_17
.LBB14_17:                              # %for.inc.22
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_8
.LBB14_18:                              # %for.end.23
	cmpq	$0, -24(%rbp)
	jne	.LBB14_22
# BB#19:                                # %if.then.25
	cmpl	$0, f_very_verbose
	je	.LBB14_21
# BB#20:                                # %if.then.27
	movl	$9, %edi
	callq	putchar
	movq	-8(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	puts
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB14_21:                              # %if.end.30
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$120, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	xorl	%esi, %esi
	movl	$120, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, 112(%rsi)
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movq	class_table(,%rdx,8), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rdx, class_table(,%rsi,8)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB14_22:                              # %if.end.43
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	add_sym, .Lfunc_end14-add_sym
	.cfi_endproc

	.align	16, 0x90
	.type	streq,@function
streq:                                  # @streq
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	streq, .Lfunc_end15-streq
	.cfi_endproc

	.align	16, 0x90
	.type	open_file,@function
open_file:                              # @open_file
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	xstrdup
	movq	%rax, filename
	movq	search_path, %rax
	movq	%rax, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -24(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB16_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpq	$0, -16(%rbp)
	sete	%al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB16_3:                               # %land.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_4
	jmp	.LBB16_11
.LBB16_4:                               # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movslq	-28(%rbp), %rdi
	addq	%rdi, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	cmpl	open_file.buffer_size, %ecx
	jl	.LBB16_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	open_file.buffer_size, %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB16_8
.LBB16_7:                               # %cond.false
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	open_file.buffer_size, %eax
	shll	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB16_8:                               # %cond.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, open_file.buffer_size
	movq	open_file.buffer, %rdi
	movslq	open_file.buffer_size, %rsi
	callq	xrealloc
	movq	%rax, open_file.buffer
.LBB16_9:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movabsq	$.L.str.17, %rsi
	movq	open_file.buffer, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	stpcpy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	$47, (%rax)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	movq	open_file.buffer, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	fopen
	movq	%rax, -16(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_11:                              # %for.end
	cmpq	$0, -16(%rbp)
	jne	.LBB16_13
# BB#12:                                # %if.then.24
	movabsq	$.L.str.17, %rsi
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
.LBB16_13:                              # %if.end.26
	cmpq	$0, -16(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.29
	movabsq	$.L.str.107, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
.LBB16_15:                              # %if.end.30
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	open_file, .Lfunc_end16-open_file
	.cfi_endproc

	.align	16, 0x90
	.type	re_init_scanner,@function
re_init_scanner:                        # @re_init_scanner
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
	movq	inbuffer, %rax
	movq	%rax, in
	movl	$1, yyline
	cmpq	$0, yytext
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$256, -4(%rbp)          # imm = 0x100
	movslq	-4(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, yytext
	movq	yytext, %rax
	movslq	-4(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, yytext_end
.LBB17_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	re_init_scanner, .Lfunc_end17-re_init_scanner
	.cfi_endproc

	.align	16, 0x90
	.type	re_init_parser,@function
re_init_parser:                         # @re_init_parser
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
	movl	$-1, tk
	popq	%rbp
	retq
.Lfunc_end18:
	.size	re_init_parser, .Lfunc_end18-re_init_parser
	.cfi_endproc

	.align	16, 0x90
	.type	yyparse,@function
yyparse:                                # @yyparse
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
	jmp	.LBB19_1
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	globals
	cmpl	$0, %eax
	jne	.LBB19_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpl	$125, tk
	jne	.LBB19_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB19_5
.LBB19_4:                               # %if.else
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_5
.LBB19_5:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_1
.LBB19_6:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end19:
	.size	yyparse, .Lfunc_end19-yyparse
	.cfi_endproc

	.align	16, 0x90
	.type	globals,@function
globals:                                # @globals
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
	subq	$112, %rsp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, -20(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_39 Depth 2
	movq	in, %rax
	movq	%rax, -32(%rbp)
	cmpl	$-1, tk
	jne	.LBB20_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB20_4
.LBB20_3:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	tk, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB20_4:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB20_55
	jmp	.LBB20_62
.LBB20_62:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$125, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB20_56
	jmp	.LBB20_63
.LBB20_63:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$292, %eax              # imm = 0x124
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB20_35
	jmp	.LBB20_64
.LBB20_64:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$301, %eax              # imm = 0x12D
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB20_20
	jmp	.LBB20_65
.LBB20_65:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$321, %eax              # imm = 0x141
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB20_35
	jmp	.LBB20_66
.LBB20_66:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$323, %eax              # imm = 0x143
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB20_31
	jmp	.LBB20_67
.LBB20_67:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$328, %eax              # imm = 0x148
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB20_35
	jmp	.LBB20_68
.LBB20_68:                              # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$339, %eax              # imm = 0x153
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB20_57
	jmp	.LBB20_5
.LBB20_5:                               # %sw.bb
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB20_19
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	yytext, %rdi
	callq	xstrdup
	movq	%rax, -40(%rbp)
	callq	yylex
	movl	%eax, tk
	cmpl	$61, tk
	jne	.LBB20_12
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	match_qualified_namespace_alias
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB20_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	register_namespace_alias
.LBB20_9:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$59, %edi
	callq	skip_to
	cmpl	$59, %eax
	jne	.LBB20_11
# BB#10:                                # %if.then.11
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
.LBB20_11:                              # %if.end.13
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_18
.LBB20_12:                              # %if.else
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$123, tk
	jne	.LBB20_17
# BB#13:                                # %if.then.15
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movq	-40(%rbp), %rdi
	callq	enter_namespace
	xorl	%edi, %edi
	callq	globals
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	leave_namespace
	cmpl	$125, tk
	jne	.LBB20_15
# BB#14:                                # %if.then.19
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.21
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.22
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_17
.LBB20_17:                              # %if.end.23
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.24
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	free
.LBB20_19:                              # %if.end.25
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_58
.LBB20_20:                              # %sw.bb.26
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$256, tk                # imm = 0x100
	jne	.LBB20_30
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	string_start, %rax
	movsbl	(%rax), %ecx
	cmpl	$67, %ecx
	jne	.LBB20_30
# BB#22:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	string_start, %rax
	movsbl	1(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB20_30
# BB#23:                                # %if.then.35
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$123, tk
	jne	.LBB20_28
# BB#24:                                # %if.then.39
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	$256, %edi              # imm = 0x100
	movl	%eax, tk
	callq	globals
	cmpl	$125, tk
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB20_26
# BB#25:                                # %if.then.44
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB20_27
.LBB20_26:                              # %if.else.46
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_27
.LBB20_27:                              # %if.end.47
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_29
.LBB20_28:                              # %if.else.48
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-20(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	callq	set_flag
.LBB20_29:                              # %if.end.49
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_30
.LBB20_30:                              # %if.end.50
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_58
.LBB20_31:                              # %sw.bb.51
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$60, tk
	jne	.LBB20_33
# BB#32:                                # %if.then.55
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	skip_matching
	jmp	.LBB20_34
.LBB20_33:                              # %if.else.56
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_34
.LBB20_34:                              # %if.end.57
                                        #   in Loop: Header=BB20_1 Depth=1
	leaq	-20(%rbp), %rdi
	movl	$32, %esi
	callq	set_flag
	jmp	.LBB20_58
.LBB20_35:                              # %sw.bb.58
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB20_37
# BB#36:                                # %cond.true.61
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB20_38
.LBB20_37:                              # %cond.false.63
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	tk, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB20_38:                              # %cond.end.64
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	callq	yylex
	movl	%eax, tk
	movl	$1, -12(%rbp)
.LBB20_39:                              # %while.cond
                                        #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$0, tk
	movb	%al, -97(%rbp)          # 1-byte Spill
	je	.LBB20_43
# BB#40:                                # %lor.lhs.false
                                        #   in Loop: Header=BB20_39 Depth=2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -97(%rbp)          # 1-byte Spill
	je	.LBB20_43
# BB#41:                                # %lor.lhs.false.71
                                        #   in Loop: Header=BB20_39 Depth=2
	movb	$1, %al
	cmpl	$58, tk
	movb	%al, -97(%rbp)          # 1-byte Spill
	je	.LBB20_43
# BB#42:                                # %lor.rhs
                                        #   in Loop: Header=BB20_39 Depth=2
	cmpl	$123, tk
	sete	%al
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB20_43:                              # %lor.end
                                        #   in Loop: Header=BB20_39 Depth=2
	movb	-97(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB20_44
	jmp	.LBB20_47
.LBB20_44:                              # %while.body
                                        #   in Loop: Header=BB20_39 Depth=2
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB20_46
# BB#45:                                # %if.then.78
                                        #   in Loop: Header=BB20_39 Depth=2
	movl	$0, -12(%rbp)
.LBB20_46:                              # %if.end.79
                                        #   in Loop: Header=BB20_39 Depth=2
	callq	yylex
	movl	%eax, tk
	jmp	.LBB20_39
.LBB20_47:                              # %while.end
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$58, tk
	je	.LBB20_49
# BB#48:                                # %lor.lhs.false.83
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$123, tk
	jne	.LBB20_51
.LBB20_49:                              # %land.lhs.true.86
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB20_51
# BB#50:                                # %if.then.88
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%ecx, %ecx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	class_definition
	jmp	.LBB20_54
.LBB20_51:                              # %if.else.89
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$59, %edi
	callq	skip_to
	cmpl	$59, %eax
	jne	.LBB20_53
# BB#52:                                # %if.then.93
                                        #   in Loop: Header=BB20_1 Depth=1
	callq	yylex
	movl	%eax, tk
.LBB20_53:                              # %if.end.95
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_54
.LBB20_54:                              # %if.end.96
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_58
.LBB20_55:                              # %sw.bb.97
	movl	$1, -4(%rbp)
	jmp	.LBB20_61
.LBB20_56:                              # %sw.bb.98
	movl	$0, -4(%rbp)
	jmp	.LBB20_61
.LBB20_57:                              # %sw.default
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-20(%rbp), %edi
	callq	declaration
	movl	-8(%rbp), %edi
	movl	%edi, -20(%rbp)
.LBB20_58:                              # %sw.epilog
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	in, %rax
	jne	.LBB20_60
# BB#59:                                # %if.then.101
                                        #   in Loop: Header=BB20_1 Depth=1
	movabsq	$.L.str.108, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
.LBB20_60:                              # %if.end.102
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_1
.LBB20_61:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	globals, .Lfunc_end20-globals
	.cfi_endproc

	.align	16, 0x90
	.type	yylex,@function
yylex:                                  # @yylex
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
	subq	$240, %rsp
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_2 Depth 2
                                        #     Child Loop BB21_85 Depth 2
                                        #     Child Loop BB21_73 Depth 2
	jmp	.LBB21_2
.LBB21_2:                               # %while.cond
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%edx, %eax
	cmpb	$0, is_white(,%rax)
	je	.LBB21_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB21_2 Depth=2
	jmp	.LBB21_2
.LBB21_4:                               # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$126, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB21_218
# BB#221:                               # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_5:                               # %sw.bb
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	yyline, %eax
	addl	$1, %eax
	movl	%eax, yyline
	jmp	.LBB21_219
.LBB21_6:                               # %sw.bb.2
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_219
.LBB21_7:                               # %sw.bb.3
	movl	$0, -4(%rbp)
	jmp	.LBB21_220
.LBB21_8:                               # %sw.bb.4
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB21_219
.LBB21_9:                               # %sw.bb.7
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -9(%rbp)
	movq	in, %rdx
	movq	%rdx, string_start
.LBB21_10:                              # %while.cond.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_23 Depth 2
                                        #     Child Loop BB21_40 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	in, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, in
	movsbl	(%rdx), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB21_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-8(%rbp), %eax
	movsbl	-9(%rbp), %ecx
	cmpl	%ecx, %eax
	setne	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB21_12:                              # %land.end
                                        #   in Loop: Header=BB21_10 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_13
	jmp	.LBB21_57
.LBB21_13:                              # %while.body.15
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB21_51
	jmp	.LBB21_230
.LBB21_230:                             # %while.body.15
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jne	.LBB21_55
	jmp	.LBB21_14
.LBB21_14:                              # %sw.bb.16
                                        #   in Loop: Header=BB21_10 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$0, %edx
	jne	.LBB21_19
# BB#15:                                # %if.then
	movsbl	-9(%rbp), %eax
	cmpl	$39, %eax
	jne	.LBB21_17
# BB#16:                                # %if.then.23
	movabsq	$.L.str.150, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
	jmp	.LBB21_18
.LBB21_17:                              # %if.else
	movabsq	$.L.str.151, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
.LBB21_18:                              # %if.end
	jmp	.LBB21_58
.LBB21_19:                              # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB21_20
	jmp	.LBB21_231
.LBB21_231:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB21_39
	jmp	.LBB21_232
.LBB21_232:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-97, %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB21_21
	jmp	.LBB21_233
.LBB21_233:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB21_21
	jmp	.LBB21_234
.LBB21_234:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB21_21
	jmp	.LBB21_235
.LBB21_235:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB21_21
	jmp	.LBB21_236
.LBB21_236:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB21_21
	jmp	.LBB21_237
.LBB21_237:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB21_21
	jmp	.LBB21_238
.LBB21_238:                             # %if.else.24
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB21_22
	jmp	.LBB21_48
.LBB21_20:                              # %sw.bb.25
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	yyline, %eax
	addl	$1, %eax
	movl	%eax, yyline
.LBB21_21:                              # %sw.bb.27
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_49
.LBB21_22:                              # %sw.bb.28
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	$0, -28(%rbp)
.LBB21_23:                              # %for.cond.29
                                        #   Parent Loop BB21_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -28(%rbp)
	jge	.LBB21_38
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB21_23 Depth=2
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$48, -8(%rbp)
	jl	.LBB21_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_23 Depth=2
	cmpl	$55, -8(%rbp)
	jg	.LBB21_27
# BB#26:                                # %if.then.38
                                        #   in Loop: Header=BB21_23 Depth=2
	jmp	.LBB21_36
.LBB21_27:                              # %if.else.39
                                        #   in Loop: Header=BB21_23 Depth=2
	cmpl	$97, -8(%rbp)
	jl	.LBB21_30
# BB#28:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB21_23 Depth=2
	cmpl	$102, -8(%rbp)
	jg	.LBB21_30
# BB#29:                                # %if.then.45
                                        #   in Loop: Header=BB21_23 Depth=2
	jmp	.LBB21_35
.LBB21_30:                              # %if.else.46
                                        #   in Loop: Header=BB21_23 Depth=2
	cmpl	$65, -8(%rbp)
	jl	.LBB21_33
# BB#31:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB21_23 Depth=2
	cmpl	$70, -8(%rbp)
	jg	.LBB21_33
# BB#32:                                # %if.then.52
                                        #   in Loop: Header=BB21_23 Depth=2
	jmp	.LBB21_34
.LBB21_33:                              # %if.else.53
                                        #   in Loop: Header=BB21_10 Depth=1
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	jmp	.LBB21_38
.LBB21_34:                              # %if.end.55
                                        #   in Loop: Header=BB21_23 Depth=2
	jmp	.LBB21_35
.LBB21_35:                              # %if.end.56
                                        #   in Loop: Header=BB21_23 Depth=2
	jmp	.LBB21_36
.LBB21_36:                              # %if.end.57
                                        #   in Loop: Header=BB21_23 Depth=2
	jmp	.LBB21_37
.LBB21_37:                              # %for.inc
                                        #   in Loop: Header=BB21_23 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_23
.LBB21_38:                              # %for.end
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_49
.LBB21_39:                              # %sw.bb.59
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	$0, -32(%rbp)
.LBB21_40:                              # %for.cond.61
                                        #   Parent Loop BB21_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -32(%rbp)
	jge	.LBB21_47
# BB#41:                                # %for.body.64
                                        #   in Loop: Header=BB21_40 Depth=2
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$48, -8(%rbp)
	jl	.LBB21_44
# BB#42:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB21_40 Depth=2
	cmpl	$55, -8(%rbp)
	jg	.LBB21_44
# BB#43:                                # %if.then.72
                                        #   in Loop: Header=BB21_40 Depth=2
	jmp	.LBB21_45
.LBB21_44:                              # %if.else.73
                                        #   in Loop: Header=BB21_10 Depth=1
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	jmp	.LBB21_47
.LBB21_45:                              # %if.end.75
                                        #   in Loop: Header=BB21_40 Depth=2
	jmp	.LBB21_46
.LBB21_46:                              # %for.inc.76
                                        #   in Loop: Header=BB21_40 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB21_40
.LBB21_47:                              # %for.end.78
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_49
.LBB21_48:                              # %sw.default
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_49
.LBB21_49:                              # %sw.epilog
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_50
.LBB21_50:                              # %if.end.79
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_56
.LBB21_51:                              # %sw.bb.80
                                        #   in Loop: Header=BB21_10 Depth=1
	movsbl	-9(%rbp), %eax
	cmpl	$39, %eax
	jne	.LBB21_53
# BB#52:                                # %if.then.84
                                        #   in Loop: Header=BB21_10 Depth=1
	movabsq	$.L.str.152, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
	jmp	.LBB21_54
.LBB21_53:                              # %if.else.85
                                        #   in Loop: Header=BB21_10 Depth=1
	movabsq	$.L.str.153, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
.LBB21_54:                              # %if.end.86
                                        #   in Loop: Header=BB21_10 Depth=1
	movl	yyline, %eax
	addl	$1, %eax
	movl	%eax, yyline
	jmp	.LBB21_56
.LBB21_55:                              # %sw.default.88
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_56
.LBB21_56:                              # %sw.epilog.89
                                        #   in Loop: Header=BB21_10 Depth=1
	jmp	.LBB21_10
.LBB21_57:                              # %while.end.90
	jmp	.LBB21_58
.LBB21_58:                              # %end_string
	movl	$256, %eax              # imm = 0x100
	movl	$257, %ecx              # imm = 0x101
	movsbl	-9(%rbp), %edx
	cmpl	$39, %edx
	cmovel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_220
.LBB21_59:                              # %sw.bb.94
	movq	yytext, %rax
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%dl, (%rax)
.LBB21_60:                              # %while.cond.97
                                        # =>This Inner Loop Header: Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movzbl	%dl, %esi
	movl	%esi, %eax
	cmpb	$0, is_ident(,%rax)
	je	.LBB21_64
# BB#61:                                # %while.body.102
                                        #   in Loop: Header=BB21_60 Depth=1
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movsbl	(%rcx), %esi
	xorl	%esi, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	yytext_end, %rdx
	addq	$-1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB21_63
# BB#62:                                # %if.then.107
                                        #   in Loop: Header=BB21_60 Depth=1
	movq	yytext_end, %rax
	movq	yytext, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	yytext, %rdi
	movl	-52(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rsi
	callq	xrealloc
	movq	%rax, yytext
	movq	yytext, %rax
	movl	-52(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, yytext_end
	movq	yytext, %rax
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB21_63:                              # %if.end.115
                                        #   in Loop: Header=BB21_60 Depth=1
	jmp	.LBB21_60
.LBB21_64:                              # %while.end.116
	movl	$1001, %eax             # imm = 0x3E9
	movq	in, %rcx
	addq	$-1, %rcx
	movq	%rcx, in
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx)
	movl	-36(%rbp), %edx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-132(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	keyword_table(,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
.LBB21_65:                              # %for.cond.120
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB21_70
# BB#66:                                # %for.body.122
                                        #   in Loop: Header=BB21_65 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	yytext, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB21_67
	jmp	.LBB21_68
.LBB21_67:                              # %if.then.124
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB21_220
.LBB21_68:                              # %if.end.125
                                        #   in Loop: Header=BB21_65 Depth=1
	jmp	.LBB21_69
.LBB21_69:                              # %for.inc.126
                                        #   in Loop: Header=BB21_65 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB21_65
.LBB21_70:                              # %for.end.127
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB21_220
.LBB21_71:                              # %sw.bb.128
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	in(%rip), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, in(%rip)
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	movl	%edx, %esi
	subl	$42, %esi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%esi, -140(%rbp)        # 4-byte Spill
	je	.LBB21_72
	jmp	.LBB21_226
.LBB21_226:                             # %sw.bb.128
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$47, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB21_84
	jmp	.LBB21_227
.LBB21_227:                             # %sw.bb.128
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB21_83
	jmp	.LBB21_92
.LBB21_72:                              # %sw.bb.131
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_73
.LBB21_73:                              # %while.cond.132
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$0, %edx
	je	.LBB21_81
# BB#74:                                # %while.body.136
                                        #   in Loop: Header=BB21_73 Depth=2
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	je	.LBB21_79
	jmp	.LBB21_228
.LBB21_228:                             # %while.body.136
                                        #   in Loop: Header=BB21_73 Depth=2
	movl	-152(%rbp), %eax        # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB21_75
	jmp	.LBB21_229
.LBB21_229:                             # %while.body.136
                                        #   in Loop: Header=BB21_73 Depth=2
	movl	-152(%rbp), %eax        # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB21_78
	jmp	.LBB21_80
.LBB21_75:                              # %sw.bb.137
                                        #   in Loop: Header=BB21_73 Depth=2
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$47, %edx
	jne	.LBB21_77
# BB#76:                                # %if.then.142
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_82
.LBB21_77:                              # %if.end.143
                                        #   in Loop: Header=BB21_73 Depth=2
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	jmp	.LBB21_80
.LBB21_78:                              # %sw.bb.145
                                        #   in Loop: Header=BB21_73 Depth=2
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB21_80
.LBB21_79:                              # %sw.bb.148
                                        #   in Loop: Header=BB21_73 Depth=2
	movl	yyline, %eax
	addl	$1, %eax
	movl	%eax, yyline
.LBB21_80:                              # %sw.epilog.150
                                        #   in Loop: Header=BB21_73 Depth=2
	jmp	.LBB21_73
.LBB21_81:                              # %while.end.151
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_82
.LBB21_82:                              # %comment_end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_93
.LBB21_83:                              # %sw.bb.152
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB21_220
.LBB21_84:                              # %sw.bb.153
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_85
.LBB21_85:                              # %while.cond.154
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	in, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, in
	movsbl	(%rdx), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, %eax
	movb	%cl, -165(%rbp)         # 1-byte Spill
	je	.LBB21_87
# BB#86:                                # %land.rhs.158
                                        #   in Loop: Header=BB21_85 Depth=2
	cmpl	$10, -8(%rbp)
	setne	%al
	movb	%al, -165(%rbp)         # 1-byte Spill
.LBB21_87:                              # %land.end.161
                                        #   in Loop: Header=BB21_85 Depth=2
	movb	-165(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_88
	jmp	.LBB21_89
.LBB21_88:                              # %while.body.162
                                        #   in Loop: Header=BB21_85 Depth=2
	jmp	.LBB21_85
.LBB21_89:                              # %while.end.163
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$0, -8(%rbp)
	jne	.LBB21_91
# BB#90:                                # %if.then.166
	movl	$0, -4(%rbp)
	jmp	.LBB21_220
.LBB21_91:                              # %if.end.167
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	yyline, %eax
	addl	$1, %eax
	movl	%eax, yyline
	jmp	.LBB21_93
.LBB21_92:                              # %sw.default.169
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$47, -4(%rbp)
	jmp	.LBB21_220
.LBB21_93:                              # %sw.epilog.171
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_219
.LBB21_94:                              # %sw.bb.172
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$43, %edx
	jne	.LBB21_96
# BB#95:                                # %if.then.177
	movl	$266, -4(%rbp)          # imm = 0x10A
	jmp	.LBB21_220
.LBB21_96:                              # %if.else.178
	cmpl	$61, -8(%rbp)
	jne	.LBB21_98
# BB#97:                                # %if.then.181
	movl	$267, -4(%rbp)          # imm = 0x10B
	jmp	.LBB21_220
.LBB21_98:                              # %if.end.182
	jmp	.LBB21_99
.LBB21_99:                              # %if.end.183
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$43, -4(%rbp)
	jmp	.LBB21_220
.LBB21_100:                             # %sw.bb.185
	movq	in(%rip), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, in(%rip)
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	movl	%edx, %esi
	subl	$45, %esi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%esi, -176(%rbp)        # 4-byte Spill
	je	.LBB21_101
	jmp	.LBB21_224
.LBB21_224:                             # %sw.bb.185
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB21_105
	jmp	.LBB21_225
.LBB21_225:                             # %sw.bb.185
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB21_102
	jmp	.LBB21_106
.LBB21_101:                             # %sw.bb.188
	movl	$268, -4(%rbp)          # imm = 0x10C
	jmp	.LBB21_220
.LBB21_102:                             # %sw.bb.189
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$42, %edx
	jne	.LBB21_104
# BB#103:                               # %if.then.194
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB21_220
.LBB21_104:                             # %if.end.195
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$269, -4(%rbp)          # imm = 0x10D
	jmp	.LBB21_220
.LBB21_105:                             # %sw.bb.197
	movl	$270, -4(%rbp)          # imm = 0x10E
	jmp	.LBB21_220
.LBB21_106:                             # %sw.epilog.198
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$45, -4(%rbp)
	jmp	.LBB21_220
.LBB21_107:                             # %sw.bb.200
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_109
# BB#108:                               # %if.then.205
	movl	$271, -4(%rbp)          # imm = 0x10F
	jmp	.LBB21_220
.LBB21_109:                             # %if.end.206
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$42, -4(%rbp)
	jmp	.LBB21_220
.LBB21_110:                             # %sw.bb.208
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_112
# BB#111:                               # %if.then.213
	movl	$272, -4(%rbp)          # imm = 0x110
	jmp	.LBB21_220
.LBB21_112:                             # %if.end.214
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$37, -4(%rbp)
	jmp	.LBB21_220
.LBB21_113:                             # %sw.bb.216
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$124, %edx
	jne	.LBB21_115
# BB#114:                               # %if.then.221
	movl	$273, -4(%rbp)          # imm = 0x111
	jmp	.LBB21_220
.LBB21_115:                             # %if.else.222
	cmpl	$61, -8(%rbp)
	jne	.LBB21_117
# BB#116:                               # %if.then.225
	movl	$274, -4(%rbp)          # imm = 0x112
	jmp	.LBB21_220
.LBB21_117:                             # %if.end.226
	jmp	.LBB21_118
.LBB21_118:                             # %if.end.227
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$124, -4(%rbp)
	jmp	.LBB21_220
.LBB21_119:                             # %sw.bb.229
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$38, %edx
	jne	.LBB21_121
# BB#120:                               # %if.then.234
	movl	$275, -4(%rbp)          # imm = 0x113
	jmp	.LBB21_220
.LBB21_121:                             # %if.else.235
	cmpl	$61, -8(%rbp)
	jne	.LBB21_123
# BB#122:                               # %if.then.238
	movl	$276, -4(%rbp)          # imm = 0x114
	jmp	.LBB21_220
.LBB21_123:                             # %if.end.239
	jmp	.LBB21_124
.LBB21_124:                             # %if.end.240
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$38, -4(%rbp)
	jmp	.LBB21_220
.LBB21_125:                             # %sw.bb.242
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_127
# BB#126:                               # %if.then.247
	movl	$277, -4(%rbp)          # imm = 0x115
	jmp	.LBB21_220
.LBB21_127:                             # %if.end.248
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$94, -4(%rbp)
	jmp	.LBB21_220
.LBB21_128:                             # %sw.bb.250
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$42, %edx
	jne	.LBB21_130
# BB#129:                               # %if.then.255
	movl	$278, -4(%rbp)          # imm = 0x116
	jmp	.LBB21_220
.LBB21_130:                             # %if.else.256
	cmpl	$46, -8(%rbp)
	jne	.LBB21_134
# BB#131:                               # %if.then.259
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$46, %edx
	je	.LBB21_133
# BB#132:                               # %if.then.264
	movabsq	$.L.str.154, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	yyerror
.LBB21_133:                             # %if.end.265
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$260, -4(%rbp)          # imm = 0x104
	jmp	.LBB21_220
.LBB21_134:                             # %if.else.267
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_digit(,%rdx)
	jne	.LBB21_136
# BB#135:                               # %if.then.272
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$46, -4(%rbp)
	jmp	.LBB21_220
.LBB21_136:                             # %if.end.274
	jmp	.LBB21_137
.LBB21_137:                             # %if.end.275
	jmp	.LBB21_138
.LBB21_138:                             # %if.end.276
	jmp	.LBB21_202
.LBB21_139:                             # %sw.bb.277
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$58, %edx
	jne	.LBB21_141
# BB#140:                               # %if.then.282
	movl	$279, -4(%rbp)          # imm = 0x117
	jmp	.LBB21_220
.LBB21_141:                             # %if.end.283
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$58, -4(%rbp)
	jmp	.LBB21_220
.LBB21_142:                             # %sw.bb.285
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_144
# BB#143:                               # %if.then.290
	movl	$280, -4(%rbp)          # imm = 0x118
	jmp	.LBB21_220
.LBB21_144:                             # %if.end.291
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$61, -4(%rbp)
	jmp	.LBB21_220
.LBB21_145:                             # %sw.bb.293
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_147
# BB#146:                               # %if.then.298
	movl	$281, -4(%rbp)          # imm = 0x119
	jmp	.LBB21_220
.LBB21_147:                             # %if.end.299
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$33, -4(%rbp)
	jmp	.LBB21_220
.LBB21_148:                             # %sw.bb.301
	movq	in(%rip), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, in(%rip)
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	movl	%edx, %esi
	subl	$60, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%esi, -192(%rbp)        # 4-byte Spill
	je	.LBB21_150
	jmp	.LBB21_223
.LBB21_223:                             # %sw.bb.301
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jne	.LBB21_153
	jmp	.LBB21_149
.LBB21_149:                             # %sw.bb.304
	movl	$282, -4(%rbp)          # imm = 0x11A
	jmp	.LBB21_220
.LBB21_150:                             # %sw.bb.305
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_152
# BB#151:                               # %if.then.310
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB21_220
.LBB21_152:                             # %if.end.311
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$283, -4(%rbp)          # imm = 0x11B
	jmp	.LBB21_220
.LBB21_153:                             # %sw.epilog.313
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$60, -4(%rbp)
	jmp	.LBB21_220
.LBB21_154:                             # %sw.bb.315
	movq	in(%rip), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, in(%rip)
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	movl	%edx, %esi
	subl	$61, %esi
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%esi, -204(%rbp)        # 4-byte Spill
	je	.LBB21_155
	jmp	.LBB21_222
.LBB21_222:                             # %sw.bb.315
	movl	-200(%rbp), %eax        # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB21_156
	jmp	.LBB21_159
.LBB21_155:                             # %sw.bb.318
	movl	$284, -4(%rbp)          # imm = 0x11C
	jmp	.LBB21_220
.LBB21_156:                             # %sw.bb.319
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$61, %edx
	jne	.LBB21_158
# BB#157:                               # %if.then.324
	movl	$262, -4(%rbp)          # imm = 0x106
	jmp	.LBB21_220
.LBB21_158:                             # %if.end.325
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$285, -4(%rbp)          # imm = 0x11D
	jmp	.LBB21_220
.LBB21_159:                             # %sw.epilog.327
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$62, -4(%rbp)
	jmp	.LBB21_220
.LBB21_160:                             # %sw.bb.329
                                        #   in Loop: Header=BB21_1 Depth=1
	callq	process_pp_line
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB21_162
# BB#161:                               # %if.then.333
	movl	$0, -4(%rbp)
	jmp	.LBB21_220
.LBB21_162:                             # %if.end.334
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_219
.LBB21_163:                             # %sw.bb.335
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_220
.LBB21_164:                             # %sw.bb.336
	movl	$0, yyival
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$120, %edx
	je	.LBB21_166
# BB#165:                               # %lor.lhs.false
	cmpl	$88, -8(%rbp)
	jne	.LBB21_181
.LBB21_166:                             # %if.then.343
	jmp	.LBB21_167
.LBB21_167:                             # %while.cond.344
                                        # =>This Inner Loop Header: Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$0, %edx
	je	.LBB21_180
# BB#168:                               # %while.body.348
                                        #   in Loop: Header=BB21_167 Depth=1
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_digit(,%rdx)
	je	.LBB21_170
# BB#169:                               # %if.then.353
                                        #   in Loop: Header=BB21_167 Depth=1
	movl	yyival, %eax
	shll	$4, %eax
	addl	-8(%rbp), %eax
	subl	$48, %eax
	movl	%eax, yyival
	jmp	.LBB21_179
.LBB21_170:                             # %if.else.355
                                        #   in Loop: Header=BB21_167 Depth=1
	cmpl	$97, -8(%rbp)
	jl	.LBB21_173
# BB#171:                               # %land.lhs.true.358
                                        #   in Loop: Header=BB21_167 Depth=1
	cmpl	$102, -8(%rbp)
	jg	.LBB21_173
# BB#172:                               # %if.then.361
                                        #   in Loop: Header=BB21_167 Depth=1
	movl	yyival, %eax
	shll	$4, %eax
	addl	-8(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, yyival
	jmp	.LBB21_178
.LBB21_173:                             # %if.else.366
                                        #   in Loop: Header=BB21_167 Depth=1
	cmpl	$65, -8(%rbp)
	jl	.LBB21_176
# BB#174:                               # %land.lhs.true.369
                                        #   in Loop: Header=BB21_167 Depth=1
	cmpl	$70, -8(%rbp)
	jg	.LBB21_176
# BB#175:                               # %if.then.372
                                        #   in Loop: Header=BB21_167 Depth=1
	movl	yyival, %eax
	shll	$4, %eax
	addl	-8(%rbp), %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, yyival
	jmp	.LBB21_177
.LBB21_176:                             # %if.else.377
	jmp	.LBB21_180
.LBB21_177:                             # %if.end.378
                                        #   in Loop: Header=BB21_167 Depth=1
	jmp	.LBB21_178
.LBB21_178:                             # %if.end.379
                                        #   in Loop: Header=BB21_167 Depth=1
	jmp	.LBB21_179
.LBB21_179:                             # %if.end.380
                                        #   in Loop: Header=BB21_167 Depth=1
	jmp	.LBB21_167
.LBB21_180:                             # %while.end.381
	jmp	.LBB21_190
.LBB21_181:                             # %if.else.382
	cmpl	$46, -8(%rbp)
	jne	.LBB21_183
# BB#182:                               # %if.then.385
	jmp	.LBB21_202
.LBB21_183:                             # %if.end.386
	jmp	.LBB21_184
.LBB21_184:                             # %if.end.387
	jmp	.LBB21_185
.LBB21_185:                             # %while.cond.388
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$48, -8(%rbp)
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jl	.LBB21_187
# BB#186:                               # %land.rhs.391
                                        #   in Loop: Header=BB21_185 Depth=1
	cmpl	$55, -8(%rbp)
	setle	%al
	movb	%al, -209(%rbp)         # 1-byte Spill
.LBB21_187:                             # %land.end.394
                                        #   in Loop: Header=BB21_185 Depth=1
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_188
	jmp	.LBB21_189
.LBB21_188:                             # %while.body.395
                                        #   in Loop: Header=BB21_185 Depth=1
	movl	yyival, %eax
	shll	$3, %eax
	addl	-8(%rbp), %eax
	subl	$48, %eax
	movl	%eax, yyival
	movq	in, %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, in
	movsbl	(%rcx), %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB21_185
.LBB21_189:                             # %while.end.401
	jmp	.LBB21_190
.LBB21_190:                             # %int_suffixes
	jmp	.LBB21_191
.LBB21_191:                             # %while.cond.402
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	je	.LBB21_193
# BB#192:                               # %while.body.408
                                        #   in Loop: Header=BB21_191 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB21_191
.LBB21_193:                             # %while.end.411
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$258, -4(%rbp)          # imm = 0x102
	jmp	.LBB21_220
.LBB21_194:                             # %sw.bb.413
	movl	-8(%rbp), %eax
	subl	$48, %eax
	movl	%eax, yyival
.LBB21_195:                             # %while.cond.415
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	in, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, in
	movsbl	(%rdx), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, %eax
	movb	%cl, -225(%rbp)         # 1-byte Spill
	je	.LBB21_197
# BB#196:                               # %land.rhs.419
                                        #   in Loop: Header=BB21_195 Depth=1
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movsbl	is_digit(,%rdx), %eax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -225(%rbp)         # 1-byte Spill
.LBB21_197:                             # %land.end.425
                                        #   in Loop: Header=BB21_195 Depth=1
	movb	-225(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_198
	jmp	.LBB21_199
.LBB21_198:                             # %while.body.426
                                        #   in Loop: Header=BB21_195 Depth=1
	imull	$10, yyival, %eax
	addl	-8(%rbp), %eax
	subl	$48, %eax
	movl	%eax, yyival
	jmp	.LBB21_195
.LBB21_199:                             # %while.end.430
	cmpl	$46, -8(%rbp)
	je	.LBB21_201
# BB#200:                               # %if.then.433
	jmp	.LBB21_190
.LBB21_201:                             # %if.end.434
	jmp	.LBB21_202
.LBB21_202:                             # %mantissa
	jmp	.LBB21_203
.LBB21_203:                             # %while.cond.435
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_digit(,%rdx)
	je	.LBB21_205
# BB#204:                               # %while.body.440
                                        #   in Loop: Header=BB21_203 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB21_203
.LBB21_205:                             # %while.end.443
	cmpl	$69, -8(%rbp)
	je	.LBB21_207
# BB#206:                               # %lor.lhs.false.446
	cmpl	$101, -8(%rbp)
	jne	.LBB21_214
.LBB21_207:                             # %if.then.449
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$45, %edx
	je	.LBB21_209
# BB#208:                               # %lor.lhs.false.454
	cmpl	$43, -8(%rbp)
	jne	.LBB21_210
.LBB21_209:                             # %if.then.457
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
.LBB21_210:                             # %if.end.460
	jmp	.LBB21_211
.LBB21_211:                             # %while.cond.461
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_digit(,%rdx)
	je	.LBB21_213
# BB#212:                               # %while.body.466
                                        #   in Loop: Header=BB21_211 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB21_211
.LBB21_213:                             # %while.end.469
	jmp	.LBB21_214
.LBB21_214:                             # %if.end.470
	jmp	.LBB21_215
.LBB21_215:                             # %while.cond.471
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	je	.LBB21_217
# BB#216:                               # %while.body.478
                                        #   in Loop: Header=BB21_215 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -8(%rbp)
	jmp	.LBB21_215
.LBB21_217:                             # %while.end.481
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, in
	movl	$259, -4(%rbp)          # imm = 0x103
	jmp	.LBB21_220
.LBB21_218:                             # %sw.default.483
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_219
.LBB21_219:                             # %sw.epilog.484
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_1
.LBB21_220:                             # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	yylex, .Lfunc_end21-yylex
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_7
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_5
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_6
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_218
	.quad	.LBB21_145
	.quad	.LBB21_9
	.quad	.LBB21_160
	.quad	.LBB21_218
	.quad	.LBB21_110
	.quad	.LBB21_119
	.quad	.LBB21_9
	.quad	.LBB21_163
	.quad	.LBB21_163
	.quad	.LBB21_107
	.quad	.LBB21_94
	.quad	.LBB21_163
	.quad	.LBB21_100
	.quad	.LBB21_128
	.quad	.LBB21_71
	.quad	.LBB21_164
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_194
	.quad	.LBB21_139
	.quad	.LBB21_163
	.quad	.LBB21_148
	.quad	.LBB21_142
	.quad	.LBB21_154
	.quad	.LBB21_163
	.quad	.LBB21_218
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_163
	.quad	.LBB21_8
	.quad	.LBB21_163
	.quad	.LBB21_125
	.quad	.LBB21_59
	.quad	.LBB21_218
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_59
	.quad	.LBB21_163
	.quad	.LBB21_113
	.quad	.LBB21_163
	.quad	.LBB21_163

	.text
	.align	16, 0x90
	.type	match_qualified_namespace_alias,@function
match_qualified_namespace_alias:        # @match_qualified_namespace_alias
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
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$-1, tk
	jne	.LBB22_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB22_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB22_4
.LBB22_3:                               # %cond.false
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	tk, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB22_4:                               # %cond.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	subl	$264, %ecx              # imm = 0x108
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB22_5
	jmp	.LBB22_15
.LBB22_15:                              # %cond.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$279, %eax              # imm = 0x117
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB22_12
	jmp	.LBB22_13
.LBB22_5:                               # %sw.bb
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	yytext, %rdi
	cmpq	$0, -16(%rbp)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB22_7
# BB#6:                                 # %cond.true.3
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB22_8
.LBB22_7:                               # %cond.false.4
                                        #   in Loop: Header=BB22_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB22_8
.LBB22_8:                               # %cond.end.5
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	find_namespace
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	%rax, -16(%rbp)
	jmp	.LBB22_11
.LBB22_10:                              # %if.else
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -8(%rbp)
.LBB22_11:                              # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_14
.LBB22_12:                              # %sw.bb.11
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_14
.LBB22_13:                              # %sw.default
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB22_14:                              # %sw.epilog
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_1
.Lfunc_end22:
	.size	match_qualified_namespace_alias, .Lfunc_end22-match_qualified_namespace_alias
	.cfi_endproc

	.align	16, 0x90
	.type	register_namespace_alias,@function
register_namespace_alias:               # @register_namespace_alias
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	movl	$1001, %eax             # imm = 0x3E9
	movl	-20(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	namespace_alias_table(,%rsi,8), %rsi
	movq	%rsi, -40(%rbp)
.LBB23_5:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB23_11
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB23_7
	jmp	.LBB23_9
.LBB23_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	current_namespace, %rax
	jne	.LBB23_9
# BB#8:                                 # %if.then
	jmp	.LBB23_12
.LBB23_9:                               # %if.end
                                        #   in Loop: Header=BB23_5 Depth=1
	jmp	.LBB23_10
.LBB23_10:                              # %for.inc.6
                                        #   in Loop: Header=BB23_5 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB23_5
.LBB23_11:                              # %for.end.7
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$24, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	movq	namespace_alias_table(,%rsi,8), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	current_namespace, %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movl	%ecx, %edi
	movq	%rsi, namespace_alias_table(,%rdi,8)
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB23_12:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	register_namespace_alias, .Lfunc_end23-register_namespace_alias
	.cfi_endproc

	.align	16, 0x90
	.type	skip_to,@function
skip_to:                                # @skip_to
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$0, tk
	movb	%al, -5(%rbp)           # 1-byte Spill
	je	.LBB24_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	tk, %eax
	cmpl	-4(%rbp), %eax
	sete	%cl
	movb	%cl, -5(%rbp)           # 1-byte Spill
.LBB24_3:                               # %lor.end
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	-5(%rbp), %al           # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB24_4
	jmp	.LBB24_5
.LBB24_4:                               # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB24_1
.LBB24_5:                               # %while.end
	movl	tk, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	skip_to, .Lfunc_end24-skip_to
	.cfi_endproc

	.align	16, 0x90
	.type	enter_namespace,@function
enter_namespace:                        # @enter_namespace
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
	movq	-8(%rbp), %rdi
	movq	current_namespace, %rsi
	callq	find_namespace
	movq	%rax, -16(%rbp)
	movl	namespace_sp, %ecx
	cmpl	namespace_stack_size, %ecx
	jne	.LBB25_5
# BB#1:                                 # %if.then
	movl	$10, %eax
	movl	namespace_stack_size, %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB25_3
# BB#2:                                 # %cond.true
	movl	$10, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB25_4
.LBB25_3:                               # %cond.false
	movl	namespace_stack_size, %eax
	shll	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB25_4:                               # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	namespace_stack, %rcx
	movslq	-20(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, namespace_stack
	movl	-20(%rbp), %r8d
	movl	%r8d, namespace_stack_size
.LBB25_5:                               # %if.end
	movq	current_namespace, %rax
	movl	namespace_sp, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, namespace_sp
	movslq	%ecx, %rsi
	movq	namespace_stack, %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-16(%rbp), %rax
	movq	%rax, current_namespace
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	enter_namespace, .Lfunc_end25-enter_namespace
	.cfi_endproc

	.align	16, 0x90
	.type	leave_namespace,@function
leave_namespace:                        # @leave_namespace
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
	cmpl	$0, namespace_sp
	jle	.LBB26_2
# BB#1:                                 # %cond.true
	jmp	.LBB26_3
.LBB26_2:                               # %cond.false
	movabsq	$.L.str.109, %rdi
	movabsq	$.L.str.110, %rsi
	movl	$1100, %edx             # imm = 0x44C
	movabsq	$.L__PRETTY_FUNCTION__.leave_namespace, %rcx
	callq	__assert_fail
.LBB26_3:                               # %cond.end
	movl	namespace_sp, %eax
	addl	$-1, %eax
	movl	%eax, namespace_sp
	movslq	%eax, %rcx
	movq	namespace_stack, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, current_namespace
	popq	%rbp
	retq
.Lfunc_end26:
	.size	leave_namespace, .Lfunc_end26-leave_namespace
	.cfi_endproc

	.align	16, 0x90
	.type	set_flag,@function
set_flag:                               # @set_flag
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	orl	(%rdi), %esi
	movl	%esi, (%rdi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	set_flag, .Lfunc_end27-set_flag
	.cfi_endproc

	.align	16, 0x90
	.type	skip_matching,@function
skip_matching:                          # @skip_matching
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
	subq	$48, %rsp
	cmpl	$-1, tk
	jne	.LBB28_2
# BB#1:                                 # %cond.true
	callq	yylex
	movl	%eax, tk
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	movl	tk, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB28_3:                               # %cond.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	movl	%eax, %ecx
	subl	$40, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	je	.LBB28_5
	jmp	.LBB28_22
.LBB28_22:                              # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB28_6
	jmp	.LBB28_23
.LBB28_23:                              # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB28_7
	jmp	.LBB28_24
.LBB28_24:                              # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB28_8
	jmp	.LBB28_4
.LBB28_4:                               # %sw.bb
	movl	$125, -8(%rbp)
	jmp	.LBB28_9
.LBB28_5:                               # %sw.bb.1
	movl	$41, -8(%rbp)
	jmp	.LBB28_9
.LBB28_6:                               # %sw.bb.2
	movl	$62, -8(%rbp)
	jmp	.LBB28_9
.LBB28_7:                               # %sw.bb.3
	movl	$93, -8(%rbp)
	jmp	.LBB28_9
.LBB28_8:                               # %sw.default
	callq	abort
.LBB28_9:                               # %sw.epilog
	movl	$0, -12(%rbp)
.LBB28_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	tk, %eax
	cmpl	-4(%rbp), %eax
	jne	.LBB28_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB28_10 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_18
.LBB28_12:                              # %if.else
                                        #   in Loop: Header=BB28_10 Depth=1
	movl	tk, %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB28_14
# BB#13:                                # %if.then.6
                                        #   in Loop: Header=BB28_10 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_17
.LBB28_14:                              # %if.else.7
                                        #   in Loop: Header=BB28_10 Depth=1
	cmpl	$0, tk
	jne	.LBB28_16
# BB#15:                                # %if.then.9
	jmp	.LBB28_21
.LBB28_16:                              # %if.end
                                        #   in Loop: Header=BB28_10 Depth=1
	jmp	.LBB28_17
.LBB28_17:                              # %if.end.10
                                        #   in Loop: Header=BB28_10 Depth=1
	jmp	.LBB28_18
.LBB28_18:                              # %if.end.11
                                        #   in Loop: Header=BB28_10 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$0, -12(%rbp)
	jne	.LBB28_20
# BB#19:                                # %if.then.14
	jmp	.LBB28_21
.LBB28_20:                              # %if.end.15
                                        #   in Loop: Header=BB28_10 Depth=1
	jmp	.LBB28_10
.LBB28_21:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	skip_matching, .Lfunc_end28-skip_matching
	.cfi_endproc

	.align	16, 0x90
	.type	class_definition,@function
class_definition:                       # @class_definition
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$292, -12(%rbp)         # imm = 0x124
	je	.LBB29_2
# BB#1:                                 # %land.lhs.true
	cmpl	$0, f_structs
	je	.LBB29_4
.LBB29_2:                               # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	je	.LBB29_5
# BB#3:                                 # %land.lhs.true.2
	cmpl	$0, f_nested_classes
	jne	.LBB29_5
.LBB29_4:                               # %if.then
	movq	$0, -32(%rbp)
	jmp	.LBB29_6
.LBB29_5:                               # %if.else
	movq	yytext, %rdi
	movq	-8(%rbp), %rsi
	callq	add_sym
	movq	%rax, -32(%rbp)
	movq	in, %rax
	movq	inbuffer, %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 88(%rax)
	callq	matching_regexp
	movq	-32(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	filename, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 96(%rsi)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB29_6:                               # %if.end
	cmpl	$58, tk
	jne	.LBB29_30
# BB#7:                                 # %if.then.8
	movl	$0, -44(%rbp)
	callq	yylex
	movl	%eax, tk
.LBB29_8:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_21 Depth 2
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB29_9
	jmp	.LBB29_29
.LBB29_9:                               # %while.body
                                        #   in Loop: Header=BB29_8 Depth=1
	cmpl	$-1, tk
	jne	.LBB29_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB29_8 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB29_12
.LBB29_11:                              # %cond.false
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	tk, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB29_12:                              # %cond.end
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	subl	$44, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB29_19
	jmp	.LBB29_42
.LBB29_42:                              # %cond.end
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB29_27
	jmp	.LBB29_43
.LBB29_43:                              # %cond.end
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB29_14
	jmp	.LBB29_44
.LBB29_44:                              # %cond.end
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-312, %eax             # imm = 0xFFFFFFFFFFFFFEC8
	subl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB29_13
	jmp	.LBB29_45
.LBB29_45:                              # %cond.end
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$330, %eax              # imm = 0x14A
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jne	.LBB29_20
	jmp	.LBB29_13
.LBB29_13:                              # %sw.bb
                                        #   in Loop: Header=BB29_8 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB29_28
.LBB29_14:                              # %sw.bb.15
                                        #   in Loop: Header=BB29_8 Depth=1
	callq	parse_classname
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB29_18
# BB#15:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB29_8 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB29_18
# BB#16:                                # %land.lhs.true.20
                                        #   in Loop: Header=BB29_8 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB29_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB29_8 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	add_link
.LBB29_18:                              # %if.end.24
                                        #   in Loop: Header=BB29_8 Depth=1
	jmp	.LBB29_28
.LBB29_19:                              # %sw.bb.25
                                        #   in Loop: Header=BB29_8 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB29_28
.LBB29_20:                              # %sw.default
                                        #   in Loop: Header=BB29_8 Depth=1
	jmp	.LBB29_21
.LBB29_21:                              # %while.cond.27
                                        #   Parent Loop BB29_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -73(%rbp)          # 1-byte Spill
	je	.LBB29_24
# BB#22:                                # %lor.lhs.false.30
                                        #   in Loop: Header=BB29_21 Depth=2
	movb	$1, %al
	cmpl	$0, tk
	movb	%al, -73(%rbp)          # 1-byte Spill
	je	.LBB29_24
# BB#23:                                # %lor.rhs
                                        #   in Loop: Header=BB29_21 Depth=2
	cmpl	$123, tk
	sete	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB29_24:                              # %lor.end
                                        #   in Loop: Header=BB29_21 Depth=2
	movb	-73(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB29_25
	jmp	.LBB29_26
.LBB29_25:                              # %while.body.36
                                        #   in Loop: Header=BB29_21 Depth=2
	callq	yylex
	movl	%eax, tk
	jmp	.LBB29_21
.LBB29_26:                              # %while.end
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	$1, -44(%rbp)
.LBB29_27:                              # %sw.bb.38
                                        #   in Loop: Header=BB29_8 Depth=1
	movl	$1, -44(%rbp)
.LBB29_28:                              # %sw.epilog
                                        #   in Loop: Header=BB29_8 Depth=1
	jmp	.LBB29_8
.LBB29_29:                              # %while.end.39
	jmp	.LBB29_30
.LBB29_30:                              # %if.end.40
	cmpl	$123, tk
	jne	.LBB29_41
# BB#31:                                # %if.then.43
	cmpl	$292, -12(%rbp)         # imm = 0x124
	je	.LBB29_34
# BB#32:                                # %land.lhs.true.46
	cmpl	$0, f_structs
	jne	.LBB29_34
# BB#33:                                # %if.then.48
	callq	skip_matching
	jmp	.LBB29_40
.LBB29_34:                              # %if.else.49
	callq	yylex
	movl	%eax, tk
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	class_body
	cmpl	$125, tk
	jne	.LBB29_39
# BB#35:                                # %if.then.53
	callq	yylex
	movl	%eax, tk
	cmpl	$59, tk
	jne	.LBB29_38
# BB#36:                                # %land.lhs.true.57
	cmpl	$0, -20(%rbp)
	jne	.LBB29_38
# BB#37:                                # %if.then.59
	callq	yylex
	movl	%eax, tk
.LBB29_38:                              # %if.end.61
	jmp	.LBB29_39
.LBB29_39:                              # %if.end.62
	jmp	.LBB29_40
.LBB29_40:                              # %if.end.63
	jmp	.LBB29_41
.LBB29_41:                              # %if.end.64
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	class_definition, .Lfunc_end29-class_definition
	.cfi_endproc

	.align	16, 0x90
	.type	declaration,@function
declaration:                            # @declaration
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
	subq	$224, %rsp
	movl	%edi, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB30_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_46 Depth 2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB30_4
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB30_1 Depth=1
	movb	$1, %al
	cmpl	$123, tk
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB30_4
# BB#3:                                 # %lor.rhs
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$0, tk
	sete	%al
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB30_4:                               # %lor.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB30_5
	jmp	.LBB30_57
.LBB30_5:                               # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB30_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB30_8
.LBB30_7:                               # %cond.false
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	tk, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB30_8:                               # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	subl	$40, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	je	.LBB30_25
	jmp	.LBB30_59
.LBB30_59:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB30_18
	jmp	.LBB30_60
.LBB30_60:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB30_17
	jmp	.LBB30_61
.LBB30_61:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB30_10
	jmp	.LBB30_62
.LBB30_62:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$126, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB30_21
	jmp	.LBB30_63
.LBB30_63:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB30_24
	jmp	.LBB30_64
.LBB30_64:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$291, %eax              # imm = 0x123
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB30_13
	jmp	.LBB30_65
.LBB30_65:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$292, %eax              # imm = 0x124
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB30_14
	jmp	.LBB30_66
.LBB30_66:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$293, %eax              # imm = 0x125
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB30_13
	jmp	.LBB30_67
.LBB30_67:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$298, %eax              # imm = 0x12A
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB30_13
	jmp	.LBB30_68
.LBB30_68:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$300, %eax              # imm = 0x12C
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB30_11
	jmp	.LBB30_69
.LBB30_69:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$307, %eax              # imm = 0x133
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB30_20
	jmp	.LBB30_70
.LBB30_70:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-308, %eax             # imm = 0xFFFFFFFFFFFFFECC
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jb	.LBB30_13
	jmp	.LBB30_71
.LBB30_71:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$311, %eax              # imm = 0x137
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB30_19
	jmp	.LBB30_72
.LBB30_72:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-317, %eax             # imm = 0xFFFFFFFFFFFFFEC3
	subl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jb	.LBB30_13
	jmp	.LBB30_73
.LBB30_73:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$320, %eax              # imm = 0x140
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB30_12
	jmp	.LBB30_74
.LBB30_74:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$321, %eax              # imm = 0x141
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB30_14
	jmp	.LBB30_75
.LBB30_75:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$327, %eax              # imm = 0x147
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB30_11
	jmp	.LBB30_76
.LBB30_76:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$328, %eax              # imm = 0x148
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB30_14
	jmp	.LBB30_77
.LBB30_77:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$329, %eax              # imm = 0x149
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB30_13
	jmp	.LBB30_78
.LBB30_78:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-331, %eax             # imm = 0xFFFFFFFFFFFFFEB5
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jb	.LBB30_13
	jmp	.LBB30_79
.LBB30_79:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$335, %eax              # imm = 0x14F
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB30_13
	jmp	.LBB30_80
.LBB30_80:                              # %cond.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$348, %eax              # imm = 0x15C
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB30_13
	jmp	.LBB30_9
.LBB30_9:                               # %sw.default
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB30_56
.LBB30_10:                              # %sw.bb
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	skip_matching
	jmp	.LBB30_56
.LBB30_11:                              # %sw.bb.5
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$4, -48(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB30_56
.LBB30_12:                              # %sw.bb.7
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$2, -48(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB30_56
.LBB30_13:                              # %sw.bb.9
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB30_56
.LBB30_14:                              # %sw.bb.11
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB30_16
# BB#15:                                # %if.then
	movq	-16(%rbp), %rdi
	callq	free
	jmp	.LBB30_58
.LBB30_16:                              # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_17
.LBB30_17:                              # %sw.bb.12
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	skip_initializer
	jmp	.LBB30_56
.LBB30_18:                              # %sw.bb.13
                                        #   in Loop: Header=BB30_1 Depth=1
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	add_declarator
	jmp	.LBB30_56
.LBB30_19:                              # %sw.bb.14
                                        #   in Loop: Header=BB30_1 Depth=1
	leaq	-48(%rbp), %rdi
	callq	operator_name
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$1, %rax
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	strcpy
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB30_56
.LBB30_20:                              # %sw.bb.19
                                        #   in Loop: Header=BB30_1 Depth=1
	leaq	-4(%rbp), %rdi
	movl	$2, %esi
	callq	set_flag
	callq	yylex
	movl	%eax, tk
	jmp	.LBB30_56
.LBB30_21:                              # %sw.bb.21
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB30_23
# BB#22:                                # %if.then.24
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	yytext, %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$2, %rax
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$126, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	yytext, %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	yylex
	movl	%eax, tk
.LBB30_23:                              # %if.end.30
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_56
.LBB30_24:                              # %sw.bb.31
                                        #   in Loop: Header=BB30_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	parse_qualified_ident_or_type
	movq	%rax, -24(%rbp)
	jmp	.LBB30_56
.LBB30_25:                              # %sw.bb.33
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB30_38
# BB#26:                                # %if.then.35
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpq	$0, -16(%rbp)
	je	.LBB30_31
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB30_31
# BB#28:                                # %if.then.39
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rsi
	callq	streq
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -44(%rbp)
	testb	$1, %al
	jne	.LBB30_30
# BB#29:                                # %if.then.41
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	matching_regexp
	movq	%rax, -32(%rbp)
.LBB30_30:                              # %if.end.43
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_32
.LBB30_31:                              # %if.else
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$0, -44(%rbp)
.LBB30_32:                              # %if.end.44
                                        #   in Loop: Header=BB30_1 Depth=1
	leaq	-4(%rbp), %rdi
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	callq	parm_list
	movl	%eax, -40(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB30_34
# BB#33:                                # %if.then.48
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	matching_regexp
	movq	%rax, -32(%rbp)
.LBB30_34:                              # %if.end.50
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB30_37
# BB#35:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB30_37
# BB#36:                                # %if.then.54
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-4(%rbp), %eax
	movl	$0, (%rsp)
	movl	%eax, 8(%rsp)
	callq	add_member_defn
.LBB30_37:                              # %if.end.55
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_45
.LBB30_38:                              # %if.else.56
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	yylex
	movl	%eax, tk
	cmpq	$0, -16(%rbp)
	je	.LBB30_40
# BB#39:                                # %if.then.59
                                        #   in Loop: Header=BB30_1 Depth=1
	callq	matching_regexp
	leaq	-4(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	callq	parm_list
	xorl	%r8d, %r8d
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movl	-4(%rbp), %eax
	movl	%eax, (%rsp)
	callq	add_global_decl
.LBB30_40:                              # %if.end.66
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$292, tk                # imm = 0x124
	je	.LBB30_43
# BB#41:                                # %lor.lhs.false.69
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$321, tk                # imm = 0x141
	je	.LBB30_43
# BB#42:                                # %lor.lhs.false.72
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$328, tk                # imm = 0x148
	jne	.LBB30_44
.LBB30_43:                              # %if.then.75
	jmp	.LBB30_58
.LBB30_44:                              # %if.end.76
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_45
.LBB30_45:                              # %if.end.77
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_46
.LBB30_46:                              # %while.cond.78
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -193(%rbp)         # 1-byte Spill
	je	.LBB30_49
# BB#47:                                # %lor.lhs.false.81
                                        #   in Loop: Header=BB30_46 Depth=2
	movb	$1, %al
	cmpl	$123, tk
	movb	%al, -193(%rbp)         # 1-byte Spill
	je	.LBB30_49
# BB#48:                                # %lor.rhs.84
                                        #   in Loop: Header=BB30_46 Depth=2
	cmpl	$0, tk
	sete	%al
	movb	%al, -193(%rbp)         # 1-byte Spill
.LBB30_49:                              # %lor.end.87
                                        #   in Loop: Header=BB30_46 Depth=2
	movb	-193(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB30_50
	jmp	.LBB30_51
.LBB30_50:                              # %while.body.89
                                        #   in Loop: Header=BB30_46 Depth=2
	callq	yylex
	movl	%eax, tk
	jmp	.LBB30_46
.LBB30_51:                              # %while.end
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB30_55
# BB#52:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB30_55
# BB#53:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$123, tk
	jne	.LBB30_55
# BB#54:                                # %if.then.97
                                        #   in Loop: Header=BB30_1 Depth=1
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movl	-4(%rbp), %eax
	movl	%eax, (%rsp)
	callq	add_global_defn
.LBB30_55:                              # %if.end.98
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	free
	movq	$0, -16(%rbp)
.LBB30_56:                              # %sw.epilog
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_1
.LBB30_57:                              # %while.end.99
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movl	-4(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	add_declarator
.LBB30_58:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	declaration, .Lfunc_end30-declaration
	.cfi_endproc

	.align	16, 0x90
	.type	find_namespace,@function
find_namespace:                         # @find_namespace
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	check_namespace
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_namespace
	movq	%rax, -24(%rbp)
.LBB31_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	find_namespace, .Lfunc_end31-find_namespace
	.cfi_endproc

	.align	16, 0x90
	.type	check_namespace,@function
check_namespace:                        # @check_namespace
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	all_namespaces, %rsi
	movq	%rsi, -24(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB32_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	streq
	testb	$1, %al
	jne	.LBB32_3
	jmp	.LBB32_5
.LBB32_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB32_5
# BB#4:                                 # %if.then
	jmp	.LBB32_7
.LBB32_5:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_6
.LBB32_6:                               # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_1
.LBB32_7:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	check_namespace, .Lfunc_end32-check_namespace
	.cfi_endproc

	.align	16, 0x90
	.type	make_namespace,@function
make_namespace:                         # @make_namespace
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$120, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	xorl	%esi, %esi
	movl	$120, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	memset
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	all_namespaces, %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, 112(%rsi)
	movq	-24(%rbp), %rdx
	movq	%rdx, all_namespaces
	movq	-24(%rbp), %rdx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	make_namespace, .Lfunc_end33-make_namespace
	.cfi_endproc

	.align	16, 0x90
	.type	matching_regexp,@function
matching_regexp:                        # @matching_regexp
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
	cmpl	$0, f_regexps
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB34_34
.LBB34_2:                               # %if.end
	cmpq	$0, matching_regexp_buffer
	jne	.LBB34_4
# BB#3:                                 # %if.then.1
	movslq	max_regexp, %rdi
	callq	xmalloc
	movq	%rax, matching_regexp_buffer
	movslq	max_regexp, %rax
	addq	matching_regexp_buffer, %rax
	addq	$-1, %rax
	movq	%rax, matching_regexp_end_buf
.LBB34_4:                               # %if.end.2
	movq	in, %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
.LBB34_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	inbuffer, %rdx
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jbe	.LBB34_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB34_7:                               # %land.end
                                        #   in Loop: Header=BB34_5 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_8
	jmp	.LBB34_10
.LBB34_8:                               # %for.body
                                        #   in Loop: Header=BB34_5 Depth=1
	jmp	.LBB34_9
.LBB34_9:                               # %for.inc
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_5
.LBB34_10:                              # %for.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB34_25
# BB#11:                                # %if.then.12
	jmp	.LBB34_12
.LBB34_12:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_16 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	in, %rdx
	movq	-16(%rbp), %rsi
	subq	%rsi, %rdx
	movslq	min_regexp, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -34(%rbp)          # 1-byte Spill
	jge	.LBB34_14
# BB#13:                                # %land.rhs.16
                                        #   in Loop: Header=BB34_12 Depth=1
	movq	-16(%rbp), %rax
	cmpq	inbuffer, %rax
	seta	%cl
	movb	%cl, -34(%rbp)          # 1-byte Spill
.LBB34_14:                              # %land.end.19
                                        #   in Loop: Header=BB34_12 Depth=1
	movb	-34(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_15
	jmp	.LBB34_22
.LBB34_15:                              # %while.body
                                        #   in Loop: Header=BB34_12 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
.LBB34_16:                              # %for.cond.21
                                        #   Parent Loop BB34_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	inbuffer, %rdx
	movb	%cl, -35(%rbp)          # 1-byte Spill
	jbe	.LBB34_18
# BB#17:                                # %land.rhs.24
                                        #   in Loop: Header=BB34_16 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	movb	%dl, -35(%rbp)          # 1-byte Spill
.LBB34_18:                              # %land.end.28
                                        #   in Loop: Header=BB34_16 Depth=2
	movb	-35(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_19
	jmp	.LBB34_21
.LBB34_19:                              # %for.body.29
                                        #   in Loop: Header=BB34_16 Depth=2
	jmp	.LBB34_20
.LBB34_20:                              # %for.inc.30
                                        #   in Loop: Header=BB34_16 Depth=2
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_16
.LBB34_21:                              # %for.end.32
                                        #   in Loop: Header=BB34_12 Depth=1
	jmp	.LBB34_12
.LBB34_22:                              # %while.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB34_24
# BB#23:                                # %if.then.36
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB34_24:                              # %if.end.38
	jmp	.LBB34_25
.LBB34_25:                              # %if.end.39
	movq	matching_regexp_end_buf, %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	in, %rax
	movq	%rax, -32(%rbp)
.LBB34_26:                              # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	matching_regexp_buffer, %rdx
	movb	%cl, -36(%rbp)          # 1-byte Spill
	jbe	.LBB34_28
# BB#27:                                # %land.rhs.44
                                        #   in Loop: Header=BB34_26 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	seta	%cl
	movb	%cl, -36(%rbp)          # 1-byte Spill
.LBB34_28:                              # %land.end.47
                                        #   in Loop: Header=BB34_26 Depth=1
	movb	-36(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_29
	jmp	.LBB34_33
.LBB34_29:                              # %for.body.48
                                        #   in Loop: Header=BB34_26 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movb	-1(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, -1(%rax)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	$34, %esi
	je	.LBB34_31
# BB#30:                                # %lor.lhs.false
                                        #   in Loop: Header=BB34_26 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB34_32
.LBB34_31:                              # %if.then.57
                                        #   in Loop: Header=BB34_26 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$92, -1(%rax)
.LBB34_32:                              # %if.end.59
                                        #   in Loop: Header=BB34_26 Depth=1
	jmp	.LBB34_26
.LBB34_33:                              # %for.end.60
	movq	matching_regexp_end_buf, %rax
	movb	$0, -1(%rax)
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -8(%rbp)
.LBB34_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	matching_regexp, .Lfunc_end34-matching_regexp
	.cfi_endproc

	.align	16, 0x90
	.type	parse_classname,@function
parse_classname:                        # @parse_classname
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
	subq	$16, %rsp
	movq	$0, -8(%rbp)
.LBB35_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB35_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	yytext, %rdi
	movq	-8(%rbp), %rsi
	callq	add_sym
	movq	%rax, -8(%rbp)
	callq	yylex
	movl	%eax, tk
	cmpl	$60, tk
	jne	.LBB35_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB35_1 Depth=1
	callq	skip_matching
	movl	$32, %esi
	movq	-8(%rbp), %rdi
	callq	set_flag
.LBB35_4:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpl	$279, tk                # imm = 0x117
	je	.LBB35_6
# BB#5:                                 # %if.then.4
	jmp	.LBB35_7
.LBB35_6:                               # %if.end.5
                                        #   in Loop: Header=BB35_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB35_1
.LBB35_7:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	parse_classname, .Lfunc_end35-parse_classname
	.cfi_endproc

	.align	16, 0x90
	.type	add_link,@function
add_link:                               # @add_link
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB36_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$120, %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$120, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcmp
	cmpl	$0, %eax
	setg	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB36_3:                               # %land.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_4
	jmp	.LBB36_6
.LBB36_4:                               # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_5
.LBB36_5:                               # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB36_1
.LBB36_6:                               # %for.end
	cmpq	$0, -40(%rbp)
	je	.LBB36_8
# BB#7:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB36_12
.LBB36_8:                               # %if.then
	movl	$16, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$16, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	cmpq	$0, -48(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB36_11
.LBB36_10:                              # %if.else
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB36_11:                              # %if.end
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB36_12:                              # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	add_link, .Lfunc_end36-add_link
	.cfi_endproc

	.align	16, 0x90
	.type	class_body,@function
class_body:                             # @class_body
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
	subq	$128, %rsp
	movl	$314, %eax              # imm = 0x13A
	movl	$312, %ecx              # imm = 0x138
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$292, -12(%rbp)         # imm = 0x124
	cmovel	%ecx, %eax
	movl	%eax, -16(%rbp)
.LBB37_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_14 Depth 2
	movb	$1, %al
	cmpl	$0, tk
	movb	%al, -21(%rbp)          # 1-byte Spill
	je	.LBB37_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	$125, tk
	sete	%al
	movb	%al, -21(%rbp)          # 1-byte Spill
.LBB37_3:                               # %lor.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB37_4
	jmp	.LBB37_28
.LBB37_4:                               # %while.body
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB37_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB37_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB37_7
.LBB37_6:                               # %cond.false
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	tk, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB37_7:                               # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	subl	$126, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_29
.LBB37_29:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_30
.LBB37_30:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-291, %eax             # imm = 0xFFFFFFFFFFFFFEDD
	subl	$3, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jb	.LBB37_25
	jmp	.LBB37_31
.LBB37_31:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$298, %eax              # imm = 0x12A
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_32
.LBB37_32:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$300, %eax              # imm = 0x12C
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_33
.LBB37_33:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$302, %eax              # imm = 0x12E
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_34
.LBB37_34:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$304, %eax              # imm = 0x130
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_35
.LBB37_35:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-307, %eax             # imm = 0xFFFFFFFFFFFFFECD
	subl	$3, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jb	.LBB37_25
	jmp	.LBB37_36
.LBB37_36:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-312, %eax             # imm = 0xFFFFFFFFFFFFFEC8
	subl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB37_8
	jmp	.LBB37_37
.LBB37_37:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-317, %eax             # imm = 0xFFFFFFFFFFFFFEC3
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jb	.LBB37_25
	jmp	.LBB37_38
.LBB37_38:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-320, %eax             # imm = 0xFFFFFFFFFFFFFEC0
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB37_25
	jmp	.LBB37_39
.LBB37_39:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$323, %eax              # imm = 0x143
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_40
.LBB37_40:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-327, %eax             # imm = 0xFFFFFFFFFFFFFEB9
	subl	$6, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jb	.LBB37_25
	jmp	.LBB37_41
.LBB37_41:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$-334, %eax             # imm = 0xFFFFFFFFFFFFFEB2
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jb	.LBB37_25
	jmp	.LBB37_42
.LBB37_42:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$340, %eax              # imm = 0x154
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_43
.LBB37_43:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$341, %eax              # imm = 0x155
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB37_24
	jmp	.LBB37_44
.LBB37_44:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$347, %eax              # imm = 0x15B
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB37_24
	jmp	.LBB37_45
.LBB37_45:                              # %cond.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$348, %eax              # imm = 0x15C
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB37_25
	jmp	.LBB37_26
.LBB37_8:                               # %sw.bb
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB37_10
# BB#9:                                 # %cond.true.6
                                        #   in Loop: Header=BB37_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB37_11
.LBB37_10:                              # %cond.false.8
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	tk, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB37_11:                              # %cond.end.9
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	callq	yylex
	movl	%eax, tk
	cmpl	$58, tk
	jne	.LBB37_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB37_23
.LBB37_13:                              # %if.else
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_14
.LBB37_14:                              # %do.body
                                        #   Parent Loop BB37_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	yylex
	movl	%eax, tk
# BB#15:                                # %do.cond
                                        #   in Loop: Header=BB37_14 Depth=2
	movb	$1, %al
	cmpl	$264, tk                # imm = 0x108
	movb	%al, -109(%rbp)         # 1-byte Spill
	je	.LBB37_21
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB37_14 Depth=2
	movb	$1, %al
	cmpl	$44, tk
	movb	%al, -109(%rbp)         # 1-byte Spill
	je	.LBB37_21
# BB#17:                                # %lor.rhs.17
                                        #   in Loop: Header=BB37_14 Depth=2
	movb	$1, %al
	cmpl	$314, tk                # imm = 0x13A
	movb	%al, -110(%rbp)         # 1-byte Spill
	je	.LBB37_20
# BB#18:                                # %lor.lhs.false.19
                                        #   in Loop: Header=BB37_14 Depth=2
	movb	$1, %al
	cmpl	$313, tk                # imm = 0x139
	movb	%al, -110(%rbp)         # 1-byte Spill
	je	.LBB37_20
# BB#19:                                # %lor.rhs.21
                                        #   in Loop: Header=BB37_14 Depth=2
	cmpl	$312, tk                # imm = 0x138
	sete	%al
	movb	%al, -110(%rbp)         # 1-byte Spill
.LBB37_20:                              # %lor.end.23
                                        #   in Loop: Header=BB37_14 Depth=2
	movb	-110(%rbp), %al         # 1-byte Reload
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB37_21:                              # %lor.end.24
                                        #   in Loop: Header=BB37_14 Depth=2
	movb	-109(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_14
# BB#22:                                # %do.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_23
.LBB37_23:                              # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_27
.LBB37_24:                              # %sw.bb.25
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	$59, %edi
	callq	skip_to
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB37_27
.LBB37_25:                              # %sw.bb.27
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	member
	jmp	.LBB37_27
.LBB37_26:                              # %sw.default
                                        #   in Loop: Header=BB37_1 Depth=1
	callq	yylex
	movl	%eax, tk
.LBB37_27:                              # %sw.epilog
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_1
.LBB37_28:                              # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	class_body, .Lfunc_end37-class_body
	.cfi_endproc

	.align	16, 0x90
	.type	member,@function
member:                                 # @member
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB38_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_56 Depth 2
                                        #     Child Loop BB38_42 Depth 2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB38_5
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	$1, %al
	cmpl	$123, tk
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB38_5
# BB#3:                                 # %lor.lhs.false.2
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	$1, %al
	cmpl	$125, tk
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB38_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$0, tk
	sete	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB38_5:                               # %lor.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB38_6
	jmp	.LBB38_75
.LBB38_6:                               # %while.body
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB38_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB38_9
.LBB38_8:                               # %cond.false
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	tk, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB38_9:                               # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	subl	$40, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	je	.LBB38_30
	jmp	.LBB38_97
.LBB38_97:                              # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB38_19
	jmp	.LBB38_98
.LBB38_98:                              # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$126, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB38_24
	jmp	.LBB38_99
.LBB38_99:                              # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB38_25
	jmp	.LBB38_100
.LBB38_100:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$291, %eax              # imm = 0x123
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_101
.LBB38_101:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$292, %eax              # imm = 0x124
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB38_52
	jmp	.LBB38_102
.LBB38_102:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$293, %eax              # imm = 0x125
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_103
.LBB38_103:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$298, %eax              # imm = 0x12A
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_104
.LBB38_104:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$300, %eax              # imm = 0x12C
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB38_20
	jmp	.LBB38_105
.LBB38_105:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$304, %eax              # imm = 0x130
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB38_22
	jmp	.LBB38_106
.LBB38_106:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$307, %eax              # imm = 0x133
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB38_17
	jmp	.LBB38_107
.LBB38_107:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-308, %eax             # imm = 0xFFFFFFFFFFFFFECC
	subl	$2, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jb	.LBB38_72
	jmp	.LBB38_108
.LBB38_108:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$311, %eax              # imm = 0x137
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB38_29
	jmp	.LBB38_109
.LBB38_109:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-317, %eax             # imm = 0xFFFFFFFFFFFFFEC3
	subl	$2, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jb	.LBB38_72
	jmp	.LBB38_110
.LBB38_110:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$320, %eax              # imm = 0x140
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB38_23
	jmp	.LBB38_111
.LBB38_111:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$321, %eax              # imm = 0x141
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB38_52
	jmp	.LBB38_112
.LBB38_112:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$323, %eax              # imm = 0x143
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB38_11
	jmp	.LBB38_113
.LBB38_113:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$327, %eax              # imm = 0x147
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB38_21
	jmp	.LBB38_114
.LBB38_114:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$328, %eax              # imm = 0x148
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB38_52
	jmp	.LBB38_115
.LBB38_115:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$329, %eax              # imm = 0x149
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_116
.LBB38_116:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$330, %eax              # imm = 0x14A
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB38_18
	jmp	.LBB38_117
.LBB38_117:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-331, %eax             # imm = 0xFFFFFFFFFFFFFEB5
	subl	$2, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jb	.LBB38_72
	jmp	.LBB38_118
.LBB38_118:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$334, %eax              # imm = 0x14E
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB38_16
	jmp	.LBB38_119
.LBB38_119:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$335, %eax              # imm = 0x14F
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_120
.LBB38_120:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$340, %eax              # imm = 0x154
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB38_15
	jmp	.LBB38_121
.LBB38_121:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$341, %eax              # imm = 0x155
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_122
.LBB38_122:                             # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$348, %eax              # imm = 0x15C
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB38_72
	jmp	.LBB38_10
.LBB38_10:                              # %sw.default
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB38_74
.LBB38_11:                              # %sw.bb
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	yylex
	leaq	-56(%rbp), %rdi
	movl	$32, %esi
	movl	%eax, tk
	callq	set_flag
	cmpl	$60, tk
	jne	.LBB38_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	skip_matching
	jmp	.LBB38_14
.LBB38_13:                              # %if.else
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_14
.LBB38_14:                              # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_74
.LBB38_15:                              # %sw.bb.9
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-56(%rbp), %rdi
	movl	$64, %esi
	callq	set_flag
	jmp	.LBB38_73
.LBB38_16:                              # %sw.bb.10
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-56(%rbp), %rdi
	movl	$16, %esi
	callq	set_flag
	jmp	.LBB38_73
.LBB38_17:                              # %sw.bb.11
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-56(%rbp), %rdi
	movl	$2, %esi
	callq	set_flag
	jmp	.LBB38_73
.LBB38_18:                              # %sw.bb.12
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-56(%rbp), %rdi
	movl	$1, %esi
	callq	set_flag
	jmp	.LBB38_73
.LBB38_19:                              # %sw.bb.13
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	skip_matching
	jmp	.LBB38_74
.LBB38_20:                              # %sw.bb.14
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$4, -28(%rbp)
	jmp	.LBB38_73
.LBB38_21:                              # %sw.bb.15
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$4, -28(%rbp)
	jmp	.LBB38_73
.LBB38_22:                              # %sw.bb.16
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$3, -28(%rbp)
	jmp	.LBB38_73
.LBB38_23:                              # %sw.bb.17
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$2, -28(%rbp)
	jmp	.LBB38_73
.LBB38_24:                              # %sw.bb.18
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$1, -76(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB38_74
.LBB38_25:                              # %sw.bb.20
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	yytext, %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$2, %rax
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB38_27
# BB#26:                                # %if.then.23
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rax
	movb	$126, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	yytext, %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB38_28
.LBB38_27:                              # %if.else.25
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	yytext, %rsi
	callq	strcpy
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB38_28:                              # %if.end.27
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	yylex
	movl	%eax, tk
	jmp	.LBB38_74
.LBB38_29:                              # %sw.bb.29
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-28(%rbp), %rdi
	callq	operator_name
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$1, %rax
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	strcpy
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB38_74
.LBB38_30:                              # %sw.bb.35
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	$1, -68(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB38_35
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB38_35
# BB#32:                                # %if.then.39
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rsi
	callq	streq
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -48(%rbp)
	testb	$1, %al
	jne	.LBB38_34
# BB#33:                                # %if.then.41
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	matching_regexp
	movq	%rax, -40(%rbp)
.LBB38_34:                              # %if.end.43
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_36
.LBB38_35:                              # %if.else.44
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$0, -48(%rbp)
.LBB38_36:                              # %if.end.45
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-56(%rbp), %rdi
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	callq	parm_list
	movl	%eax, -72(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB38_38
# BB#37:                                # %if.then.49
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	matching_regexp
	movq	%rax, -40(%rbp)
.LBB38_38:                              # %if.end.51
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB38_41
# BB#39:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB38_41
# BB#40:                                # %if.then.56
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %r10d
	movl	-56(%rbp), %r11d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	add_member_decl
.LBB38_41:                              # %if.end.57
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_42
.LBB38_42:                              # %while.cond.58
                                        #   Parent Loop BB38_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB38_45
# BB#43:                                # %lor.lhs.false.61
                                        #   in Loop: Header=BB38_42 Depth=2
	movb	$1, %al
	cmpl	$123, tk
	movb	%al, -249(%rbp)         # 1-byte Spill
	je	.LBB38_45
# BB#44:                                # %lor.rhs.64
                                        #   in Loop: Header=BB38_42 Depth=2
	cmpl	$0, tk
	sete	%al
	movb	%al, -249(%rbp)         # 1-byte Spill
.LBB38_45:                              # %lor.end.67
                                        #   in Loop: Header=BB38_42 Depth=2
	movb	-249(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB38_46
	jmp	.LBB38_47
.LBB38_46:                              # %while.body.69
                                        #   in Loop: Header=BB38_42 Depth=2
	callq	yylex
	movl	%eax, tk
	jmp	.LBB38_42
.LBB38_47:                              # %while.end
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$123, tk
	jne	.LBB38_51
# BB#48:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB38_51
# BB#49:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB38_51
# BB#50:                                # %if.then.77
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-28(%rbp), %eax
	movl	-56(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_member_defn
.LBB38_51:                              # %if.end.78
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	free
	movq	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.LBB38_74
.LBB38_52:                              # %sw.bb.79
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB38_54
# BB#53:                                # %cond.true.82
                                        #   in Loop: Header=BB38_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB38_55
.LBB38_54:                              # %cond.false.84
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	tk, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB38_55:                              # %cond.end.85
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	$1, -64(%rbp)
	callq	yylex
	movl	%eax, tk
	movl	$1, -52(%rbp)
.LBB38_56:                              # %while.cond.88
                                        #   Parent Loop BB38_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$0, tk
	movb	%al, -257(%rbp)         # 1-byte Spill
	je	.LBB38_60
# BB#57:                                # %lor.lhs.false.91
                                        #   in Loop: Header=BB38_56 Depth=2
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -257(%rbp)         # 1-byte Spill
	je	.LBB38_60
# BB#58:                                # %lor.lhs.false.94
                                        #   in Loop: Header=BB38_56 Depth=2
	movb	$1, %al
	cmpl	$58, tk
	movb	%al, -257(%rbp)         # 1-byte Spill
	je	.LBB38_60
# BB#59:                                # %lor.rhs.97
                                        #   in Loop: Header=BB38_56 Depth=2
	cmpl	$123, tk
	sete	%al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB38_60:                              # %lor.end.100
                                        #   in Loop: Header=BB38_56 Depth=2
	movb	-257(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB38_61
	jmp	.LBB38_64
.LBB38_61:                              # %while.body.102
                                        #   in Loop: Header=BB38_56 Depth=2
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB38_63
# BB#62:                                # %if.then.105
                                        #   in Loop: Header=BB38_56 Depth=2
	movl	$0, -52(%rbp)
.LBB38_63:                              # %if.end.106
                                        #   in Loop: Header=BB38_56 Depth=2
	callq	yylex
	movl	%eax, tk
	jmp	.LBB38_56
.LBB38_64:                              # %while.end.108
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$58, tk
	je	.LBB38_66
# BB#65:                                # %lor.lhs.false.111
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$123, tk
	jne	.LBB38_70
.LBB38_66:                              # %if.then.114
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB38_68
# BB#67:                                # %cond.true.116
                                        #   in Loop: Header=BB38_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB38_69
.LBB38_68:                              # %cond.false.117
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB38_69:                              # %cond.end.118
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	-60(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	%rax, %rdi
	callq	class_definition
	jmp	.LBB38_71
.LBB38_70:                              # %if.else.120
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$59, %edi
	callq	skip_to
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB38_71:                              # %if.end.122
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_74
.LBB38_72:                              # %sw.bb.123
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_73
.LBB38_73:                              # %typeseen
                                        #   in Loop: Header=BB38_1 Depth=1
	movl	$1, -64(%rbp)
	callq	yylex
	movl	%eax, tk
.LBB38_74:                              # %sw.epilog
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_1
.LBB38_75:                              # %while.end.125
	cmpl	$59, tk
	jne	.LBB38_87
# BB#76:                                # %if.then.128
	cmpq	$0, -24(%rbp)
	je	.LBB38_86
# BB#77:                                # %land.lhs.true.130
	cmpl	$3, -28(%rbp)
	je	.LBB38_86
# BB#78:                                # %land.lhs.true.133
	cmpq	$0, -8(%rbp)
	je	.LBB38_86
# BB#79:                                # %if.then.135
	callq	matching_regexp
	movq	%rax, -40(%rbp)
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB38_85
# BB#80:                                # %if.then.143
	cmpl	$0, -64(%rbp)
	jne	.LBB38_82
# BB#81:                                # %lor.lhs.false.145
	cmpl	$0, -68(%rbp)
	jne	.LBB38_83
.LBB38_82:                              # %if.then.147
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	add_member_decl
	jmp	.LBB38_84
.LBB38_83:                              # %if.else.148
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	add_member_decl
.LBB38_84:                              # %if.end.149
	jmp	.LBB38_85
.LBB38_85:                              # %if.end.150
	jmp	.LBB38_86
.LBB38_86:                              # %if.end.151
	callq	yylex
	movl	%eax, tk
	callq	print_info
	jmp	.LBB38_96
.LBB38_87:                              # %if.else.153
	cmpl	$123, tk
	jne	.LBB38_95
# BB#88:                                # %if.then.156
	cmpl	$4, -28(%rbp)
	jne	.LBB38_94
# BB#89:                                # %land.lhs.true.159
	cmpq	$0, -24(%rbp)
	je	.LBB38_94
# BB#90:                                # %land.lhs.true.161
	cmpq	$0, -8(%rbp)
	je	.LBB38_94
# BB#91:                                # %if.then.163
	callq	matching_regexp
	movq	%rax, -40(%rbp)
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB38_93
# BB#92:                                # %if.then.171
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	add_member_decl
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-28(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	callq	add_member_defn
.LBB38_93:                              # %if.end.172
	jmp	.LBB38_94
.LBB38_94:                              # %if.end.173
	callq	skip_matching
	callq	print_info
.LBB38_95:                              # %if.end.174
	jmp	.LBB38_96
.LBB38_96:                              # %if.end.175
	movq	-24(%rbp), %rdi
	callq	free
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end38:
	.size	member, .Lfunc_end38-member
	.cfi_endproc

	.align	16, 0x90
	.type	operator_name,@function
operator_name:                          # @operator_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	callq	yylex
	movl	%eax, tk
	cmpl	$310, tk                # imm = 0x136
	je	.LBB39_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$296, tk                # imm = 0x128
	jne	.LBB39_17
.LBB39_2:                               # %if.then
	movq	-8(%rbp), %rax
	cmpl	$3, (%rax)
	je	.LBB39_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
.LBB39_4:                               # %if.end
	cmpl	$-1, tk
	jne	.LBB39_6
# BB#5:                                 # %cond.true
	callq	yylex
	movl	%eax, tk
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB39_7
.LBB39_6:                               # %cond.false
	movl	tk, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB39_7:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	callq	token_string
	movq	%rax, -16(%rbp)
	callq	yylex
	movl	%eax, tk
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$10, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	operator_name.id_size, %rax
	jbe	.LBB39_12
# BB#8:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	operator_name.id_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB39_10
# BB#9:                                 # %cond.true.12
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB39_11
.LBB39_10:                              # %cond.false.13
	movq	operator_name.id_size, %rax
	shlq	$1, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB39_11:                              # %cond.end.15
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	operator_name.id, %rdi
	movq	-40(%rbp), %rsi
	callq	xrealloc
	movq	%rax, operator_name.id
	movq	-40(%rbp), %rax
	movq	%rax, operator_name.id_size
.LBB39_12:                              # %if.end.18
	movq	operator_name.id, %rdi
	movq	-16(%rbp), %rsi
	callq	stpcpy
	movq	%rax, -48(%rbp)
	cmpl	$91, tk
	jne	.LBB39_16
# BB#13:                                # %if.then.21
	movq	-48(%rbp), %rdi
	movl	$.L.str.111, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -48(%rbp)
	callq	yylex
	movl	%eax, tk
	cmpl	$93, tk
	jne	.LBB39_15
# BB#14:                                # %if.then.25
	movq	-48(%rbp), %rdi
	movl	$.L.str.112, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	yylex
	movl	%eax, tk
.LBB39_15:                              # %if.end.28
	jmp	.LBB39_16
.LBB39_16:                              # %if.end.29
	jmp	.LBB39_46
.LBB39_17:                              # %if.else
	movq	$0, -56(%rbp)
	movq	$20, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	operator_name.id_size, %rax
	jbe	.LBB39_22
# BB#18:                                # %if.then.31
	movq	-24(%rbp), %rax
	movq	operator_name.id_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB39_20
# BB#19:                                # %cond.true.35
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB39_21
.LBB39_20:                              # %cond.false.36
	movq	operator_name.id_size, %rax
	shlq	$1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB39_21:                              # %cond.end.38
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movq	operator_name.id, %rdi
	movslq	-60(%rbp), %rsi
	callq	xrealloc
	movq	%rax, operator_name.id
	movslq	-60(%rbp), %rax
	movq	%rax, operator_name.id_size
.LBB39_22:                              # %if.end.43
	movq	operator_name.id, %rdi
	movl	$.L.str.71, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -72(%rbp)
.LBB39_23:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$40, tk
	jne	.LBB39_25
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB39_23 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -121(%rbp)         # 1-byte Spill
	jne	.LBB39_28
.LBB39_25:                              # %land.rhs
                                        #   in Loop: Header=BB39_23 Depth=1
	movb	$1, %al
	cmpl	$59, tk
	movb	%al, -122(%rbp)         # 1-byte Spill
	je	.LBB39_27
# BB#26:                                # %lor.rhs
                                        #   in Loop: Header=BB39_23 Depth=1
	cmpl	$0, tk
	sete	%al
	movb	%al, -122(%rbp)         # 1-byte Spill
.LBB39_27:                              # %lor.end
                                        #   in Loop: Header=BB39_23 Depth=1
	movb	-122(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB39_28:                              # %land.end
                                        #   in Loop: Header=BB39_23 Depth=1
	movb	-121(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_29
	jmp	.LBB39_45
.LBB39_29:                              # %while.body
                                        #   in Loop: Header=BB39_23 Depth=1
	cmpl	$-1, tk
	jne	.LBB39_31
# BB#30:                                # %cond.true.54
                                        #   in Loop: Header=BB39_23 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB39_32
.LBB39_31:                              # %cond.false.56
                                        #   in Loop: Header=BB39_23 Depth=1
	movl	tk, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB39_32:                              # %cond.end.57
                                        #   in Loop: Header=BB39_23 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edi
	callq	token_string
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$2, %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	operator_name.id_size, %rax
	jbe	.LBB39_37
# BB#33:                                # %if.then.65
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-72(%rbp), %rax
	movq	operator_name.id, %rcx
	subq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	operator_name.id_size, %rcx
	shlq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB39_35
# BB#34:                                # %cond.true.70
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB39_36
.LBB39_35:                              # %cond.false.71
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	operator_name.id_size, %rax
	shlq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB39_36:                              # %cond.end.73
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	operator_name.id, %rdi
	movq	-88(%rbp), %rsi
	callq	xrealloc
	movq	%rax, operator_name.id
	movq	-88(%rbp), %rax
	movq	%rax, operator_name.id_size
	movq	operator_name.id, %rax
	addq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB39_37:                              # %if.end.76
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	je	.LBB39_40
# BB#38:                                # %land.lhs.true.80
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB39_40
# BB#39:                                # %if.then.84
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$32, (%rax)
.LBB39_40:                              # %if.end.85
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	stpcpy
	movq	%rax, -72(%rbp)
	callq	yylex
	movl	%eax, tk
	movq	-16(%rbp), %rsi
	movzbl	(%rsi), %eax
	movslq	%eax, %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movzwl	(%rax,%rsi,2), %ecx
	andl	$1024, %ecx             # imm = 0x400
	cmpl	$0, %ecx
	jne	.LBB39_44
# BB#41:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	je	.LBB39_44
# BB#42:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$91, %ecx
	je	.LBB39_44
# BB#43:                                # %if.then.100
	jmp	.LBB39_45
.LBB39_44:                              # %if.end.101
                                        #   in Loop: Header=BB39_23 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB39_23
.LBB39_45:                              # %while.end
	jmp	.LBB39_46
.LBB39_46:                              # %if.end.102
	movq	operator_name.id, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	operator_name, .Lfunc_end39-operator_name
	.cfi_endproc

	.align	16, 0x90
	.type	parm_list,@function
parm_list:                              # @parm_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB40_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_13 Depth 2
	movb	$1, %al
	cmpl	$0, tk
	movb	%al, -29(%rbp)          # 1-byte Spill
	je	.LBB40_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$41, tk
	sete	%al
	movb	%al, -29(%rbp)          # 1-byte Spill
.LBB40_3:                               # %lor.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movb	-29(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB40_4
	jmp	.LBB40_33
.LBB40_4:                               # %while.body
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$-1, tk
	jne	.LBB40_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB40_7
.LBB40_6:                               # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	tk, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB40_7:                               # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	subl	$38, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB40_27
	jmp	.LBB40_48
.LBB40_48:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB40_8
	jmp	.LBB40_49
.LBB40_49:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB40_27
	jmp	.LBB40_50
.LBB40_50:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB40_9
	jmp	.LBB40_51
.LBB40_51:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB40_27
	jmp	.LBB40_52
.LBB40_52:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$93, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB40_27
	jmp	.LBB40_53
.LBB40_53:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$260, %eax              # imm = 0x104
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_54
.LBB40_54:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB40_10
	jmp	.LBB40_55
.LBB40_55:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	addl	$-291, %eax             # imm = 0xFFFFFFFFFFFFFEDD
	subl	$3, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB40_23
	jmp	.LBB40_56
.LBB40_56:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$298, %eax              # imm = 0x12A
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_57
.LBB40_57:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$300, %eax              # imm = 0x12C
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_58
.LBB40_58:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$302, %eax              # imm = 0x12E
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_59
.LBB40_59:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	addl	$-308, %eax             # imm = 0xFFFFFFFFFFFFFECC
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jb	.LBB40_23
	jmp	.LBB40_60
.LBB40_60:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	addl	$-317, %eax             # imm = 0xFFFFFFFFFFFFFEC3
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jb	.LBB40_23
	jmp	.LBB40_61
.LBB40_61:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$321, %eax              # imm = 0x141
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_62
.LBB40_62:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	addl	$-328, %eax             # imm = 0xFFFFFFFFFFFFFEB8
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB40_23
	jmp	.LBB40_63
.LBB40_63:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$331, %eax              # imm = 0x14B
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB40_20
	jmp	.LBB40_64
.LBB40_64:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$332, %eax              # imm = 0x14C
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_65
.LBB40_65:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$335, %eax              # imm = 0x14F
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_66
.LBB40_66:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$348, %eax              # imm = 0x15C
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB40_23
	jmp	.LBB40_31
.LBB40_8:                               # %sw.bb
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	skip_matching
	jmp	.LBB40_32
.LBB40_9:                               # %sw.bb.3
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	$0, -16(%rbp)
	jmp	.LBB40_32
.LBB40_10:                              # %sw.bb.5
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB40_18
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	leaq	-24(%rbp), %rdi
	movl	$0, -28(%rbp)
	callq	parse_qualified_param_ident_or_type
	cmpq	$0, -24(%rbp)
	je	.LBB40_17
# BB#12:                                # %if.then.7
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_13
.LBB40_13:                              # %for.cond
                                        #   Parent Loop BB40_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB40_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB40_13 Depth=2
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB40_13 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB40_13
.LBB40_16:                              # %for.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-12(%rbp), %eax
	shll	$1, %eax
	xorl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -16(%rbp)
.LBB40_17:                              # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_19
.LBB40_18:                              # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	yylex
	movl	%eax, tk
.LBB40_19:                              # %if.end.12
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_32
.LBB40_20:                              # %sw.bb.13
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$1, -16(%rbp)
	callq	yylex
	movl	%eax, tk
	cmpl	$41, tk
	je	.LBB40_22
# BB#21:                                # %if.then.17
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-12(%rbp), %eax
	shll	$1, %eax
	xorl	$331, %eax              # imm = 0x14B
	movl	%eax, -12(%rbp)
.LBB40_22:                              # %if.end.20
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_32
.LBB40_23:                              # %sw.bb.21
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	$1, -16(%rbp)
	movl	-12(%rbp), %eax
	shll	$1, %eax
	cmpl	$-1, tk
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB40_25
# BB#24:                                # %cond.true.25
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB40_26
.LBB40_25:                              # %cond.false.27
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	tk, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB40_26:                              # %cond.end.28
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	xorl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB40_32
.LBB40_27:                              # %sw.bb.32
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-12(%rbp), %eax
	shll	$1, %eax
	cmpl	$-1, tk
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB40_29
# BB#28:                                # %cond.true.36
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB40_30
.LBB40_29:                              # %cond.false.38
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	tk, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB40_30:                              # %cond.end.39
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	xorl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB40_32
.LBB40_31:                              # %sw.default
                                        #   in Loop: Header=BB40_1 Depth=1
	callq	yylex
	movl	%eax, tk
.LBB40_32:                              # %sw.epilog
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_1
.LBB40_33:                              # %while.end
	cmpl	$41, tk
	jne	.LBB40_47
# BB#34:                                # %if.then.46
	callq	yylex
	movl	%eax, tk
	cmpl	$293, tk                # imm = 0x125
	jne	.LBB40_36
# BB#35:                                # %if.then.50
	movl	$4, %esi
	movl	-12(%rbp), %eax
	shll	$1, %eax
	xorl	$293, %eax              # imm = 0x125
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	set_flag
	callq	yylex
	movl	%eax, tk
.LBB40_36:                              # %if.end.54
	cmpl	$325, tk                # imm = 0x145
	jne	.LBB40_41
# BB#37:                                # %if.then.57
	callq	yylex
	movl	%eax, tk
	cmpl	$40, tk
	jne	.LBB40_39
# BB#38:                                # %if.then.61
	callq	skip_matching
	jmp	.LBB40_40
.LBB40_39:                              # %if.else.62
	jmp	.LBB40_40
.LBB40_40:                              # %if.end.63
	movl	$128, %esi
	movq	-8(%rbp), %rdi
	callq	set_flag
.LBB40_41:                              # %if.end.64
	cmpl	$61, tk
	jne	.LBB40_46
# BB#42:                                # %if.then.67
	callq	yylex
	movl	%eax, tk
	cmpl	$258, tk                # imm = 0x102
	jne	.LBB40_45
# BB#43:                                # %land.lhs.true
	cmpl	$0, yyival
	jne	.LBB40_45
# BB#44:                                # %if.then.73
	callq	yylex
	movl	$8, %esi
	movl	%eax, tk
	movq	-8(%rbp), %rdi
	callq	set_flag
.LBB40_45:                              # %if.end.75
	jmp	.LBB40_46
.LBB40_46:                              # %if.end.76
	jmp	.LBB40_47
.LBB40_47:                              # %if.end.77
	movl	-12(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	parm_list, .Lfunc_end40-parm_list
	.cfi_endproc

	.align	16, 0x90
	.type	add_member_decl,@function
add_member_decl:                        # @add_member_decl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r11d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	find_member
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	add_member
	movq	%rax, -56(%rbp)
.LBB41_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB41_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	movq	filename, %rsi
	callq	filename_eq
	testb	$1, %al
	jne	.LBB41_5
.LBB41_4:                               # %if.then.4
	movq	filename, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB41_5:                               # %if.end.6
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 56(%rax)
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	subl	$312, %esi              # imm = 0x138
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%esi, -64(%rbp)         # 4-byte Spill
	je	.LBB41_6
	jmp	.LBB41_10
.LBB41_10:                              # %if.end.6
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$313, %eax              # imm = 0x139
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB41_7
	jmp	.LBB41_11
.LBB41_11:                              # %if.end.6
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$314, %eax              # imm = 0x13A
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB41_8
	jmp	.LBB41_9
.LBB41_6:                               # %sw.bb
	movq	-56(%rbp), %rax
	movl	$2, 28(%rax)
	jmp	.LBB41_9
.LBB41_7:                               # %sw.bb.11
	movq	-56(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.LBB41_9
.LBB41_8:                               # %sw.bb.13
	movq	-56(%rbp), %rax
	movl	$0, 28(%rax)
.LBB41_9:                               # %sw.epilog
	movl	$2, info_where
	movq	-8(%rbp), %rax
	movq	%rax, info_cls
	movq	-56(%rbp), %rax
	movq	%rax, info_member
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	add_member_decl, .Lfunc_end41-add_member_decl
	.cfi_endproc

	.align	16, 0x90
	.type	add_member_defn,@function
add_member_defn:                        # @add_member_defn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movl	%eax, -44(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB42_6
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %r8d
	callq	find_member
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB42_5
# BB#2:                                 # %if.then.2
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-32(%rbp), %r8d
	callq	find_member
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB42_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	add_member
	movq	%rax, -56(%rbp)
.LBB42_4:                               # %if.end
	jmp	.LBB42_5
.LBB42_5:                               # %if.end.7
	jmp	.LBB42_9
.LBB42_6:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	find_member
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB42_8
# BB#7:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	add_member
	movq	%rax, -56(%rbp)
.LBB42_8:                               # %if.end.12
	jmp	.LBB42_9
.LBB42_9:                               # %if.end.13
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB42_11
# BB#10:                                # %if.then.14
	movq	filename, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
.LBB42_11:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	filename, %rsi
	callq	filename_eq
	testb	$1, %al
	jne	.LBB42_13
# BB#12:                                # %if.then.19
	movq	filename, %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB42_13:                              # %if.end.20
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 80(%rax)
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	orl	32(%rax), %edx
	movl	%edx, 32(%rax)
	movl	$1, info_where
	movq	-8(%rbp), %rax
	movq	%rax, info_cls
	movq	-56(%rbp), %rax
	movq	%rax, info_member
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	add_member_defn, .Lfunc_end42-add_member_defn
	.cfi_endproc

	.align	16, 0x90
	.type	print_info,@function
print_info:                             # @print_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, info_position
	jl	.LBB43_5
# BB#1:                                 # %land.lhs.true
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movslq	info_position, %rcx
	cmpq	%rcx, %rax
	jg	.LBB43_5
# BB#2:                                 # %if.then
	cmpq	$0, info_cls
	je	.LBB43_4
# BB#3:                                 # %if.then.3
	movq	info_cls, %rax
	addq	$120, %rax
	movq	info_cls, %rdi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	sym_scope
	movabsq	$.L.str.148, %rdi
	movq	info_member, %rcx
	addq	$84, %rcx
	movl	info_where, %r8d
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB43_4:                               # %if.end
	jmp	.LBB43_5
.LBB43_5:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	print_info, .Lfunc_end43-print_info
	.cfi_endproc

	.align	16, 0x90
	.type	token_string,@function
token_string:                           # @token_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$264, %rsp              # imm = 0x108
	movl	%edi, -12(%rbp)
	movl	%edi, %eax
	testl	%edi, %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB44_94
	jmp	.LBB44_99
.LBB44_99:                              # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$256, %eax              # imm = 0x100
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB44_1
	jmp	.LBB44_100
.LBB44_100:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$257, %eax              # imm = 0x101
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB44_2
	jmp	.LBB44_101
.LBB44_101:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$258, %eax              # imm = 0x102
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB44_3
	jmp	.LBB44_102
.LBB44_102:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$259, %eax              # imm = 0x103
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB44_4
	jmp	.LBB44_103
.LBB44_103:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$260, %eax              # imm = 0x104
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB44_5
	jmp	.LBB44_104
.LBB44_104:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$261, %eax              # imm = 0x105
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB44_6
	jmp	.LBB44_105
.LBB44_105:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$262, %eax              # imm = 0x106
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB44_7
	jmp	.LBB44_106
.LBB44_106:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$263, %eax              # imm = 0x107
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB44_8
	jmp	.LBB44_107
.LBB44_107:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$264, %eax              # imm = 0x108
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB44_9
	jmp	.LBB44_108
.LBB44_108:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB44_10
	jmp	.LBB44_109
.LBB44_109:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB44_11
	jmp	.LBB44_110
.LBB44_110:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$267, %eax              # imm = 0x10B
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB44_12
	jmp	.LBB44_111
.LBB44_111:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$268, %eax              # imm = 0x10C
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB44_13
	jmp	.LBB44_112
.LBB44_112:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$269, %eax              # imm = 0x10D
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB44_14
	jmp	.LBB44_113
.LBB44_113:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$270, %eax              # imm = 0x10E
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB44_15
	jmp	.LBB44_114
.LBB44_114:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$271, %eax              # imm = 0x10F
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB44_16
	jmp	.LBB44_115
.LBB44_115:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$272, %eax              # imm = 0x110
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB44_17
	jmp	.LBB44_116
.LBB44_116:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$273, %eax              # imm = 0x111
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB44_18
	jmp	.LBB44_117
.LBB44_117:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$274, %eax              # imm = 0x112
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB44_19
	jmp	.LBB44_118
.LBB44_118:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$275, %eax              # imm = 0x113
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB44_20
	jmp	.LBB44_119
.LBB44_119:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$276, %eax              # imm = 0x114
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB44_21
	jmp	.LBB44_120
.LBB44_120:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$277, %eax              # imm = 0x115
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB44_22
	jmp	.LBB44_121
.LBB44_121:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$278, %eax              # imm = 0x116
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB44_23
	jmp	.LBB44_122
.LBB44_122:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$279, %eax              # imm = 0x117
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB44_24
	jmp	.LBB44_123
.LBB44_123:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$280, %eax              # imm = 0x118
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB44_25
	jmp	.LBB44_124
.LBB44_124:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$281, %eax              # imm = 0x119
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB44_26
	jmp	.LBB44_125
.LBB44_125:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$282, %eax              # imm = 0x11A
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB44_27
	jmp	.LBB44_126
.LBB44_126:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$283, %eax              # imm = 0x11B
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB44_28
	jmp	.LBB44_127
.LBB44_127:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$284, %eax              # imm = 0x11C
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB44_29
	jmp	.LBB44_128
.LBB44_128:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$285, %eax              # imm = 0x11D
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB44_30
	jmp	.LBB44_129
.LBB44_129:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$286, %eax              # imm = 0x11E
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB44_31
	jmp	.LBB44_130
.LBB44_130:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$287, %eax              # imm = 0x11F
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB44_32
	jmp	.LBB44_131
.LBB44_131:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$288, %eax              # imm = 0x120
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB44_33
	jmp	.LBB44_132
.LBB44_132:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$289, %eax              # imm = 0x121
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB44_34
	jmp	.LBB44_133
.LBB44_133:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$290, %eax              # imm = 0x122
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB44_35
	jmp	.LBB44_134
.LBB44_134:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$291, %eax              # imm = 0x123
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB44_36
	jmp	.LBB44_135
.LBB44_135:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$292, %eax              # imm = 0x124
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB44_37
	jmp	.LBB44_136
.LBB44_136:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$293, %eax              # imm = 0x125
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB44_38
	jmp	.LBB44_137
.LBB44_137:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$294, %eax              # imm = 0x126
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB44_39
	jmp	.LBB44_138
.LBB44_138:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$295, %eax              # imm = 0x127
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB44_40
	jmp	.LBB44_139
.LBB44_139:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$296, %eax              # imm = 0x128
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB44_41
	jmp	.LBB44_140
.LBB44_140:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$297, %eax              # imm = 0x129
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB44_42
	jmp	.LBB44_141
.LBB44_141:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$298, %eax              # imm = 0x12A
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB44_43
	jmp	.LBB44_142
.LBB44_142:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$299, %eax              # imm = 0x12B
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB44_44
	jmp	.LBB44_143
.LBB44_143:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$300, %eax              # imm = 0x12C
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB44_45
	jmp	.LBB44_144
.LBB44_144:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$301, %eax              # imm = 0x12D
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB44_46
	jmp	.LBB44_145
.LBB44_145:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$302, %eax              # imm = 0x12E
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB44_47
	jmp	.LBB44_146
.LBB44_146:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$303, %eax              # imm = 0x12F
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB44_48
	jmp	.LBB44_147
.LBB44_147:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$304, %eax              # imm = 0x130
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB44_49
	jmp	.LBB44_148
.LBB44_148:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$305, %eax              # imm = 0x131
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB44_50
	jmp	.LBB44_149
.LBB44_149:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$306, %eax              # imm = 0x132
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB44_51
	jmp	.LBB44_150
.LBB44_150:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$307, %eax              # imm = 0x133
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB44_52
	jmp	.LBB44_151
.LBB44_151:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$308, %eax              # imm = 0x134
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB44_53
	jmp	.LBB44_152
.LBB44_152:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$309, %eax              # imm = 0x135
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB44_54
	jmp	.LBB44_153
.LBB44_153:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$310, %eax              # imm = 0x136
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB44_55
	jmp	.LBB44_154
.LBB44_154:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$311, %eax              # imm = 0x137
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB44_56
	jmp	.LBB44_155
.LBB44_155:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$312, %eax              # imm = 0x138
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB44_57
	jmp	.LBB44_156
.LBB44_156:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$313, %eax              # imm = 0x139
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB44_58
	jmp	.LBB44_157
.LBB44_157:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$314, %eax              # imm = 0x13A
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB44_59
	jmp	.LBB44_158
.LBB44_158:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$315, %eax              # imm = 0x13B
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB44_60
	jmp	.LBB44_159
.LBB44_159:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$316, %eax              # imm = 0x13C
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB44_61
	jmp	.LBB44_160
.LBB44_160:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$317, %eax              # imm = 0x13D
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB44_62
	jmp	.LBB44_161
.LBB44_161:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$318, %eax              # imm = 0x13E
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB44_63
	jmp	.LBB44_162
.LBB44_162:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$319, %eax              # imm = 0x13F
	movl	%eax, -272(%rbp)        # 4-byte Spill
	je	.LBB44_64
	jmp	.LBB44_163
.LBB44_163:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$320, %eax              # imm = 0x140
	movl	%eax, -276(%rbp)        # 4-byte Spill
	je	.LBB44_65
	jmp	.LBB44_164
.LBB44_164:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$321, %eax              # imm = 0x141
	movl	%eax, -280(%rbp)        # 4-byte Spill
	je	.LBB44_66
	jmp	.LBB44_165
.LBB44_165:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$322, %eax              # imm = 0x142
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB44_67
	jmp	.LBB44_166
.LBB44_166:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$323, %eax              # imm = 0x143
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB44_68
	jmp	.LBB44_167
.LBB44_167:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$324, %eax              # imm = 0x144
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB44_69
	jmp	.LBB44_168
.LBB44_168:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$325, %eax              # imm = 0x145
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB44_70
	jmp	.LBB44_169
.LBB44_169:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$326, %eax              # imm = 0x146
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB44_71
	jmp	.LBB44_170
.LBB44_170:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$327, %eax              # imm = 0x147
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB44_72
	jmp	.LBB44_171
.LBB44_171:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$328, %eax              # imm = 0x148
	movl	%eax, -308(%rbp)        # 4-byte Spill
	je	.LBB44_73
	jmp	.LBB44_172
.LBB44_172:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$329, %eax              # imm = 0x149
	movl	%eax, -312(%rbp)        # 4-byte Spill
	je	.LBB44_74
	jmp	.LBB44_173
.LBB44_173:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$330, %eax              # imm = 0x14A
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB44_75
	jmp	.LBB44_174
.LBB44_174:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$331, %eax              # imm = 0x14B
	movl	%eax, -320(%rbp)        # 4-byte Spill
	je	.LBB44_76
	jmp	.LBB44_175
.LBB44_175:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$332, %eax              # imm = 0x14C
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB44_77
	jmp	.LBB44_176
.LBB44_176:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$333, %eax              # imm = 0x14D
	movl	%eax, -328(%rbp)        # 4-byte Spill
	je	.LBB44_78
	jmp	.LBB44_177
.LBB44_177:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$334, %eax              # imm = 0x14E
	movl	%eax, -332(%rbp)        # 4-byte Spill
	je	.LBB44_79
	jmp	.LBB44_178
.LBB44_178:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$335, %eax              # imm = 0x14F
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB44_80
	jmp	.LBB44_179
.LBB44_179:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$336, %eax              # imm = 0x150
	movl	%eax, -340(%rbp)        # 4-byte Spill
	je	.LBB44_81
	jmp	.LBB44_180
.LBB44_180:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$337, %eax              # imm = 0x151
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB44_82
	jmp	.LBB44_181
.LBB44_181:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$338, %eax              # imm = 0x152
	movl	%eax, -348(%rbp)        # 4-byte Spill
	je	.LBB44_83
	jmp	.LBB44_182
.LBB44_182:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$339, %eax              # imm = 0x153
	movl	%eax, -352(%rbp)        # 4-byte Spill
	je	.LBB44_84
	jmp	.LBB44_183
.LBB44_183:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$340, %eax              # imm = 0x154
	movl	%eax, -356(%rbp)        # 4-byte Spill
	je	.LBB44_85
	jmp	.LBB44_184
.LBB44_184:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$341, %eax              # imm = 0x155
	movl	%eax, -360(%rbp)        # 4-byte Spill
	je	.LBB44_86
	jmp	.LBB44_185
.LBB44_185:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$342, %eax              # imm = 0x156
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB44_87
	jmp	.LBB44_186
.LBB44_186:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$343, %eax              # imm = 0x157
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB44_88
	jmp	.LBB44_187
.LBB44_187:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$344, %eax              # imm = 0x158
	movl	%eax, -372(%rbp)        # 4-byte Spill
	je	.LBB44_89
	jmp	.LBB44_188
.LBB44_188:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$345, %eax              # imm = 0x159
	movl	%eax, -376(%rbp)        # 4-byte Spill
	je	.LBB44_90
	jmp	.LBB44_189
.LBB44_189:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$346, %eax              # imm = 0x15A
	movl	%eax, -380(%rbp)        # 4-byte Spill
	je	.LBB44_91
	jmp	.LBB44_190
.LBB44_190:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$347, %eax              # imm = 0x15B
	movl	%eax, -384(%rbp)        # 4-byte Spill
	je	.LBB44_92
	jmp	.LBB44_191
.LBB44_191:                             # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$348, %eax              # imm = 0x15C
	movl	%eax, -388(%rbp)        # 4-byte Spill
	je	.LBB44_93
	jmp	.LBB44_95
.LBB44_1:                               # %sw.bb
	movabsq	$.L.str.113, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_2:                               # %sw.bb.1
	movabsq	$.L.str.114, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_3:                               # %sw.bb.2
	movabsq	$.L.str.115, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_4:                               # %sw.bb.3
	movabsq	$.L.str.116, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_5:                               # %sw.bb.4
	movabsq	$.L.str.117, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_6:                               # %sw.bb.5
	movabsq	$.L.str.118, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_7:                               # %sw.bb.6
	movabsq	$.L.str.119, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_8:                               # %sw.bb.7
	movabsq	$.L.str.120, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_9:                               # %sw.bb.8
	movabsq	$.L.str.121, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_10:                              # %sw.bb.9
	movabsq	$.L.str.122, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_11:                              # %sw.bb.10
	movabsq	$.L.str.123, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_12:                              # %sw.bb.11
	movabsq	$.L.str.124, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_13:                              # %sw.bb.12
	movabsq	$.L.str.125, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_14:                              # %sw.bb.13
	movabsq	$.L.str.126, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_15:                              # %sw.bb.14
	movabsq	$.L.str.127, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_16:                              # %sw.bb.15
	movabsq	$.L.str.128, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_17:                              # %sw.bb.16
	movabsq	$.L.str.129, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_18:                              # %sw.bb.17
	movabsq	$.L.str.130, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_19:                              # %sw.bb.18
	movabsq	$.L.str.131, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_20:                              # %sw.bb.19
	movabsq	$.L.str.132, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_21:                              # %sw.bb.20
	movabsq	$.L.str.133, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_22:                              # %sw.bb.21
	movabsq	$.L.str.134, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_23:                              # %sw.bb.22
	movabsq	$.L.str.135, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_24:                              # %sw.bb.23
	movabsq	$.L.str.136, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_25:                              # %sw.bb.24
	movabsq	$.L.str.137, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_26:                              # %sw.bb.25
	movabsq	$.L.str.138, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_27:                              # %sw.bb.26
	movabsq	$.L.str.139, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_28:                              # %sw.bb.27
	movabsq	$.L.str.140, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_29:                              # %sw.bb.28
	movabsq	$.L.str.141, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_30:                              # %sw.bb.29
	movabsq	$.L.str.142, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_31:                              # %sw.bb.30
	movabsq	$.L.str.34, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_32:                              # %sw.bb.31
	movabsq	$.L.str.35, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_33:                              # %sw.bb.32
	movabsq	$.L.str.39, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_34:                              # %sw.bb.33
	movabsq	$.L.str.40, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_35:                              # %sw.bb.34
	movabsq	$.L.str.41, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_36:                              # %sw.bb.35
	movabsq	$.L.str.42, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_37:                              # %sw.bb.36
	movabsq	$.L.str.43, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_38:                              # %sw.bb.37
	movabsq	$.L.str.45, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_39:                              # %sw.bb.38
	movabsq	$.L.str.47, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_40:                              # %sw.bb.39
	movabsq	$.L.str.48, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_41:                              # %sw.bb.40
	movabsq	$.L.str.49, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_42:                              # %sw.bb.41
	movabsq	$.L.str.50, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_43:                              # %sw.bb.42
	movabsq	$.L.str.51, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_44:                              # %sw.bb.43
	movabsq	$.L.str.53, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_45:                              # %sw.bb.44
	movabsq	$.L.str.54, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_46:                              # %sw.bb.45
	movabsq	$.L.str.56, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_47:                              # %sw.bb.46
	movabsq	$.L.str.58, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_48:                              # %sw.bb.47
	movabsq	$.L.str.59, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_49:                              # %sw.bb.48
	movabsq	$.L.str.60, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_50:                              # %sw.bb.49
	movabsq	$.L.str.61, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_51:                              # %sw.bb.50
	movabsq	$.L.str.62, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_52:                              # %sw.bb.51
	movabsq	$.L.str.63, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_53:                              # %sw.bb.52
	movabsq	$.L.str.64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_54:                              # %sw.bb.53
	movabsq	$.L.str.65, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_55:                              # %sw.bb.54
	movabsq	$.L.str.68, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_56:                              # %sw.bb.55
	movabsq	$.L.str.71, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_57:                              # %sw.bb.56
	movabsq	$.L.str.74, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_58:                              # %sw.bb.57
	movabsq	$.L.str.75, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_59:                              # %sw.bb.58
	movabsq	$.L.str.76, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_60:                              # %sw.bb.59
	movabsq	$.L.str.77, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_61:                              # %sw.bb.60
	movabsq	$.L.str.79, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_62:                              # %sw.bb.61
	movabsq	$.L.str.80, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_63:                              # %sw.bb.62
	movabsq	$.L.str.81, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_64:                              # %sw.bb.63
	movabsq	$.L.str.82, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_65:                              # %sw.bb.64
	movabsq	$.L.str.83, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_66:                              # %sw.bb.65
	movabsq	$.L.str.85, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_67:                              # %sw.bb.66
	movabsq	$.L.str.86, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_68:                              # %sw.bb.67
	movabsq	$.L.str.87, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_69:                              # %sw.bb.68
	movabsq	$.L.str.88, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_70:                              # %sw.bb.69
	movabsq	$.L.str.89, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_71:                              # %sw.bb.70
	movabsq	$.L.str.91, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_72:                              # %sw.bb.71
	movabsq	$.L.str.92, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_73:                              # %sw.bb.72
	movabsq	$.L.str.95, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_74:                              # %sw.bb.73
	movabsq	$.L.str.96, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_75:                              # %sw.bb.74
	movabsq	$.L.str.98, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_76:                              # %sw.bb.75
	movabsq	$.L.str.99, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_77:                              # %sw.bb.76
	movabsq	$.L.str.100, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_78:                              # %sw.bb.77
	movabsq	$.L.str.102, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_79:                              # %sw.bb.78
	movabsq	$.L.str.66, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_80:                              # %sw.bb.79
	movabsq	$.L.str.38, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_81:                              # %sw.bb.80
	movabsq	$.L.str.90, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_82:                              # %sw.bb.81
	movabsq	$.L.str.57, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_83:                              # %sw.bb.82
	movabsq	$.L.str.143, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_84:                              # %sw.bb.83
	movabsq	$.L.str.67, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_85:                              # %sw.bb.84
	movabsq	$.L.str.55, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_86:                              # %sw.bb.85
	movabsq	$.L.str.94, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_87:                              # %sw.bb.86
	movabsq	$.L.str.46, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_88:                              # %sw.bb.87
	movabsq	$.L.str.52, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_89:                              # %sw.bb.88
	movabsq	$.L.str.78, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_90:                              # %sw.bb.89
	movabsq	$.L.str.84, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_91:                              # %sw.bb.90
	movabsq	$.L.str.93, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_92:                              # %sw.bb.91
	movabsq	$.L.str.97, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_93:                              # %sw.bb.92
	movabsq	$.L.str.101, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_94:                              # %sw.bb.93
	movabsq	$.L.str.144, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_95:                              # %sw.default
	cmpl	$255, -12(%rbp)
	jge	.LBB44_97
# BB#96:                                # %if.then
	movabsq	$token_string.b, %rax
	movl	-12(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, token_string.b
	movb	$0, token_string.b+1
	movq	%rax, -8(%rbp)
	jmp	.LBB44_98
.LBB44_97:                              # %if.else
	movabsq	$.L.str.145, %rax
	movq	%rax, -8(%rbp)
.LBB44_98:                              # %return
	movq	-8(%rbp), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbp
	retq
.Lfunc_end44:
	.size	token_string, .Lfunc_end44-token_string
	.cfi_endproc

	.align	16, 0x90
	.type	parse_qualified_param_ident_or_type,@function
parse_qualified_param_ident_or_type:    # @parse_qualified_param_ident_or_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB45_2
# BB#1:                                 # %cond.true
	jmp	.LBB45_3
.LBB45_2:                               # %cond.false
	movabsq	$.L.str.146, %rdi
	movabsq	$.L.str.110, %rsi
	movl	$2960, %edx             # imm = 0xB90
	movabsq	$.L__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type, %rcx
	callq	__assert_fail
.LBB45_3:                               # %cond.end
	jmp	.LBB45_4
.LBB45_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	yytext, %rdi
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	parse_qualified_param_ident_or_type.id_size, %ecx
	jle	.LBB45_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	parse_qualified_param_ident_or_type.id, %rdi
	movslq	-20(%rbp), %rsi
	callq	xrealloc
	movq	%rax, parse_qualified_param_ident_or_type.id
	movl	-20(%rbp), %ecx
	movl	%ecx, parse_qualified_param_ident_or_type.id_size
.LBB45_6:                               # %if.end
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	parse_qualified_param_ident_or_type.id, %rdi
	movq	yytext, %rsi
	callq	strcpy
	movq	parse_qualified_param_ident_or_type.id, %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	yylex
	movl	%eax, tk
	cmpl	$60, tk
	jne	.LBB45_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB45_4 Depth=1
	callq	skip_matching
	jmp	.LBB45_9
.LBB45_8:                               # %if.else
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_9
.LBB45_9:                               # %if.end.10
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$279, tk                # imm = 0x117
	jne	.LBB45_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB45_4 Depth=1
	movq	parse_qualified_param_ident_or_type.id, %rdi
	movq	-16(%rbp), %rsi
	callq	add_sym
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB45_12
.LBB45_11:                              # %if.else.16
	jmp	.LBB45_14
.LBB45_12:                              # %if.end.17
                                        #   in Loop: Header=BB45_4 Depth=1
	jmp	.LBB45_13
.LBB45_13:                              # %do.cond
                                        #   in Loop: Header=BB45_4 Depth=1
	cmpl	$264, tk                # imm = 0x108
	je	.LBB45_4
.LBB45_14:                              # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	parse_qualified_param_ident_or_type, .Lfunc_end45-parse_qualified_param_ident_or_type
	.cfi_endproc

	.align	16, 0x90
	.type	find_member,@function
find_member:                            # @find_member
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -52(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	je	.LBB46_3
	jmp	.LBB46_24
.LBB46_24:                              # %entry
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB46_1
	jmp	.LBB46_25
.LBB46_25:                              # %entry
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB46_2
	jmp	.LBB46_7
.LBB46_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB46_11
.LBB46_2:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB46_11
.LBB46_3:                               # %sw.bb.2
	cmpl	$0, -20(%rbp)
	je	.LBB46_5
# BB#4:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB46_6
.LBB46_5:                               # %cond.false
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB46_6:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB46_11
.LBB46_7:                               # %sw.default
	cmpl	$0, -20(%rbp)
	je	.LBB46_9
# BB#8:                                 # %cond.true.4
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB46_10
.LBB46_9:                               # %cond.false.5
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB46_10:                              # %cond.end.6
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB46_11:                              # %sw.epilog
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB46_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB46_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB46_12 Depth=1
	movl	-52(%rbp), %eax
	shll	$1, %eax
	movq	-64(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -52(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB46_12 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB46_12
.LBB46_15:                              # %for.end
	movl	$1001, %eax             # imm = 0x3E9
	movl	-52(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%edx, -68(%rbp)
	movslq	-68(%rbp), %rsi
	movq	member_table(,%rsi,8), %rsi
	movq	%rsi, -48(%rbp)
.LBB46_16:                              # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB46_23
# BB#17:                                # %for.body.11
                                        #   in Loop: Header=BB46_16 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB46_21
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB46_16 Depth=1
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB46_21
# BB#19:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB46_16 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB46_20
	jmp	.LBB46_21
.LBB46_20:                              # %if.then
	jmp	.LBB46_23
.LBB46_21:                              # %if.end
                                        #   in Loop: Header=BB46_16 Depth=1
	jmp	.LBB46_22
.LBB46_22:                              # %for.inc.19
                                        #   in Loop: Header=BB46_16 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB46_16
.LBB46_23:                              # %for.end.20
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	find_member, .Lfunc_end46-find_member
	.cfi_endproc

	.align	16, 0x90
	.type	add_member,@function
add_member:                             # @add_member
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$84, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movl	$0, -68(%rbp)
	movq	-40(%rbp), %rax
	addq	$84, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rsi
	movl	%ecx, 24(%rsi)
	movq	-40(%rbp), %rsi
	movl	$0, 28(%rsi)
	movq	-40(%rbp), %rsi
	movl	$0, 32(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 40(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 48(%rsi)
	movq	-40(%rbp), %rsi
	movl	$0, 56(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 64(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 72(%rsi)
	movq	-40(%rbp), %rsi
	movl	$0, 80(%rsi)
	cmpq	$0, -8(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB47_2
# BB#1:                                 # %cond.true
	jmp	.LBB47_3
.LBB47_2:                               # %cond.false
	movabsq	$.L.str.147, %rdi
	movabsq	$.L.str.110, %rsi
	movl	$891, %edx              # imm = 0x37B
	movabsq	$.L__PRETTY_FUNCTION__.add_member, %rcx
	callq	__assert_fail
.LBB47_3:                               # %cond.end
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB47_6
	jmp	.LBB47_28
.LBB47_28:                              # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB47_4
	jmp	.LBB47_29
.LBB47_29:                              # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB47_5
	jmp	.LBB47_10
.LBB47_4:                               # %sw.bb
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_14
.LBB47_5:                               # %sw.bb.5
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB47_14
.LBB47_6:                               # %sw.bb.6
	cmpl	$0, -20(%rbp)
	je	.LBB47_8
# BB#7:                                 # %cond.true.7
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB47_9
.LBB47_8:                               # %cond.false.8
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB47_9:                               # %cond.end.9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB47_14
.LBB47_10:                              # %sw.default
	cmpl	$0, -20(%rbp)
	je	.LBB47_12
# BB#11:                                # %cond.true.11
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB47_13
.LBB47_12:                              # %cond.false.12
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB47_13:                              # %cond.end.13
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB47_14:                              # %sw.epilog
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB47_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB47_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB47_15 Depth=1
	movl	-68(%rbp), %eax
	shll	$1, %eax
	movq	-80(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -68(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB47_15 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB47_15
.LBB47_18:                              # %for.end
	movl	$1001, %eax             # imm = 0x3E9
	movl	-68(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%edx, -72(%rbp)
	movslq	-72(%rbp), %rsi
	movq	member_table(,%rsi,8), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-40(%rbp), %rsi
	movslq	-72(%rbp), %rdi
	movq	%rsi, member_table(,%rdi,8)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	$0, -64(%rbp)
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)
.LBB47_19:                              # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -56(%rbp)
	movb	%cl, -125(%rbp)         # 1-byte Spill
	je	.LBB47_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB47_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	setg	%cl
	movb	%cl, -125(%rbp)         # 1-byte Spill
.LBB47_21:                              # %land.end
                                        #   in Loop: Header=BB47_19 Depth=1
	movb	-125(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_22
	jmp	.LBB47_24
.LBB47_22:                              # %for.body.26
                                        #   in Loop: Header=BB47_19 Depth=1
	jmp	.LBB47_23
.LBB47_23:                              # %for.inc.27
                                        #   in Loop: Header=BB47_19 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB47_19
.LBB47_24:                              # %for.end.28
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -64(%rbp)
	je	.LBB47_26
# BB#25:                                # %if.then
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB47_27
.LBB47_26:                              # %if.else
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB47_27:                              # %if.end
	movq	-40(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	add_member, .Lfunc_end47-add_member
	.cfi_endproc

	.align	16, 0x90
	.type	filename_eq,@function
filename_eq:                            # @filename_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	streq
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	filename_eq, .Lfunc_end48-filename_eq
	.cfi_endproc

	.align	16, 0x90
	.type	sym_scope,@function
sym_scope:                              # @sym_scope
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, scope_buffer
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movl	$1024, scope_buffer_size # imm = 0x400
	movslq	scope_buffer_size, %rdi
	callq	xmalloc
	movq	%rax, scope_buffer
.LBB49_2:                               # %if.end
	movq	scope_buffer, %rax
	movb	$0, (%rax)
	movl	$0, scope_buffer_len
	movq	-8(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB49_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	sym_scope_1
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB49_4:                               # %if.end.5
	movq	scope_buffer, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	sym_scope, .Lfunc_end49-sym_scope
	.cfi_endproc

	.align	16, 0x90
	.type	sym_scope_1,@function
sym_scope_1:                            # @sym_scope_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	sym_scope_1
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB50_2:                               # %if.end
	movq	scope_buffer, %rax
	cmpb	$0, (%rax)
	je	.LBB50_4
# BB#3:                                 # %if.then.3
	movl	$3, %edi
	callq	ensure_scope_buffer_room
	movq	scope_buffer, %rax
	movslq	scope_buffer_len, %rcx
	addq	%rcx, %rax
	movl	$.L.str.136, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	scope_buffer_len, %edx
	addl	$2, %edx
	movl	%edx, scope_buffer_len
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB50_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %edi
	callq	ensure_scope_buffer_room
	movl	$32, %esi
	movq	scope_buffer, %rax
	movslq	scope_buffer_len, %rdx
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	addq	$120, %rdx
	movq	%rax, %rdi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rdx, %rsi
	callq	strcpy
	movl	-12(%rbp), %ecx
	addl	scope_buffer_len, %ecx
	movl	%ecx, scope_buffer_len
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edi
	movl	-36(%rbp), %esi         # 4-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	has_flag
	testb	$1, %al
	jne	.LBB50_5
	jmp	.LBB50_6
.LBB50_5:                               # %if.then.15
	movl	$3, %edi
	callq	ensure_scope_buffer_room
	movq	scope_buffer, %rax
	movslq	scope_buffer_len, %rcx
	addq	%rcx, %rax
	movl	$.L.str.149, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	strcpy
	movl	scope_buffer_len, %edx
	addl	$2, %edx
	movl	%edx, scope_buffer_len
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB50_6:                               # %if.end.20
	movq	scope_buffer, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	sym_scope_1, .Lfunc_end50-sym_scope_1
	.cfi_endproc

	.align	16, 0x90
	.type	ensure_scope_buffer_room,@function
ensure_scope_buffer_room:               # @ensure_scope_buffer_room
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	scope_buffer_len, %edi
	addl	-4(%rbp), %edi
	cmpl	scope_buffer_size, %edi
	jl	.LBB51_5
# BB#1:                                 # %if.then
	movl	scope_buffer_size, %eax
	shll	$1, %eax
	movl	scope_buffer_len, %ecx
	addl	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB51_3
# BB#2:                                 # %cond.true
	movl	scope_buffer_size, %eax
	shll	$1, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB51_4
.LBB51_3:                               # %cond.false
	movl	scope_buffer_len, %eax
	addl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB51_4:                               # %cond.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, -8(%rbp)
	movq	scope_buffer, %rdi
	movslq	-8(%rbp), %rsi
	callq	xrealloc
	movq	%rax, scope_buffer
	movl	-8(%rbp), %ecx
	movl	%ecx, scope_buffer_size
.LBB51_5:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	ensure_scope_buffer_room, .Lfunc_end51-ensure_scope_buffer_room
	.cfi_endproc

	.align	16, 0x90
	.type	has_flag,@function
has_flag:                               # @has_flag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	andl	-8(%rbp), %esi
	cmpl	$0, %esi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end52:
	.size	has_flag, .Lfunc_end52-has_flag
	.cfi_endproc

	.align	16, 0x90
	.type	skip_initializer,@function
skip_initializer:                       # @skip_initializer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	jmp	.LBB53_1
.LBB53_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, tk
	jne	.LBB53_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB53_1 Depth=1
	callq	yylex
	movl	%eax, tk
	movl	%eax, -4(%rbp)          # 4-byte Spill
	jmp	.LBB53_4
.LBB53_3:                               # %cond.false
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	tk, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB53_4:                               # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-4(%rbp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	je	.LBB53_5
	jmp	.LBB53_9
.LBB53_9:                               # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	je	.LBB53_6
	jmp	.LBB53_10
.LBB53_10:                              # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB53_5
	jmp	.LBB53_11
.LBB53_11:                              # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$59, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB53_5
	jmp	.LBB53_12
.LBB53_12:                              # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB53_6
	jmp	.LBB53_13
.LBB53_13:                              # %cond.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB53_6
	jmp	.LBB53_7
.LBB53_5:                               # %sw.bb
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB53_6:                               # %sw.bb.1
                                        #   in Loop: Header=BB53_1 Depth=1
	callq	skip_matching
	jmp	.LBB53_8
.LBB53_7:                               # %sw.default
                                        #   in Loop: Header=BB53_1 Depth=1
	callq	yylex
	movl	%eax, tk
.LBB53_8:                               # %sw.epilog
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_1
.Lfunc_end53:
	.size	skip_initializer, .Lfunc_end53-skip_initializer
	.cfi_endproc

	.align	16, 0x90
	.type	add_declarator,@function
add_declarator:                         # @add_declarator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$59, tk
	je	.LBB54_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$44, tk
	jne	.LBB54_8
.LBB54_2:                               # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_7
# BB#3:                                 # %if.then.2
	callq	matching_regexp
	movq	%rax, -32(%rbp)
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_5
# BB#4:                                 # %if.then.4
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-20(%rbp), %r10d
	movl	$0, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_member_defn
	jmp	.LBB54_6
.LBB54_5:                               # %if.else
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	add_global_defn
.LBB54_6:                               # %if.end
	jmp	.LBB54_7
.LBB54_7:                               # %if.end.5
	callq	yylex
	movl	%eax, tk
	callq	print_info
	jmp	.LBB54_14
.LBB54_8:                               # %if.else.7
	cmpl	$123, tk
	jne	.LBB54_13
# BB#9:                                 # %if.then.10
	cmpl	$4, -24(%rbp)
	jne	.LBB54_12
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_12
# BB#11:                                # %if.then.14
	callq	matching_regexp
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rax, -48(%rbp)
	movq	in, %rax
	movq	inbuffer, %rdx
	subq	%rdx, %rax
	movl	%eax, %esi
	movl	%esi, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-24(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	add_global_defn
.LBB54_12:                              # %if.end.22
	callq	skip_matching
	callq	print_info
.LBB54_13:                              # %if.end.23
	jmp	.LBB54_14
.LBB54_14:                              # %if.end.24
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	add_declarator, .Lfunc_end54-add_declarator
	.cfi_endproc

	.align	16, 0x90
	.type	parse_qualified_ident_or_type,@function
parse_qualified_ident_or_type:          # @parse_qualified_ident_or_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB55_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_10 Depth 2
	cmpl	$264, tk                # imm = 0x108
	jne	.LBB55_20
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	yytext, %rdi
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movslq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB55_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
	movslq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB55_4:                               # %if.end
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	yytext, %rsi
	callq	strcpy
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	yylex
	movl	%eax, tk
	cmpl	$60, tk
	jne	.LBB55_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB55_1 Depth=1
	callq	skip_matching
	jmp	.LBB55_7
.LBB55_6:                               # %if.else
                                        #   in Loop: Header=BB55_1 Depth=1
	jmp	.LBB55_7
.LBB55_7:                               # %if.end.12
                                        #   in Loop: Header=BB55_1 Depth=1
	cmpl	$279, tk                # imm = 0x117
	jne	.LBB55_18
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	check_namespace_alias
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB55_13
# BB#9:                                 # %if.then.17
                                        #   in Loop: Header=BB55_1 Depth=1
	jmp	.LBB55_10
.LBB55_10:                              # %do.body
                                        #   Parent Loop BB55_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	enter_namespace
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
# BB#11:                                # %do.cond
                                        #   in Loop: Header=BB55_10 Depth=2
	cmpq	$0, -56(%rbp)
	jne	.LBB55_10
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB55_1 Depth=1
	jmp	.LBB55_17
.LBB55_13:                              # %if.else.19
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	current_namespace, %rsi
	callq	check_namespace
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB55_15
# BB#14:                                # %if.then.22
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	callq	enter_namespace
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB55_16
.LBB55_15:                              # %if.else.26
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	add_sym
	movq	%rax, -16(%rbp)
.LBB55_16:                              # %if.end.28
                                        #   in Loop: Header=BB55_1 Depth=1
	jmp	.LBB55_17
.LBB55_17:                              # %if.end.29
                                        #   in Loop: Header=BB55_1 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdi
	callq	free
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	callq	yylex
	movl	%eax, tk
	jmp	.LBB55_19
.LBB55_18:                              # %if.else.31
	jmp	.LBB55_20
.LBB55_19:                              # %if.end.32
                                        #   in Loop: Header=BB55_1 Depth=1
	jmp	.LBB55_1
.LBB55_20:                              # %while.end
	jmp	.LBB55_21
.LBB55_21:                              # %while.cond.33
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB55_23
# BB#22:                                # %while.body.35
                                        #   in Loop: Header=BB55_21 Depth=1
	callq	leave_namespace
	jmp	.LBB55_21
.LBB55_23:                              # %while.end.36
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	parse_qualified_ident_or_type, .Lfunc_end55-parse_qualified_ident_or_type
	.cfi_endproc

	.align	16, 0x90
	.type	add_global_decl,@function
add_global_decl:                        # @add_global_decl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	global_symbols, %rdi
	movq	-8(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	find_member
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB56_2
# BB#1:                                 # %if.then
	movq	global_symbols, %rdi
	movq	-8(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	add_member
	movq	%rax, -48(%rbp)
.LBB56_2:                               # %if.end
	cmpq	$0, -56(%rbp)
	jne	.LBB56_7
# BB#3:                                 # %if.then.2
	movq	global_symbols, %rax
	cmpq	$0, 96(%rax)
	je	.LBB56_5
# BB#4:                                 # %lor.lhs.false
	movq	global_symbols, %rax
	movq	96(%rax), %rdi
	movq	filename, %rsi
	callq	filename_eq
	testb	$1, %al
	jne	.LBB56_6
.LBB56_5:                               # %if.then.6
	movq	filename, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB56_6:                               # %if.end.8
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 28(%rax)
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	$2, info_where
	movq	global_symbols, %rax
	movq	%rax, info_cls
	movq	-48(%rbp), %rax
	movq	%rax, info_member
.LBB56_7:                               # %if.end.12
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	add_global_decl, .Lfunc_end56-add_global_decl
	.cfi_endproc

	.align	16, 0x90
	.type	add_global_defn,@function
add_global_defn:                        # @add_global_defn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB57_15
# BB#1:                                 # %if.then
	movl	$0, -40(%rbp)
.LBB57_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB57_4 Depth 2
	cmpl	$1001, -40(%rbp)        # imm = 0x3E9
	jge	.LBB57_14
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB57_2 Depth=1
	movslq	-40(%rbp), %rax
	movq	class_table(,%rax,8), %rax
	movq	%rax, -48(%rbp)
.LBB57_4:                               # %for.cond.1
                                        #   Parent Loop BB57_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB57_12
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB57_4 Depth=2
	movq	-48(%rbp), %rax
	cmpq	global_symbols, %rax
	je	.LBB57_10
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB57_4 Depth=2
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB57_10
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB57_4 Depth=2
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-24(%rbp), %r8d
	callq	find_member
	cmpq	$0, %rax
	je	.LBB57_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB57_4 Depth=2
	xorl	%r9d, %r9d
	movl	$3, %eax
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-36(%rbp), %r10d
	movl	$3, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	add_member_defn
.LBB57_9:                               # %if.end
                                        #   in Loop: Header=BB57_4 Depth=2
	jmp	.LBB57_10
.LBB57_10:                              # %if.end.9
                                        #   in Loop: Header=BB57_4 Depth=2
	jmp	.LBB57_11
.LBB57_11:                              # %for.inc
                                        #   in Loop: Header=BB57_4 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB57_4
.LBB57_12:                              # %for.end
                                        #   in Loop: Header=BB57_2 Depth=1
	jmp	.LBB57_13
.LBB57_13:                              # %for.inc.10
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB57_2
.LBB57_14:                              # %for.end.11
	jmp	.LBB57_15
.LBB57_15:                              # %if.end.12
	movq	global_symbols, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %eax
	movl	-36(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_member_defn
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	add_global_defn, .Lfunc_end57-add_global_defn
	.cfi_endproc

	.align	16, 0x90
	.type	check_namespace_alias,@function
check_namespace_alias:                  # @check_namespace_alias
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB58_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB58_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB58_1 Depth=1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	xorl	%edx, %eax
	movl	%eax, -28(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB58_1
.LBB58_4:                               # %for.end
	movl	$1001, %eax             # imm = 0x3E9
	movl	-28(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	namespace_alias_table(,%rsi,8), %rsi
	movq	%rsi, -24(%rbp)
.LBB58_5:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB58_11
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB58_5 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB58_7
	jmp	.LBB58_9
.LBB58_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB58_5 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	current_namespace, %rax
	jne	.LBB58_9
# BB#8:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB58_11
.LBB58_9:                               # %if.end
                                        #   in Loop: Header=BB58_5 Depth=1
	jmp	.LBB58_10
.LBB58_10:                              # %for.inc.7
                                        #   in Loop: Header=BB58_5 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB58_5
.LBB58_11:                              # %for.end.8
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	check_namespace_alias, .Lfunc_end58-check_namespace_alias
	.cfi_endproc

	.align	16, 0x90
	.type	process_pp_line,@function
process_pp_line:                        # @process_pp_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	yytext, %rax
	movq	%rax, -24(%rbp)
.LBB59_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	movb	%dl, %sil
	movzbl	%sil, %edx
	movl	%edx, %eax
	cmpb	$0, is_white(,%rax)
	je	.LBB59_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_1
.LBB59_3:                               # %while.end
	jmp	.LBB59_4
.LBB59_4:                               # %while.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_ident(,%rdx)
	je	.LBB59_6
# BB#5:                                 # %while.body.7
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	in, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, in
	movsbl	(%rdx), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB59_4
.LBB59_6:                               # %while.end.12
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	yytext, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB59_17
# BB#7:                                 # %land.lhs.true
	movabsq	$.L.str.155, %rsi
	movq	yytext, %rdi
	callq	streq
	testb	$1, %al
	jne	.LBB59_8
	jmp	.LBB59_17
.LBB59_8:                               # %if.then
	movq	yytext, %rax
	movq	%rax, -24(%rbp)
.LBB59_9:                               # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_white(,%rdx)
	je	.LBB59_11
# BB#10:                                # %while.body.21
                                        #   in Loop: Header=BB59_9 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	jmp	.LBB59_9
.LBB59_11:                              # %while.end.24
	jmp	.LBB59_12
.LBB59_12:                              # %while.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	cmpb	$0, is_ident(,%rdx)
	je	.LBB59_14
# BB#13:                                # %while.body.30
                                        #   in Loop: Header=BB59_12 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movq	in, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, in
	movsbl	(%rdx), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB59_12
.LBB59_14:                              # %while.end.35
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	yytext, %rax
	cmpb	$0, (%rax)
	je	.LBB59_16
# BB#15:                                # %if.then.37
	callq	matching_regexp
	movq	%rax, -32(%rbp)
	movq	in, %rax
	movq	inbuffer, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movq	yytext, %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	add_define
.LBB59_16:                              # %if.end
	jmp	.LBB59_17
.LBB59_17:                              # %if.end.40
	jmp	.LBB59_18
.LBB59_18:                              # %while.cond.41
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	je	.LBB59_23
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB59_18 Depth=1
	movb	$1, %al
	cmpl	$10, -12(%rbp)
	movb	%al, -38(%rbp)          # 1-byte Spill
	jne	.LBB59_22
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB59_18 Depth=1
	movb	$1, %al
	cmpl	$0, -4(%rbp)
	movb	%al, -38(%rbp)          # 1-byte Spill
	jne	.LBB59_22
# BB#21:                                # %lor.rhs
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$0, -8(%rbp)
	setne	%al
	movb	%al, -38(%rbp)          # 1-byte Spill
.LBB59_22:                              # %lor.end
                                        #   in Loop: Header=BB59_18 Depth=1
	movb	-38(%rbp), %al          # 1-byte Reload
	movb	%al, -37(%rbp)          # 1-byte Spill
.LBB59_23:                              # %land.end
                                        #   in Loop: Header=BB59_18 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_24
	jmp	.LBB59_44
.LBB59_24:                              # %while.body.46
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$92, -12(%rbp)
	jne	.LBB59_26
# BB#25:                                # %if.then.49
                                        #   in Loop: Header=BB59_18 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	jmp	.LBB59_41
.LBB59_26:                              # %if.else
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$47, -12(%rbp)
	jne	.LBB59_31
# BB#27:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$0, -4(%rbp)
	jne	.LBB59_31
# BB#28:                                # %if.then.56
                                        #   in Loop: Header=BB59_18 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	cmpl	$42, %edx
	jne	.LBB59_30
# BB#29:                                # %if.then.61
                                        #   in Loop: Header=BB59_18 Depth=1
	movl	$1, -4(%rbp)
.LBB59_30:                              # %if.end.62
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_40
.LBB59_31:                              # %if.else.63
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$42, -12(%rbp)
	jne	.LBB59_36
# BB#32:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB59_36
# BB#33:                                # %if.then.68
                                        #   in Loop: Header=BB59_18 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	cmpl	$47, %edx
	jne	.LBB59_35
# BB#34:                                # %if.then.73
                                        #   in Loop: Header=BB59_18 Depth=1
	movl	$0, -4(%rbp)
.LBB59_35:                              # %if.end.74
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_39
.LBB59_36:                              # %if.else.75
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$34, -12(%rbp)
	jne	.LBB59_38
# BB#37:                                # %if.then.78
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$0, -8(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -8(%rbp)
.LBB59_38:                              # %if.end.80
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_39
.LBB59_39:                              # %if.end.81
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_40
.LBB59_40:                              # %if.end.82
                                        #   in Loop: Header=BB59_18 Depth=1
	jmp	.LBB59_41
.LBB59_41:                              # %if.end.83
                                        #   in Loop: Header=BB59_18 Depth=1
	cmpl	$10, -12(%rbp)
	jne	.LBB59_43
# BB#42:                                # %if.then.86
                                        #   in Loop: Header=BB59_18 Depth=1
	movl	yyline, %eax
	addl	$1, %eax
	movl	%eax, yyline
.LBB59_43:                              # %if.end.87
                                        #   in Loop: Header=BB59_18 Depth=1
	movq	in, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, in
	movsbl	(%rax), %edx
	movl	%edx, -12(%rbp)
	jmp	.LBB59_18
.LBB59_44:                              # %while.end.90
	movl	-12(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	process_pp_line, .Lfunc_end59-process_pp_line
	.cfi_endproc

	.align	16, 0x90
	.type	add_define,@function
add_define:                             # @add_define
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$3, %r9d
	movl	$512, %eax              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	$512, (%rsp)            # imm = 0x200
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	add_global_defn
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$3, %r9d
	movl	$512, %eax              # imm = 0x200
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	$512, (%rsp)            # imm = 0x200
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	add_global_decl
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	add_define, .Lfunc_end60-add_define
	.cfi_endproc

	.align	16, 0x90
	.type	putstr,@function
putstr:                                 # @putstr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movl	$40, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	$41, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB61_3
.LBB61_2:                               # %if.else
	movl	$34, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fputs
	movl	$34, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$32, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB61_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	putstr, .Lfunc_end61-putstr
	.cfi_endproc

	.align	16, 0x90
	.type	mark_inherited_virtual,@function
mark_inherited_virtual:                 # @mark_inherited_virtual
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -12(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_3 Depth 2
	cmpl	$1001, -12(%rbp)        # imm = 0x3E9
	jge	.LBB62_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	class_table(,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB62_3:                               # %for.cond.1
                                        #   Parent Loop BB62_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB62_8
# BB#4:                                 # %for.body.2
                                        #   in Loop: Header=BB62_3 Depth=2
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB62_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB62_3 Depth=2
	movq	-8(%rbp), %rdi
	callq	mark_virtual
.LBB62_6:                               # %if.end
                                        #   in Loop: Header=BB62_3 Depth=2
	jmp	.LBB62_7
.LBB62_7:                               # %for.inc
                                        #   in Loop: Header=BB62_3 Depth=2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB62_3
.LBB62_8:                               # %for.end
                                        #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_9
.LBB62_9:                               # %for.inc.4
                                        #   in Loop: Header=BB62_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB62_1
.LBB62_10:                              # %for.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	mark_inherited_virtual, .Lfunc_end62-mark_inherited_virtual
	.cfi_endproc

	.align	16, 0x90
	.type	dump_tree,@function
dump_tree:                              # @dump_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	dump_sym
	cmpl	$0, f_verbose
	je	.LBB63_2
# BB#1:                                 # %if.then
	movl	$43, %edi
	callq	putchar
	movq	stdout, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fflush
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB63_2:                               # %if.end
	movl	$40, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB63_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB63_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB63_3 Depth=1
	movabsq	$.L.str.161, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	dump_tree
	movl	$93, %edi
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB63_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB63_3
.LBB63_6:                               # %for.end
	movl	$41, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	dump_members
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	dump_members
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	callq	dump_members
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	dump_members
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	callq	dump_members
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	callq	dump_members
	movl	$40, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$41, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$40, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$41, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	-28(%rbp), %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	dump_tree, .Lfunc_end63-dump_tree
	.cfi_endproc

	.align	16, 0x90
	.type	mark_virtual,@function
mark_virtual:                           # @mark_virtual
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB64_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_3 Depth 2
                                        #       Child Loop BB64_6 Depth 3
	cmpq	$0, -16(%rbp)
	je	.LBB64_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB64_3:                               # %for.cond.1
                                        #   Parent Loop BB64_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB64_6 Depth 3
	cmpq	$0, -24(%rbp)
	je	.LBB64_15
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB64_3 Depth=2
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movl	32(%rax), %edi
	callq	has_flag
	testb	$1, %al
	jne	.LBB64_5
	jmp	.LBB64_13
.LBB64_5:                               # %if.then
                                        #   in Loop: Header=BB64_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB64_6:                               # %for.cond.5
                                        #   Parent Loop BB64_1 Depth=1
                                        #     Parent Loop BB64_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -32(%rbp)
	je	.LBB64_12
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB64_6 Depth=3
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-32(%rbp), %rax
	cmpl	24(%rax), %ecx
	jne	.LBB64_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB64_6 Depth=3
	movq	-24(%rbp), %rax
	addq	$84, %rax
	movq	-32(%rbp), %rcx
	addq	$84, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB64_9
	jmp	.LBB64_10
.LBB64_9:                               # %if.then.12
                                        #   in Loop: Header=BB64_6 Depth=3
	movl	$1, %esi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	set_flag
.LBB64_10:                              # %if.end
                                        #   in Loop: Header=BB64_6 Depth=3
	jmp	.LBB64_11
.LBB64_11:                              # %for.inc
                                        #   in Loop: Header=BB64_6 Depth=3
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB64_6
.LBB64_12:                              # %for.end
                                        #   in Loop: Header=BB64_3 Depth=2
	jmp	.LBB64_13
.LBB64_13:                              # %if.end.14
                                        #   in Loop: Header=BB64_3 Depth=2
	jmp	.LBB64_14
.LBB64_14:                              # %for.inc.15
                                        #   in Loop: Header=BB64_3 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB64_3
.LBB64_15:                              # %for.end.17
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	mark_virtual
# BB#16:                                # %for.inc.19
                                        #   in Loop: Header=BB64_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB64_1
.LBB64_17:                              # %for.end.21
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	mark_virtual, .Lfunc_end64-mark_virtual
	.cfi_endproc

	.align	16, 0x90
	.type	dump_sym,@function
dump_sym:                               # @dump_sym
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.162, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-16(%rbp), %rsi
	addq	$120, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	putstr
	movq	-16(%rbp), %rsi
	cmpq	$0, 112(%rsi)
	je	.LBB65_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	sym_scope
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	putstr
	jmp	.LBB65_3
.LBB65_2:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	putstr
.LBB65_3:                               # %if.end
	movabsq	$.L.str.163, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	putstr
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	putstr
	movabsq	$.L.str.164, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	88(%rcx), %edx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	putstr
	movl	$93, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	dump_sym, .Lfunc_end65-dump_sym
	.cfi_endproc

	.align	16, 0x90
	.type	dump_members,@function
dump_members:                           # @dump_members
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$40, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movl	$0, -20(%rbp)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB66_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB66_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB66_1 Depth=1
	movabsq	$.L.str.165, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-16(%rbp), %rsi
	addq	$84, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	putstr
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	putstr
	movabsq	$.L.str.166, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	32(%rcx), %edx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	putstr
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	-8(%rbp), %rsi
	callq	putstr
	movabsq	$.L.str.166, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	56(%rcx), %edx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.166, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	28(%rcx), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$32, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	putstr
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rdi
	movq	-8(%rbp), %rsi
	callq	putstr
	movabsq	$.L.str.164, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	80(%rcx), %edx
	movb	$0, %al
	callq	fprintf
	movl	$93, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -64(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB66_1
.LBB66_4:                               # %for.end
	movl	$41, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	-20(%rbp), %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	dump_members, .Lfunc_end66-dump_members
	.cfi_endproc

	.type	info_cls,@object        # @info_cls
	.bss
	.globl	info_cls
	.align	8
info_cls:
	.quad	0
	.size	info_cls, 8

	.type	info_member,@object     # @info_member
	.globl	info_member
	.align	8
info_member:
	.quad	0
	.size	info_member, 8

	.type	info_position,@object   # @info_position
	.data
	.globl	info_position
	.align	4
info_position:
	.long	4294967295              # 0xffffffff
	.size	info_position, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"append"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"files"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"help"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"min-regexp-length"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"max-regexp-length"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"no-nested-classes"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"no-regexps"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"no-structs-or-unions"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"output-file"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"position-info"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"search-path"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"verbose"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"version"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"very-verbose"
	.size	.L.str.13, 13

	.type	options,@object         # @options
	.data
	.globl	options
	.align	16
options:
	.quad	.L.str
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	97                      # 0x61
	.zero	4
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	102                     # 0x66
	.zero	4
	.quad	.L.str.2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	4294967294              # 0xfffffffe
	.zero	4
	.quad	.L.str.3
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	109                     # 0x6d
	.zero	4
	.quad	.L.str.4
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	77                      # 0x4d
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	110                     # 0x6e
	.zero	4
	.quad	.L.str.6
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	115                     # 0x73
	.zero	4
	.quad	.L.str.8
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	111                     # 0x6f
	.zero	4
	.quad	.L.str.9
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.10
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	73                      # 0x49
	.zero	4
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	118                     # 0x76
	.zero	4
	.quad	.L.str.12
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	4294967293              # 0xfffffffd
	.zero	4
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	86                      # 0x56
	.zero	4
	.zero	32
	.size	options, 480

	.type	f_structs,@object       # @f_structs
	.globl	f_structs
	.align	4
f_structs:
	.long	1                       # 0x1
	.size	f_structs, 4

	.type	f_regexps,@object       # @f_regexps
	.globl	f_regexps
	.align	4
f_regexps:
	.long	1                       # 0x1
	.size	f_regexps, 4

	.type	f_nested_classes,@object # @f_nested_classes
	.globl	f_nested_classes
	.align	4
f_nested_classes:
	.long	1                       # 0x1
	.size	f_nested_classes, 4

	.type	min_regexp,@object      # @min_regexp
	.globl	min_regexp
	.align	4
min_regexp:
	.long	5                       # 0x5
	.size	min_regexp, 4

	.type	max_regexp,@object      # @max_regexp
	.globl	max_regexp
	.align	4
max_regexp:
	.long	50                      # 0x32
	.size	max_regexp, 4

	.type	tk,@object              # @tk
	.globl	tk
	.align	4
tk:
	.long	4294967295              # 0xffffffff
	.size	tk, 4

	.type	main.out_filename,@object # @main.out_filename
	.align	8
main.out_filename:
	.quad	.L.str.14
	.size	main.out_filename, 8

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"BROWSE"
	.size	.L.str.14, 7

	.type	main.input_filenames,@object # @main.input_filenames
	.local	main.input_filenames
	.comm	main.input_filenames,8,8
	.type	main.input_filenames_size,@object # @main.input_filenames_size
	.local	main.input_filenames_size
	.comm	main.input_filenames_size,4,4
	.type	main.n_input_files,@object # @main.n_input_files
	.local	main.n_input_files
	.comm	main.n_input_files,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"command line"
	.size	.L.str.15, 13

	.type	filename,@object        # @filename
	.comm	filename,8,8
	.type	yyout,@object           # @yyout
	.comm	yyout,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"af:I:m:M:no:p:svVx"
	.size	.L.str.16, 19

	.type	f_append,@object        # @f_append
	.comm	f_append,4,4
	.type	f_verbose,@object       # @f_verbose
	.comm	f_verbose,4,4
	.type	f_very_verbose,@object  # @f_very_verbose
	.comm	f_very_verbose,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"r"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"file '%s' must exist for --append"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"error seeking in file '%s'"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"error getting size of file '%s'"
	.size	.L.str.20, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file '%s' is empty"
	.size	.L.str.21, 19

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"a"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"w"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"cannot open output file '%s'"
	.size	.L.str.24, 29

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"cannot open input file '%s'"
	.size	.L.str.25, 28

	.type	info_where,@object      # @info_where
	.comm	info_where,4,4
	.type	yyival,@object          # @yyival
	.comm	yyival,4,4
	.type	yytext,@object          # @yytext
	.comm	yytext,8,8
	.type	yytext_end,@object      # @yytext_end
	.comm	yytext_end,8,8
	.type	yyline,@object          # @yyline
	.comm	yyline,4,4
	.type	is_ident,@object        # @is_ident
	.comm	is_ident,255,16
	.type	is_digit,@object        # @is_digit
	.comm	is_digit,255,16
	.type	is_white,@object        # @is_white
	.comm	is_white,255,16
	.type	inbuffer,@object        # @inbuffer
	.comm	inbuffer,8,8
	.type	in,@object              # @in
	.comm	in,8,8
	.type	inbuffer_size,@object   # @inbuffer_size
	.comm	inbuffer_size,8,8
	.type	string_start,@object    # @string_start
	.comm	string_start,8,8
	.type	class_table,@object     # @class_table
	.comm	class_table,8008,16
	.type	member_table,@object    # @member_table
	.comm	member_table,8008,16
	.type	namespace_alias_table,@object # @namespace_alias_table
	.comm	namespace_alias_table,8008,16
	.type	global_symbols,@object  # @global_symbols
	.comm	global_symbols,8,8
	.type	current_namespace,@object # @current_namespace
	.comm	current_namespace,8,8
	.type	all_namespaces,@object  # @all_namespaces
	.comm	all_namespaces,8,8
	.type	namespace_stack,@object # @namespace_stack
	.comm	namespace_stack,8,8
	.type	namespace_stack_size,@object # @namespace_stack_size
	.comm	namespace_stack_size,4,4
	.type	namespace_sp,@object    # @namespace_sp
	.comm	namespace_sp,4,4
	.type	keyword_table,@object   # @keyword_table
	.comm	keyword_table,8008,16
	.type	search_path,@object     # @search_path
	.comm	search_path,8,8
	.type	search_path_tail,@object # @search_path_tail
	.comm	search_path_tail,8,8
	.type	scope_buffer,@object    # @scope_buffer
	.comm	scope_buffer,8,8
	.type	scope_buffer_size,@object # @scope_buffer_size
	.comm	scope_buffer_size,4,4
	.type	scope_buffer_len,@object # @scope_buffer_len
	.comm	scope_buffer_len,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"out of memory"
	.size	.L.str.26, 14

	.type	usage_message,@object   # @usage_message
	.section	.rodata,"a",@progbits
	.align	16
usage_message:
	.quad	.L.str.27
	.quad	.L.str.28
	.size	usage_message, 16

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"Usage: ebrowse [options] {files}\n\n  -a, --append                  append output to existing file\n  -f, --files=FILES             read input file names from FILE\n  -I, --search-path=LIST        set search path for input files\n  -m, --min-regexp-length=N     set minimum regexp length to N\n  -M, --max-regexp-length=N     set maximum regexp length to N\n"
	.size	.L.str.27, 352

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"  -n, --no-nested-classes       exclude nested classes\n  -o, --output-file=FILE        set output file name to FILE\n  -p, --position-info           print info about position in file\n  -s, --no-structs-or-unions    don't record structs or unions\n  -v, --verbose                 be verbose\n  -V, --very-verbose            be very verbose\n  -x, --no-regexps\t\tdon't record regular expressions\n      --help                    display this help\n      --version\t\t\tdisplay version info\n\n"
	.size	.L.str.28, 480

	.type	.Lversion.emacs_copyright,@object # @version.emacs_copyright
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lversion.emacs_copyright:
	.asciz	"Copyright (C) 2016 Free Software Foundation, Inc."
	.size	.Lversion.emacs_copyright, 50

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"ebrowse %s\n"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"25.1"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This program is distributed under the same terms as Emacs."
	.size	.L.str.31, 59

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"and"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"and_eq"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"asm"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"auto"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"bitand"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"bitor"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"bool"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"break"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"case"
	.size	.L.str.40, 5

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"catch"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"char"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"class"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"compl"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"const"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"const_cast"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"continue"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"default"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"delete"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"do"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"double"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"dynamic_cast"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"else"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"enum"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"explicit"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"extern"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"false"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"float"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"for"
	.size	.L.str.59, 4

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"friend"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"goto"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"if"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"inline"
	.size	.L.str.63, 7

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"int"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"long"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"mutable"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"namespace"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"new"
	.size	.L.str.68, 4

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"not"
	.size	.L.str.69, 4

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"not_eq"
	.size	.L.str.70, 7

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"operator"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"or"
	.size	.L.str.72, 3

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"or_eq"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"private"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"protected"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"public"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"register"
	.size	.L.str.77, 9

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"reinterpret_cast"
	.size	.L.str.78, 17

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"return"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"short"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"signed"
	.size	.L.str.81, 7

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"sizeof"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"static"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"static_cast"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"struct"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"switch"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"template"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"this"
	.size	.L.str.88, 5

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"throw"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"true"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"try"
	.size	.L.str.91, 4

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"typedef"
	.size	.L.str.92, 8

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"typeid"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"typename"
	.size	.L.str.94, 9

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"union"
	.size	.L.str.95, 6

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"unsigned"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"using"
	.size	.L.str.97, 6

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"virtual"
	.size	.L.str.98, 8

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"void"
	.size	.L.str.99, 5

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"volatile"
	.size	.L.str.100, 9

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"wchar_t"
	.size	.L.str.101, 8

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"while"
	.size	.L.str.102, 6

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"xor"
	.size	.L.str.103, 4

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"xor_eq"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"*Globals*"
	.size	.L.str.105, 10

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"%s:%d: "
	.size	.L.str.106, 8

	.type	open_file.buffer,@object # @open_file.buffer
	.local	open_file.buffer
	.comm	open_file.buffer,8,8
	.type	open_file.buffer_size,@object # @open_file.buffer_size
	.local	open_file.buffer_size
	.comm	open_file.buffer_size,4,4
	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"cannot open"
	.size	.L.str.107, 12

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"parse error"
	.size	.L.str.108, 12

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"namespace_sp > 0"
	.size	.L.str.109, 17

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"ebrowse.c"
	.size	.L.str.110, 10

	.type	.L__PRETTY_FUNCTION__.leave_namespace,@object # @__PRETTY_FUNCTION__.leave_namespace
.L__PRETTY_FUNCTION__.leave_namespace:
	.asciz	"void leave_namespace()"
	.size	.L__PRETTY_FUNCTION__.leave_namespace, 23

	.type	matching_regexp_buffer,@object # @matching_regexp_buffer
	.local	matching_regexp_buffer
	.comm	matching_regexp_buffer,8,8
	.type	matching_regexp_end_buf,@object # @matching_regexp_end_buf
	.local	matching_regexp_end_buf
	.comm	matching_regexp_end_buf,8,8
	.type	operator_name.id_size,@object # @operator_name.id_size
	.local	operator_name.id_size
	.comm	operator_name.id_size,8,8
	.type	operator_name.id,@object # @operator_name.id
	.local	operator_name.id
	.comm	operator_name.id,8,8
	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"["
	.size	.L.str.111, 2

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"]"
	.size	.L.str.112, 2

	.type	token_string.b,@object  # @token_string.b
	.local	token_string.b
	.comm	token_string.b,3,1
	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"string constant"
	.size	.L.str.113, 16

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"char constant"
	.size	.L.str.114, 14

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"int constant"
	.size	.L.str.115, 13

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"floating constant"
	.size	.L.str.116, 18

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"..."
	.size	.L.str.117, 4

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"<<="
	.size	.L.str.118, 4

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	">>="
	.size	.L.str.119, 4

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"->*"
	.size	.L.str.120, 4

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"identifier"
	.size	.L.str.121, 11

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"/="
	.size	.L.str.122, 3

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"++"
	.size	.L.str.123, 3

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"+="
	.size	.L.str.124, 3

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"--"
	.size	.L.str.125, 3

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"->"
	.size	.L.str.126, 3

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"-="
	.size	.L.str.127, 3

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"*="
	.size	.L.str.128, 3

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"%="
	.size	.L.str.129, 3

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"||"
	.size	.L.str.130, 3

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"|="
	.size	.L.str.131, 3

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"&&"
	.size	.L.str.132, 3

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"&="
	.size	.L.str.133, 3

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"^="
	.size	.L.str.134, 3

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	".*"
	.size	.L.str.135, 3

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"::"
	.size	.L.str.136, 3

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"=="
	.size	.L.str.137, 3

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"!="
	.size	.L.str.138, 3

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"<="
	.size	.L.str.139, 3

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"<<"
	.size	.L.str.140, 3

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	">="
	.size	.L.str.141, 3

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	">>"
	.size	.L.str.142, 3

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"signature"
	.size	.L.str.143, 10

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"EOF"
	.size	.L.str.144, 4

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"???"
	.size	.L.str.145, 4

	.type	parse_qualified_param_ident_or_type.id,@object # @parse_qualified_param_ident_or_type.id
	.local	parse_qualified_param_ident_or_type.id
	.comm	parse_qualified_param_ident_or_type.id,8,8
	.type	parse_qualified_param_ident_or_type.id_size,@object # @parse_qualified_param_ident_or_type.id_size
	.local	parse_qualified_param_ident_or_type.id_size
	.comm	parse_qualified_param_ident_or_type.id_size,4,4
	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"(tk == (IDENT))"
	.size	.L.str.146, 16

	.type	.L__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type,@object # @__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type
.L__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type:
	.asciz	"void parse_qualified_param_ident_or_type(char **)"
	.size	.L__PRETTY_FUNCTION__.parse_qualified_param_ident_or_type, 50

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"cls != ((void*)0)"
	.size	.L.str.147, 18

	.type	.L__PRETTY_FUNCTION__.add_member,@object # @__PRETTY_FUNCTION__.add_member
.L__PRETTY_FUNCTION__.add_member:
	.asciz	"struct member *add_member(struct sym *, char *, int, int, unsigned int)"
	.size	.L__PRETTY_FUNCTION__.add_member, 72

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"(\"%s\" \"%s\" \"%s\" %d)\n"
	.size	.L.str.148, 21

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"<>"
	.size	.L.str.149, 3

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"EOF in character constant"
	.size	.L.str.150, 26

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"EOF in string constant"
	.size	.L.str.151, 23

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"newline in character constant"
	.size	.L.str.152, 30

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"newline in string constant"
	.size	.L.str.153, 27

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"invalid token '..' ('...' assumed)"
	.size	.L.str.154, 35

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"define"
	.size	.L.str.155, 7

	.type	read_line.buffer,@object # @read_line.buffer
	.local	read_line.buffer
	.comm	read_line.buffer,8,8
	.type	read_line.buffer_size,@object # @read_line.buffer_size
	.local	read_line.buffer_size
	.comm	read_line.buffer_size,4,4
	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"[ebrowse-hs "
	.size	.L.str.156, 13

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"ebrowse 5.0"
	.size	.L.str.157, 12

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	" -s"
	.size	.L.str.158, 4

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	" -x"
	.size	.L.str.159, 4

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	" ()"
	.size	.L.str.160, 4

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"[ebrowse-ts "
	.size	.L.str.161, 13

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"[ebrowse-cs "
	.size	.L.str.162, 13

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"%d"
	.size	.L.str.163, 3

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"%u"
	.size	.L.str.164, 3

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"[ebrowse-ms "
	.size	.L.str.165, 13

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"%u "
	.size	.L.str.166, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
