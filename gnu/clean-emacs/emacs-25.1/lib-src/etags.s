	.text
	.file	"etags.bc"
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
	subq	$272, %rsp              # imm = 0x110
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -73(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, progname
	movl	$0, -24(%rbp)
	movslq	-8(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rsi, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movslq	-8(%rbp), %rax
	imulq	$24, %rax, %rdi
	callq	xmalloc
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rdx
	movq	%rax, -40(%rbp)
	movb	$1, constantypedefs
	movb	$1, typedefs_or_cplusplus
	movb	$1, typedefs
	movl	$1, members
	movl	$1, globals
	callq	concat
	movq	%rax, -96(%rbp)
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$longopts, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	getopt_long
	movl	%eax, -100(%rbp)
	cmpl	$-1, %eax
	je	.LBB0_41
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB0_3
	jmp	.LBB0_96
.LBB0_96:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_97
.LBB0_97:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB0_31
	jmp	.LBB0_98
.LBB0_98:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB0_13
	jmp	.LBB0_99
.LBB0_99:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_100
.LBB0_100:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_101
.LBB0_101:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$73, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB0_17
	jmp	.LBB0_102
.LBB0_102:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$81, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_103
.LBB0_103:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$82, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB0_25
	jmp	.LBB0_104
.LBB0_104:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB0_17
	jmp	.LBB0_105
.LBB0_105:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB0_34
	jmp	.LBB0_106
.LBB0_106:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_107
.LBB0_107:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB0_12
	jmp	.LBB0_108
.LBB0_108:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB0_21
	jmp	.LBB0_109
.LBB0_109:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB0_32
	jmp	.LBB0_110
.LBB0_110:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB0_14
	jmp	.LBB0_111
.LBB0_111:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_112
.LBB0_112:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB0_30
	jmp	.LBB0_113
.LBB0_113:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB0_18
	jmp	.LBB0_114
.LBB0_114:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB0_14
	jmp	.LBB0_115
.LBB0_115:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB0_22
	jmp	.LBB0_116
.LBB0_116:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB0_33
	jmp	.LBB0_117
.LBB0_117:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB0_35
	jmp	.LBB0_118
.LBB0_118:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB0_36
	jmp	.LBB0_119
.LBB0_119:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB0_38
	jmp	.LBB0_120
.LBB0_120:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB0_37
	jmp	.LBB0_121
.LBB0_121:                              # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$4097, %eax             # imm = 0x1001
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB0_7
	jmp	.LBB0_39
.LBB0_3:                                # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_40
.LBB0_4:                                # %sw.bb.7
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$2, (%rax)
	movq	optarg, %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	optarg, %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	movq	whatlen_max, %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB0_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, whatlen_max
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_40
.LBB0_7:                                # %sw.bb.15
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$3, (%rax)
	movq	optarg, %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	optarg, %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	movq	whatlen_max, %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB0_9
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, whatlen_max
.LBB0_9:                                # %if.end.26
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	testb	$1, parsing_stdin
	je	.LBB0_11
# BB#10:                                # %if.then.29
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	fatal
.LBB0_11:                               # %if.end.30
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, parsing_stdin
	jmp	.LBB0_40
.LBB0_12:                               # %sw.bb.31
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, append_to_tagfile
	jmp	.LBB0_40
.LBB0_13:                               # %sw.bb.32
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, cplusplus
	jmp	.LBB0_40
.LBB0_14:                               # %sw.bb.33
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, tagfile
	je	.LBB0_16
# BB#15:                                # %if.then.35
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
	callq	suggest_asking_for_help
.LBB0_16:                               # %if.end.36
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rax
	movq	%rax, tagfile
	jmp	.LBB0_40
.LBB0_17:                               # %sw.bb.37
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, ignoreindent
	jmp	.LBB0_40
.LBB0_18:                               # %sw.bb.38
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rdi
	callq	get_language_from_langname
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-112(%rbp), %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
.LBB0_20:                               # %if.end.50
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_40
.LBB0_21:                               # %sw.bb.51
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.4, %rdx
	movq	optarg, %rdi
	callq	concat
	movq	%rax, optarg
.LBB0_22:                               # %sw.bb.53
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	optarg, %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	optarg, %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	movq	whatlen_max, %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB0_24
# BB#23:                                # %if.then.63
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, whatlen_max
.LBB0_24:                               # %if.end.64
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_40
.LBB0_25:                               # %sw.bb.66
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$1, (%rax)
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB0_40
.LBB0_26:                               # %sw.bb.74
	callq	print_version
.LBB0_27:                               # %sw.bb.75
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, -73(%rbp)
	jmp	.LBB0_40
.LBB0_28:                               # %sw.bb.76
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, class_qualify
	jmp	.LBB0_40
.LBB0_29:                               # %sw.bb.77
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$0, constantypedefs
	jmp	.LBB0_40
.LBB0_30:                               # %sw.bb.78
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	jmp	.LBB0_40
.LBB0_31:                               # %sw.bb.82
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$63, searchar
	jmp	.LBB0_40
.LBB0_32:                               # %sw.bb.83
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, constantypedefs
	jmp	.LBB0_40
.LBB0_33:                               # %sw.bb.84
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, typedefs
	jmp	.LBB0_40
.LBB0_34:                               # %sw.bb.85
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, typedefs_or_cplusplus
	movb	$1, typedefs
	jmp	.LBB0_40
.LBB0_35:                               # %sw.bb.86
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, update
	jmp	.LBB0_40
.LBB0_36:                               # %sw.bb.87
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, vgrind_style
.LBB0_37:                               # %sw.bb.88
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, cxref_style
	jmp	.LBB0_40
.LBB0_38:                               # %sw.bb.89
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, no_warnings
	jmp	.LBB0_40
.LBB0_39:                               # %sw.default
	callq	suggest_asking_for_help
.LBB0_40:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_41:                               # %while.end
	jmp	.LBB0_42
.LBB0_42:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	optind, %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_47
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB0_42 Depth=1
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$2, (%rax)
	movslq	optind, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-44(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movslq	optind, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	movq	whatlen_max, %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB0_45
# BB#44:                                # %if.then.105
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, whatlen_max
.LBB0_45:                               # %if.end.106
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB0_42 Depth=1
	movl	optind, %eax
	addl	$1, %eax
	movl	%eax, optind
	jmp	.LBB0_42
.LBB0_47:                               # %for.end
	movslq	-44(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movl	$4, (%rax)
	testb	$1, -73(%rbp)
	je	.LBB0_49
# BB#48:                                # %if.then.114
	movq	-40(%rbp), %rdi
	callq	print_help
.LBB0_49:                               # %if.end.115
	cmpl	$0, -24(%rbp)
	jne	.LBB0_52
# BB#50:                                # %land.lhs.true
	cmpl	$0, -48(%rbp)
	jne	.LBB0_52
# BB#51:                                # %if.then.120
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	error
	callq	suggest_asking_for_help
.LBB0_52:                               # %if.end.121
	cmpq	$0, tagfile
	jne	.LBB0_54
# BB#53:                                # %if.then.124
	movabsq	$.L.str.9, %rdi
	callq	savestr
	movq	%rax, tagfile
.LBB0_54:                               # %if.end.126
	callq	etags_getcwd
	movq	%rax, cwd
	movq	cwd, %rdi
	callq	strlen
	subq	$1, %rax
	movq	cwd, %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB0_56
# BB#55:                                # %if.then.133
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.4, %rdx
	movq	cwd, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	concat
	movq	%rax, cwd
	movq	-120(%rbp), %rdi
	callq	free
.LBB0_56:                               # %if.end.135
	movabsq	$.L.str.11, %rsi
	movq	tagfile, %rdi
	callq	streq
	testb	$1, %al
	jne	.LBB0_58
# BB#57:                                # %lor.lhs.false
	movabsq	$.L.str.12, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	tagfile, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB0_58
	jmp	.LBB0_59
.LBB0_58:                               # %if.then.140
	movq	cwd, %rax
	movq	%rax, tagfiledir
	jmp	.LBB0_60
.LBB0_59:                               # %if.else
	movq	tagfile, %rdi
	callq	canonicalize_filename
	movq	tagfile, %rdi
	movq	cwd, %rsi
	callq	absolute_dirname
	movq	%rax, tagfiledir
.LBB0_60:                               # %if.end.142
	movabsq	$lb, %rdi
	callq	linebuffer_init
	leaq	-72(%rbp), %rdi
	callq	linebuffer_init
	movabsq	$filebuf, %rdi
	callq	linebuffer_init
	movabsq	$token_name, %rdi
	callq	linebuffer_init
	movabsq	$.L.str.11, %rsi
	movq	tagfile, %rdi
	callq	streq
	testb	$1, %al
	jne	.LBB0_61
	jmp	.LBB0_62
.LBB0_61:                               # %if.then.144
	movq	stdout, %rax
	movq	%rax, tagf
	movq	stdout, %rdi
	callq	fileno
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	set_binary_mode
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB0_63
.LBB0_62:                               # %if.else.147
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.13, %rcx
	movq	tagfile, %rdi
	movb	append_to_tagfile, %dl
	testb	$1, %dl
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, tagf
.LBB0_63:                               # %if.end.151
	cmpq	$0, tagf
	jne	.LBB0_65
# BB#64:                                # %if.then.154
	movq	tagfile, %rdi
	callq	pfatal
.LBB0_65:                               # %if.end.155
	movl	$0, -20(%rbp)
.LBB0_66:                               # %for.cond.156
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_83
# BB#67:                                # %for.body.159
                                        #   in Loop: Header=BB0_66 Depth=1
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	(%rcx,%rax,8), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$3, %rcx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	ja	.LBB0_80
# BB#95:                                # %for.body.159
                                        #   in Loop: Header=BB0_66 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_68:                               # %sw.bb.163
                                        #   in Loop: Header=BB0_66 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, main.lang
	jmp	.LBB0_81
.LBB0_69:                               # %sw.bb.167
                                        #   in Loop: Header=BB0_66 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	analyze_regex
	jmp	.LBB0_81
.LBB0_70:                               # %sw.bb.171
                                        #   in Loop: Header=BB0_66 Depth=1
	movabsq	$.L.str.11, %rsi
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	streq
	testb	$1, %al
	jne	.LBB0_71
	jmp	.LBB0_77
.LBB0_71:                               # %if.then.176
                                        #   in Loop: Header=BB0_66 Depth=1
	testb	$1, parsing_stdin
	je	.LBB0_73
# BB#72:                                # %if.then.178
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	fatal
.LBB0_73:                               # %if.end.179
                                        #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_74
.LBB0_74:                               # %while.cond.180
                                        #   Parent Loop BB0_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-72(%rbp), %rdi
	movabsq	$.L.str.11, %rdx
	movq	stdin, %rsi
	callq	readline_internal
	cmpq	$0, %rax
	jle	.LBB0_76
# BB#75:                                # %while.body.184
                                        #   in Loop: Header=BB0_74 Depth=2
	movq	-56(%rbp), %rdi
	movq	main.lang, %rsi
	callq	process_file_name
	jmp	.LBB0_74
.LBB0_76:                               # %while.end.185
                                        #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_78
.LBB0_77:                               # %if.else.186
                                        #   in Loop: Header=BB0_66 Depth=1
	movq	-128(%rbp), %rdi
	movq	main.lang, %rsi
	callq	process_file_name
.LBB0_78:                               # %if.end.187
                                        #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_81
.LBB0_79:                               # %sw.bb.188
                                        #   in Loop: Header=BB0_66 Depth=1
	movslq	-20(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	stdin, %rdi
	movq	-128(%rbp), %rsi
	movq	main.lang, %rdx
	callq	process_file
	jmp	.LBB0_81
.LBB0_80:                               # %sw.default.192
                                        #   in Loop: Header=BB0_66 Depth=1
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB0_81:                               # %sw.epilog.193
                                        #   in Loop: Header=BB0_66 Depth=1
	jmp	.LBB0_82
.LBB0_82:                               # %for.inc.194
                                        #   in Loop: Header=BB0_66 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_66
.LBB0_83:                               # %for.end.196
	callq	free_regexps
	movq	lb+16, %rdi
	callq	free
	movq	filebuf+16, %rdi
	callq	free
	movq	token_name+16, %rdi
	callq	free
	movq	nodehead, %rdi
	callq	put_entries
	movq	nodehead, %rdi
	callq	free_tree
	movq	$0, nodehead
	movq	fdhead, %rdi
	movq	%rdi, -136(%rbp)
.LBB0_84:                               # %for.cond.197
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB0_89
# BB#85:                                # %for.body.200
                                        #   in Loop: Header=BB0_84 Depth=1
	movq	-136(%rbp), %rax
	testb	$1, 57(%rax)
	jne	.LBB0_87
# BB#86:                                # %if.then.202
                                        #   in Loop: Header=BB0_84 Depth=1
	movabsq	$.L.str.17, %rsi
	movq	tagf, %rdi
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB0_87:                               # %if.end.204
                                        #   in Loop: Header=BB0_84 Depth=1
	jmp	.LBB0_88
.LBB0_88:                               # %for.inc.205
                                        #   in Loop: Header=BB0_84 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB0_84
.LBB0_89:                               # %for.end.206
	jmp	.LBB0_90
.LBB0_90:                               # %while.cond.207
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, %eax
	jbe	.LBB0_92
# BB#91:                                # %while.body.210
                                        #   in Loop: Header=BB0_90 Depth=1
	movabsq	$.L.str.18, %rsi
	movq	tagf, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB0_90
.LBB0_92:                               # %while.end.212
	movq	tagf, %rdi
	callq	fclose
	cmpl	$-1, %eax
	jne	.LBB0_94
# BB#93:                                # %if.then.216
	movq	tagfile, %rdi
	callq	pfatal
.LBB0_94:                               # %if.end.217
	xorl	%edi, %edi
	callq	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_68
	.quad	.LBB0_69
	.quad	.LBB0_70
	.quad	.LBB0_79

	.text
	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
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
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.176, %rdi
	movb	$0, %al
	callq	fatal
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xmalloc, .Lfunc_end1-xmalloc
	.cfi_endproc

	.align	16, 0x90
	.type	concat,@function
concat:                                 # @concat
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movl	-28(%rbp), %ecx
	addl	-32(%rbp), %ecx
	addl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	movq	-48(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-48(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-32(%rbp), %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-48(%rbp), %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	concat, .Lfunc_end2-concat
	.cfi_endproc

	.align	16, 0x90
	.type	fatal,@function
fatal:                                  # @fatal
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
.Lfunc_end3:
	.size	fatal, .Lfunc_end3-fatal
	.cfi_endproc

	.align	16, 0x90
	.type	error,@function
error:                                  # @error
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
.Lfunc_end4:
	.size	error, .Lfunc_end4-error
	.cfi_endproc

	.align	16, 0x90
	.type	suggest_asking_for_help,@function
suggest_asking_for_help:                # @suggest_asking_for_help
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
	subq	$16, %rsp
	movabsq	$.L.str.346, %rsi
	movq	stderr, %rdi
	movq	progname, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	exit
.Lfunc_end5:
	.size	suggest_asking_for_help, .Lfunc_end5-suggest_asking_for_help
	.cfi_endproc

	.align	16, 0x90
	.type	get_language_from_langname,@function
get_language_from_langname:             # @get_language_from_langname
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.315, %rdi
	movb	$0, %al
	callq	error
	jmp	.LBB6_9
.LBB6_2:                                # %if.else
	movabsq	$lang_names, %rax
	movq	%rax, -24(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_6
.LBB6_5:                                # %if.then.4
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_10
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_3
.LBB6_8:                                # %for.end
	movabsq	$.L.str.316, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB6_9:                                # %if.end.5
	movq	$0, -8(%rbp)
.LBB6_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_language_from_langname, .Lfunc_end6-get_language_from_langname
	.cfi_endproc

	.align	16, 0x90
	.type	print_version,@function
print_version:                          # @print_version
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
	subq	$112, %rsp
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movabsq	$.L.str.43, %rcx
	movabsq	$.Lprint_version.emacs_copyright, %rax
	movl	$50, %r8d
	movl	%r8d, %r9d
	leaq	-64(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movb	$0, %al
	callq	printf
	leaq	-64(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	puts
	movabsq	$.L.str.44, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	puts
	xorl	%edi, %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	exit
.Lfunc_end7:
	.size	print_version, .Lfunc_end7-print_version
	.cfi_endproc

	.align	16, 0x90
	.type	print_help,@function
print_help:                             # @print_help
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$4, (%rax)
	je	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB8_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	testb	$1, -9(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.4, %rdi
	callq	puts
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB8_5:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	puts
	movb	$1, -9(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB8_6:                                # %if.end.5
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end
	testb	$1, -9(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.7
	xorl	%edi, %edi
	callq	exit
.LBB8_10:                               # %if.end.8
	movabsq	$.L.str.45, %rdi
	movq	progname, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.46, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.47, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.48, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.49, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.50, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.51, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.52, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.53, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.54, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.55, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.56, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.57, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.58, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.59, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.60, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.61, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.62, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.63, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.64, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	puts
	movabsq	$.L.str.65, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	puts
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	print_language_names
	movabsq	$.L.str.4, %rdi
	callq	puts
	movabsq	$.L.str.66, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	puts
	xorl	%edi, %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	exit
.Lfunc_end8:
	.size	print_help, .Lfunc_end8-print_help
	.cfi_endproc

	.align	16, 0x90
	.type	savestr,@function
savestr:                                # @savestr
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	callq	savenstr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	savestr, .Lfunc_end9-savestr
	.cfi_endproc

	.align	16, 0x90
	.type	etags_getcwd,@function
etags_getcwd:                           # @etags_getcwd
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
	subq	$16, %rsp
	movl	$200, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movslq	-4(%rbp), %rsi
	callq	getcwd
	cmpq	$0, %rax
	jne	.LBB10_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.347, %rdi
	callq	pfatal
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-4(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rdi
	callq	free
	movslq	-4(%rbp), %rdi
	shlq	$0, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	jmp	.LBB10_1
.LBB10_5:                               # %while.end
	movq	-16(%rbp), %rdi
	callq	canonicalize_filename
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	etags_getcwd, .Lfunc_end10-etags_getcwd
	.cfi_endproc

	.align	16, 0x90
	.type	streq,@function
streq:                                  # @streq
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
.Lfunc_end11:
	.size	streq, .Lfunc_end11-streq
	.cfi_endproc

	.align	16, 0x90
	.type	strneq,@function
strneq:                                 # @strneq
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	strneq, .Lfunc_end12-strneq
	.cfi_endproc

	.align	16, 0x90
	.type	canonicalize_filename,@function
canonicalize_filename:                  # @canonicalize_filename
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB13_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB13_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movb	$47, (%rax)
.LBB13_4:                               # %while.cond
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB13_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB13_4 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB13_4
.LBB13_6:                               # %while.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_8
.LBB13_7:                               # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movb	%cl, (%rax)
.LBB13_8:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_9
.LBB13_9:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_1
.LBB13_10:                              # %for.end
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	canonicalize_filename, .Lfunc_end13-canonicalize_filename
	.cfi_endproc

	.align	16, 0x90
	.type	absolute_dirname,@function
absolute_dirname:                       # @absolute_dirname
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
	movl	$47, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strrchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	savestr
	movq	%rax, -8(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -41(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	absolute_filename
	movq	%rax, -40(%rbp)
	movb	-41(%rbp), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	absolute_dirname, .Lfunc_end14-absolute_dirname
	.cfi_endproc

	.align	16, 0x90
	.type	linebuffer_init,@function
linebuffer_init:                        # @linebuffer_init
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
	movq	-8(%rbp), %rdi
	movq	$200, (%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	shlq	$0, %rdi
	callq	xmalloc
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	linebuffer_init, .Lfunc_end15-linebuffer_init
	.cfi_endproc

	.align	16, 0x90
	.type	pfatal,@function
pfatal:                                 # @pfatal
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	perror
	movl	$1, %edi
	callq	exit
.Lfunc_end16:
	.size	pfatal, .Lfunc_end16-pfatal
	.cfi_endproc

	.align	16, 0x90
	.type	analyze_regex,@function
analyze_regex:                          # @analyze_regex
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	callq	free_regexps
	jmp	.LBB17_22
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_23
.LBB17_23:                              # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_24
.LBB17_24:                              # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_25
.LBB17_25:                              # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$64, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB17_4
	jmp	.LBB17_26
.LBB17_26:                              # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB17_12
	jmp	.LBB17_21
.LBB17_3:                               # %sw.bb
	jmp	.LBB17_22
.LBB17_4:                               # %sw.bb.1
	movabsq	$.L.str.318, %rsi
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB17_6
# BB#5:                                 # %if.then.4
	movq	-48(%rbp), %rdi
	callq	pfatal
.LBB17_6:                               # %if.end.5
	leaq	-40(%rbp), %rdi
	callq	linebuffer_init
.LBB17_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	readline_internal
	cmpq	$0, %rax
	jle	.LBB17_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB17_7 Depth=1
	movq	-24(%rbp), %rdi
	callq	analyze_regex
	jmp	.LBB17_7
.LBB17_9:                               # %while.end
	movq	-24(%rbp), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB17_11
# BB#10:                                # %if.then.13
	movq	-48(%rbp), %rdi
	callq	pfatal
.LBB17_11:                              # %if.end.14
	jmp	.LBB17_22
.LBB17_12:                              # %sw.bb.15
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB17_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$125, %ecx
	je	.LBB17_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_16
# BB#15:                                # %if.then.23
	movabsq	$.L.str.337, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	error
	jmp	.LBB17_22
.LBB17_16:                              # %if.end.24
                                        #   in Loop: Header=BB17_13 Depth=1
	jmp	.LBB17_17
.LBB17_17:                              # %for.inc
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB17_13
.LBB17_18:                              # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$0, (%rax)
	movq	-64(%rbp), %rdi
	callq	get_language_from_langname
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB17_20
# BB#19:                                # %if.then.29
	jmp	.LBB17_22
.LBB17_20:                              # %if.end.30
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	add_regex
	jmp	.LBB17_22
.LBB17_21:                              # %sw.default
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	add_regex
.LBB17_22:                              # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	analyze_regex, .Lfunc_end17-analyze_regex
	.cfi_endproc

	.align	16, 0x90
	.type	readline_internal,@function
readline_internal:                      # @readline_internal
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	(%rsi), %rdx
	movq	%rdx, -48(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rdi
	cmpq	-48(%rbp), %rdi
	jne	.LBB18_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB18_3:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$-1, -56(%rbp)
	jne	.LBB18_7
# BB#4:                                 # %if.then.13
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB18_6
# BB#5:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	callq	perror
.LBB18_6:                               # %if.end.16
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -52(%rbp)
	jmp	.LBB18_14
.LBB18_7:                               # %if.end.17
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$10, -56(%rbp)
	jne	.LBB18_13
# BB#8:                                 # %if.then.19
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.LBB18_11
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB18_11
# BB#10:                                # %if.then.23
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movl	$2, -52(%rbp)
	jmp	.LBB18_12
.LBB18_11:                              # %if.else
	movl	$1, -52(%rbp)
.LBB18_12:                              # %if.end.25
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB18_14
.LBB18_13:                              # %if.end.26
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-56(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB18_1
.LBB18_14:                              # %for.end
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	testb	$1, need_filebuf
	je	.LBB18_20
# BB#15:                                # %land.lhs.true.34
	cmpl	$0, -52(%rbp)
	jle	.LBB18_20
# BB#16:                                # %if.then.37
	jmp	.LBB18_17
.LBB18_17:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	filebuf, %rax
	movl	filebuf+8, %ecx
	movq	-8(%rbp), %rdx
	addl	8(%rdx), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jg	.LBB18_19
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB18_17 Depth=1
	movq	filebuf, %rax
	shlq	$1, %rax
	movq	%rax, filebuf
	movq	filebuf+16, %rdi
	movq	filebuf, %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, filebuf+16
	jmp	.LBB18_17
.LBB18_19:                              # %while.end
	movq	filebuf+16, %rax
	movslq	filebuf+8, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-8(%rbp), %rax
	movl	8(%rax), %r8d
	addl	filebuf+8, %r8d
	movl	%r8d, filebuf+8
	movl	filebuf+8, %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, filebuf+8
	movslq	%r8d, %rax
	movq	filebuf+16, %rcx
	movb	$10, (%rcx,%rax)
	movslq	filebuf+8, %rax
	movq	filebuf+16, %rcx
	movb	$0, (%rcx,%rax)
.LBB18_20:                              # %if.end.55
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-52(%rbp), %ecx
	movslq	%ecx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	readline_internal, .Lfunc_end18-readline_internal
	.cfi_endproc

	.align	16, 0x90
	.type	process_file_name,@function
process_file_name:                      # @process_file_name
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	canonicalize_filename
	movq	-8(%rbp), %rdi
	movq	tagfile, %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB19_1
	jmp	.LBB19_3
.LBB19_1:                               # %land.lhs.true
	movabsq	$.L.str.11, %rsi
	movq	tagfile, %rdi
	callq	streq
	testb	$1, %al
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.317, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	error
	jmp	.LBB19_48
.LBB19_3:                               # %if.end
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	get_compressor_from_suffix
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB19_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %esi
	callq	savenstr
	movq	%rax, -56(%rbp)
	jmp	.LBB19_6
.LBB19_5:                               # %if.else
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB19_6:                               # %if.end.5
	movq	fdhead, %rax
	movq	%rax, -32(%rbp)
.LBB19_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB19_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB19_7 Depth=1
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB19_9
	jmp	.LBB19_10
.LBB19_9:                               # %if.then.8
	jmp	.LBB19_43
.LBB19_10:                              # %if.end.9
                                        #   in Loop: Header=BB19_7 Depth=1
	jmp	.LBB19_11
.LBB19_11:                              # %for.inc
                                        #   in Loop: Header=BB19_7 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB19_7
.LBB19_12:                              # %for.end
	movabsq	$.L.str.318, %rsi
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB19_28
.LBB19_14:                              # %if.else.13
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -88(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB19_18
# BB#15:                                # %if.then.16
	movabsq	$.L.str.318, %rsi
	movq	-56(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_17
# BB#16:                                # %if.then.19
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB19_17:                              # %if.end.20
	jmp	.LBB19_25
.LBB19_18:                              # %if.else.21
	movabsq	$compressors, %rax
	movq	%rax, -40(%rbp)
.LBB19_19:                              # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_24
# BB#20:                                # %for.body.25
                                        #   in Loop: Header=BB19_19 Depth=1
	movabsq	$.L.str.132, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	callq	concat
	movabsq	$.L.str.318, %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_22
# BB#21:                                # %if.then.30
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB19_24
.LBB19_22:                              # %if.end.31
                                        #   in Loop: Header=BB19_19 Depth=1
	movq	-48(%rbp), %rdi
	callq	free
	movq	$0, -48(%rbp)
# BB#23:                                # %for.inc.32
                                        #   in Loop: Header=BB19_19 Depth=1
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_19
.LBB19_24:                              # %for.end.33
	jmp	.LBB19_25
.LBB19_25:                              # %if.end.34
	cmpq	$0, -24(%rbp)
	jne	.LBB19_27
# BB#26:                                # %if.then.36
	movl	-88(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	callq	perror
	jmp	.LBB19_43
.LBB19_27:                              # %if.end.38
	jmp	.LBB19_28
.LBB19_28:                              # %if.end.39
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_38
# BB#29:                                # %if.then.42
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	etags_mktmp
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB19_31
# BB#30:                                # %if.then.46
	movq	$0, -24(%rbp)
	jmp	.LBB19_35
.LBB19_31:                              # %if.else.47
	movabsq	$.L.str.319, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-72(%rbp), %rdx
	callq	concat
	movabsq	$.L.str.320, %rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	concat
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rdi
	callq	free
	movq	-104(%rbp), %rdi
	callq	system
	cmpl	$-1, %eax
	jne	.LBB19_33
# BB#32:                                # %if.then.53
	movq	$0, -24(%rbp)
	movl	$22, -108(%rbp)
	jmp	.LBB19_34
.LBB19_33:                              # %if.else.54
	movabsq	$.L.str.318, %rsi
	movq	-80(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
.LBB19_34:                              # %if.end.57
	movq	-104(%rbp), %rdi
	callq	free
	movl	-108(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-120(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
.LBB19_35:                              # %if.end.59
	cmpq	$0, -24(%rbp)
	jne	.LBB19_37
# BB#36:                                # %if.then.61
	movq	-72(%rbp), %rdi
	callq	perror
	jmp	.LBB19_43
.LBB19_37:                              # %if.end.62
	jmp	.LBB19_38
.LBB19_38:                              # %if.end.63
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	process_file
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -84(%rbp)
	movq	-72(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	jne	.LBB19_40
# BB#39:                                # %if.then.67
	movq	-80(%rbp), %rdi
	callq	remove
	movq	-80(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	free
.LBB19_40:                              # %if.end.69
	cmpl	$0, -84(%rbp)
	jge	.LBB19_42
# BB#41:                                # %if.then.72
	movq	-8(%rbp), %rdi
	callq	pfatal
.LBB19_42:                              # %if.end.73
	jmp	.LBB19_43
.LBB19_43:                              # %cleanup
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB19_45
# BB#44:                                # %if.then.76
	movq	-48(%rbp), %rdi
	callq	free
.LBB19_45:                              # %if.end.77
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB19_47
# BB#46:                                # %if.then.80
	movq	-56(%rbp), %rdi
	callq	free
.LBB19_47:                              # %if.end.81
	movq	$0, last_node
	movq	$0, curfdp
.LBB19_48:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	process_file_name, .Lfunc_end19-process_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	process_file,@function
process_file:                           # @process_file
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
	subq	$48, %rsp
	movl	$64, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, infilename
	movq	%rcx, %rdi
	callq	xmalloc
	movabsq	$process_file.emptyfdesc, %rcx
	movl	$64, %r8d
	movl	%r8d, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	fdhead, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	savestr
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rdi
	movq	cwd, %rsi
	callq	absolute_filename
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rdi
	movq	cwd, %rsi
	callq	absolute_dirname
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rdi
	callq	filename_is_absolute
	testb	$1, %al
	jne	.LBB20_1
	jmp	.LBB20_2
.LBB20_1:                               # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	absolute_filename
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	tagfiledir, %rsi
	callq	relative_filename
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
.LBB20_3:                               # %if.end
	movq	-32(%rbp), %rax
	movb	$1, 56(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 57(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, fdhead
	movq	fdhead, %rax
	movq	%rax, curfdp
	movq	-8(%rbp), %rdi
	callq	find_entries
	movq	curfdp, %rax
	testb	$1, 56(%rax)
	je	.LBB20_17
# BB#4:                                 # %land.lhs.true
	movq	curfdp, %rax
	movq	40(%rax), %rax
	testb	$1, 48(%rax)
	jne	.LBB20_17
# BB#5:                                 # %if.then.12
	movq	$0, -48(%rbp)
	movq	nodehead, %rax
	movq	%rax, -40(%rbp)
.LBB20_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB20_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	curfdp, %rax
	jne	.LBB20_9
# BB#8:                                 # %if.then.15
	jmp	.LBB20_11
.LBB20_9:                               # %if.end.16
                                        #   in Loop: Header=BB20_6 Depth=1
	jmp	.LBB20_10
.LBB20_10:                              # %for.inc
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_6
.LBB20_11:                              # %for.end
	cmpq	$0, -40(%rbp)
	je	.LBB20_16
# BB#12:                                # %if.then.18
	movq	-40(%rbp), %rdi
	callq	put_entries
	movq	-40(%rbp), %rdi
	callq	free_tree
	cmpq	$0, -48(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.20
	movq	$0, nodehead
	jmp	.LBB20_15
.LBB20_14:                              # %if.else.21
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.LBB20_15:                              # %if.end.23
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.24
	jmp	.LBB20_17
.LBB20_17:                              # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	process_file, .Lfunc_end20-process_file
	.cfi_endproc

	.align	16, 0x90
	.type	free_regexps,@function
free_regexps:                           # @free_regexps
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
	subq	$16, %rsp
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, p_head
	je	.LBB21_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	p_head, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	p_head, %rax
	movq	16(%rax), %rdi
	callq	free
	movq	p_head, %rax
	movq	24(%rax), %rdi
	callq	free
	movq	p_head, %rax
	movq	%rax, %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	%rax, p_head
	jmp	.LBB21_1
.LBB21_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	free_regexps, .Lfunc_end21-free_regexps
	.cfi_endproc

	.align	16, 0x90
	.type	put_entries,@function
put_entries:                            # @put_entries
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_11
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rax
	testb	$1, 40(%rax)
	je	.LBB22_10
# BB#3:                                 # %if.then.1
	movq	put_entries.fdp, %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB22_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, put_entries.fdp
	movq	tagf, %rdi
	movq	put_entries.fdp, %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	total_size_of_entries
	movabsq	$.L.str.333, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	fprintf
	movq	put_entries.fdp, %rdx
	movb	$1, 57(%rdx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB22_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	tagf, %rsi
	callq	fputs
	movl	$127, %edi
	movq	tagf, %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	fputc
	movq	-8(%rbp), %rsi
	cmpq	$0, 24(%rsi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB22_7
# BB#6:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	tagf, %rsi
	callq	fputs
	movl	$1, %edi
	movq	tagf, %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fputc
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB22_7:                               # %if.end.14
	movabsq	$.L.str.334, %rsi
	movq	tagf, %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	cmpq	$-1, 48(%rsi)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB22_9
# BB#8:                                 # %if.then.17
	movabsq	$.L.str.335, %rsi
	movq	tagf, %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB22_9:                               # %if.end.20
	movabsq	$.L.str.336, %rdi
	movq	tagf, %rsi
	callq	fputs
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB22_10:                              # %if.end.22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	put_entries
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	put_entries
.LBB22_11:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	put_entries, .Lfunc_end22-put_entries
	.cfi_endproc

	.align	16, 0x90
	.type	free_tree,@function
free_tree:                              # @free_tree
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB23_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free_tree
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_1
.LBB23_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	free_tree, .Lfunc_end23-free_tree
	.cfi_endproc

	.align	16, 0x90
	.type	print_language_names,@function
print_language_names:                   # @print_language_names
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
	subq	$64, %rsp
	movabsq	$.L.str.67, %rdi
	callq	puts
	movabsq	$lang_names, %rdi
	movq	%rdi, -8(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB24_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_4 Depth 2
                                        #     Child Loop BB24_10 Depth 2
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movabsq	$.L.str.68, %rdi
	movl	$10, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdx
	cmpq	$0, 32(%rdx)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB24_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB24_4:                               # %for.cond.6
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_7
# BB#5:                                 # %for.body.8
                                        #   in Loop: Header=BB24_4 Depth=2
	movabsq	$.L.str.69, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -36(%rbp)         # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=2
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB24_4
.LBB24_7:                               # %for.end
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_8
.LBB24_8:                               # %if.end
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB24_14
# BB#9:                                 # %if.then.11
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB24_10:                              # %for.cond.13
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_13
# BB#11:                                # %for.body.15
                                        #   in Loop: Header=BB24_10 Depth=2
	movabsq	$.L.str.70, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -40(%rbp)         # 4-byte Spill
# BB#12:                                # %for.inc.17
                                        #   in Loop: Header=BB24_10 Depth=2
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_10
.LBB24_13:                              # %for.end.19
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_14
.LBB24_14:                              # %if.end.20
                                        #   in Loop: Header=BB24_1 Depth=1
	movabsq	$.L.str.4, %rdi
	callq	puts
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#15:                                # %for.inc.22
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_1
.LBB24_16:                              # %for.end.24
	movabsq	$.L.str.71, %rdi
	callq	puts
	movabsq	$.L.str.72, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	puts
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	print_language_names, .Lfunc_end24-print_language_names
	.cfi_endproc

	.align	16, 0x90
	.type	Ada_funcs,@function
Ada_funcs:                              # @Ada_funcs
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
	movb	$0, -9(%rbp)
	movb	$0, -10(%rbp)
.LBB25_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_5 Depth 2
                                        #       Child Loop BB25_53 Depth 3
                                        #       Child Loop BB25_60 Depth 3
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -11(%rbp)          # 1-byte Spill
	jne	.LBB25_2
	jmp	.LBB25_3
.LBB25_2:                               # %land.rhs
                                        #   in Loop: Header=BB25_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, dbp
	movb	%al, -11(%rbp)          # 1-byte Spill
.LBB25_3:                               # %land.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movb	-11(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB25_4
	jmp	.LBB25_64
.LBB25_4:                               # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %while.cond.1
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_53 Depth 3
                                        #       Child Loop BB25_60 Depth 3
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB25_63
# BB#6:                                 # %while.body.3
                                        #   in Loop: Header=BB25_5 Depth=2
	testb	$1, -9(%rbp)
	jne	.LBB25_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB25_11
.LBB25_8:                               # %if.then
                                        #   in Loop: Header=BB25_5 Depth=2
	movl	$34, %esi
	movq	dbp, %rax
	movb	-9(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	callq	strchr
	movq	%rax, dbp
	cmpq	$0, dbp
	je	.LBB25_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB25_5 Depth=2
	movb	$0, -9(%rbp)
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB25_5
.LBB25_10:                              # %if.else
                                        #   in Loop: Header=BB25_1 Depth=1
	movb	$1, -9(%rbp)
	jmp	.LBB25_63
.LBB25_11:                              # %if.end
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB25_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB25_14
# BB#13:                                # %if.then.21
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_63
.LBB25_14:                              # %if.end.22
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB25_18
# BB#15:                                # %if.then.26
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB25_17
# BB#16:                                # %if.then.30
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
.LBB25_17:                              # %if.end.32
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_5
.LBB25_18:                              # %if.end.33
                                        #   in Loop: Header=BB25_5 Depth=2
	testb	$1, -10(%rbp)
	je	.LBB25_22
# BB#19:                                # %if.then.35
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	jne	.LBB25_21
# BB#20:                                # %if.then.39
                                        #   in Loop: Header=BB25_5 Depth=2
	movb	$0, -10(%rbp)
.LBB25_21:                              # %if.end.40
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB25_5
.LBB25_22:                              # %if.end.42
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	movzbl	(%rax), %edi
	callq	begtoken
	testb	$1, %al
	jne	.LBB25_24
# BB#23:                                # %if.then.44
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB25_5
.LBB25_24:                              # %if.end.46
                                        #   in Loop: Header=BB25_5 Depth=2
	movq	dbp(%rip), %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	movl	%eax, %edi
	subl	$102, %eax
	movl	%edi, -16(%rbp)         # 4-byte Spill
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB25_25
	jmp	.LBB25_65
.LBB25_65:                              # %if.end.46
                                        #   in Loop: Header=BB25_5 Depth=2
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB25_30
	jmp	.LBB25_66
.LBB25_66:                              # %if.end.46
                                        #   in Loop: Header=BB25_5 Depth=2
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB25_46
	jmp	.LBB25_67
.LBB25_67:                              # %if.end.46
                                        #   in Loop: Header=BB25_5 Depth=2
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB25_41
	jmp	.LBB25_59
.LBB25_25:                              # %sw.bb
                                        #   in Loop: Header=BB25_5 Depth=2
	cmpl	$0, packages_only
	jne	.LBB25_28
# BB#26:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.102, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_27
	jmp	.LBB25_28
.LBB25_27:                              # %if.then.53
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.103, %rsi
	movq	-8(%rbp), %rdi
	callq	Ada_getit
	jmp	.LBB25_29
.LBB25_28:                              # %if.else.54
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_59
.LBB25_29:                              # %if.end.55
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_5
.LBB25_30:                              # %sw.bb.56
                                        #   in Loop: Header=BB25_5 Depth=2
	cmpl	$0, packages_only
	jne	.LBB25_33
# BB#31:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.104, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_32
	jmp	.LBB25_33
.LBB25_32:                              # %if.then.61
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.105, %rsi
	movq	-8(%rbp), %rdi
	callq	Ada_getit
	jmp	.LBB25_40
.LBB25_33:                              # %if.else.62
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.106, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_34
	jmp	.LBB25_35
.LBB25_34:                              # %if.then.64
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.107, %rsi
	movq	-8(%rbp), %rdi
	callq	Ada_getit
	jmp	.LBB25_39
.LBB25_35:                              # %if.else.65
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.108, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_36
	jmp	.LBB25_37
.LBB25_36:                              # %if.then.67
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.109, %rsi
	movq	-8(%rbp), %rdi
	callq	Ada_getit
	jmp	.LBB25_38
.LBB25_37:                              # %if.else.68
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_59
.LBB25_38:                              # %if.end.69
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_39
.LBB25_39:                              # %if.end.70
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_40
.LBB25_40:                              # %if.end.71
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_5
.LBB25_41:                              # %sw.bb.72
                                        #   in Loop: Header=BB25_5 Depth=2
	testb	$1, typedefs
	je	.LBB25_45
# BB#42:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB25_5 Depth=2
	cmpl	$0, packages_only
	jne	.LBB25_45
# BB#43:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.110, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_44
	jmp	.LBB25_45
.LBB25_44:                              # %if.then.80
                                        #   in Loop: Header=BB25_5 Depth=2
	movb	$1, -10(%rbp)
	jmp	.LBB25_5
.LBB25_45:                              # %if.end.81
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_46
.LBB25_46:                              # %sw.bb.82
                                        #   in Loop: Header=BB25_5 Depth=2
	cmpl	$0, packages_only
	jne	.LBB25_49
# BB#47:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.111, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_48
	jmp	.LBB25_49
.LBB25_48:                              # %if.then.87
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.112, %rsi
	movq	-8(%rbp), %rdi
	callq	Ada_getit
	jmp	.LBB25_58
.LBB25_49:                              # %if.else.88
                                        #   in Loop: Header=BB25_5 Depth=2
	testb	$1, typedefs
	je	.LBB25_56
# BB#50:                                # %land.lhs.true.91
                                        #   in Loop: Header=BB25_5 Depth=2
	cmpl	$0, packages_only
	jne	.LBB25_56
# BB#51:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.113, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB25_52
	jmp	.LBB25_56
.LBB25_52:                              # %if.then.96
                                        #   in Loop: Header=BB25_5 Depth=2
	movabsq	$.L.str.109, %rsi
	movq	-8(%rbp), %rdi
	callq	Ada_getit
.LBB25_53:                              # %while.cond.97
                                        #   Parent Loop BB25_1 Depth=1
                                        #     Parent Loop BB25_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB25_55
# BB#54:                                # %while.body.101
                                        #   in Loop: Header=BB25_53 Depth=3
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB25_53
.LBB25_55:                              # %while.end
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_57
.LBB25_56:                              # %if.else.103
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_59
.LBB25_57:                              # %if.end.104
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_58
.LBB25_58:                              # %if.end.105
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_5
.LBB25_59:                              # %sw.epilog
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_60
.LBB25_60:                              # %while.cond.106
                                        #   Parent Loop BB25_1 Depth=1
                                        #     Parent Loop BB25_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	dbp, %rax
	movzbl	(%rax), %edi
	callq	endtoken
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB25_61
	jmp	.LBB25_62
.LBB25_61:                              # %while.body.110
                                        #   in Loop: Header=BB25_60 Depth=3
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB25_60
.LBB25_62:                              # %while.end.112
                                        #   in Loop: Header=BB25_5 Depth=2
	jmp	.LBB25_5
.LBB25_63:                              # %while.end.113
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_1
.LBB25_64:                              # %while.end.114
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Ada_funcs, .Lfunc_end25-Ada_funcs
	.cfi_endproc

	.align	16, 0x90
	.type	Asm_labels,@function
Asm_labels:                             # @Asm_labels
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB26_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_9 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB26_2
	jmp	.LBB26_3
.LBB26_2:                               # %land.rhs
                                        #   in Loop: Header=BB26_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB26_3:                               # %land.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB26_4
	jmp	.LBB26_20
.LBB26_4:                               # %while.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalpha
	testb	$1, %al
	jne	.LBB26_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	je	.LBB26_8
# BB#6:                                 # %lor.lhs.false.5
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB26_8
# BB#7:                                 # %lor.lhs.false.9
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	.LBB26_19
.LBB26_8:                               # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB26_9:                               # %while.cond.13
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalnum
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -18(%rbp)          # 1-byte Spill
	jne	.LBB26_13
# BB#10:                                # %lor.lhs.false.17
                                        #   in Loop: Header=BB26_9 Depth=2
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$95, %edx
	movb	%al, -18(%rbp)          # 1-byte Spill
	je	.LBB26_13
# BB#11:                                # %lor.lhs.false.21
                                        #   in Loop: Header=BB26_9 Depth=2
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$46, %edx
	movb	%al, -18(%rbp)          # 1-byte Spill
	je	.LBB26_13
# BB#12:                                # %lor.rhs
                                        #   in Loop: Header=BB26_9 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	sete	%dl
	movb	%dl, -18(%rbp)          # 1-byte Spill
.LBB26_13:                              # %lor.end
                                        #   in Loop: Header=BB26_9 Depth=2
	movb	-18(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB26_14
	jmp	.LBB26_15
.LBB26_14:                              # %while.body.28
                                        #   in Loop: Header=BB26_9 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB26_9
.LBB26_15:                              # %while.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB26_17
# BB#16:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB26_17
	jmp	.LBB26_18
.LBB26_17:                              # %if.then.37
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$1, %edx
	movq	lb+16, %rdi
	movq	-16(%rbp), %rax
	movq	lb+16, %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB26_18:                              # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_19
.LBB26_19:                              # %if.end.43
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_1
.LBB26_20:                              # %while.end.44
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Asm_labels, .Lfunc_end26-Asm_labels
	.cfi_endproc

	.align	16, 0x90
	.type	default_C_entries,@function
default_C_entries:                      # @default_C_entries
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
	subq	$16, %rsp
	movl	$4096, %eax             # imm = 0x1000
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movb	cplusplus, %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	C_entries
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	default_C_entries, .Lfunc_end27-default_C_entries
	.cfi_endproc

	.align	16, 0x90
	.type	Cplusplus_entries,@function
Cplusplus_entries:                      # @Cplusplus_entries
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	C_entries
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Cplusplus_entries, .Lfunc_end28-Cplusplus_entries
	.cfi_endproc

	.align	16, 0x90
	.type	Cstar_entries,@function
Cstar_entries:                          # @Cstar_entries
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
	subq	$16, %rsp
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	C_entries
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Cstar_entries, .Lfunc_end29-Cstar_entries
	.cfi_endproc

	.align	16, 0x90
	.type	Cobol_paragraphs,@function
Cobol_paragraphs:                       # @Cobol_paragraphs
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
	movq	%rdi, -8(%rbp)
.LBB30_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_10 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB30_2
	jmp	.LBB30_3
.LBB30_2:                               # %land.rhs
                                        #   in Loop: Header=BB30_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB30_3:                               # %land.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB30_4
	jmp	.LBB30_18
.LBB30_4:                               # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$9, lb+8
	jge	.LBB30_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_1
.LBB30_6:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB30_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalnum
	testb	$1, %al
	jne	.LBB30_9
.LBB30_8:                               # %if.then.6
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_1
.LBB30_9:                               # %if.end.7
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB30_10:                              # %for.cond
                                        #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalnum
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jne	.LBB30_12
# BB#11:                                # %lor.rhs
                                        #   in Loop: Header=BB30_10 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB30_12:                              # %lor.end
                                        #   in Loop: Header=BB30_10 Depth=2
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB30_13
	jmp	.LBB30_15
.LBB30_13:                              # %for.body
                                        #   in Loop: Header=BB30_10 Depth=2
	jmp	.LBB30_14
.LBB30_14:                              # %for.inc
                                        #   in Loop: Header=BB30_10 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB30_10
.LBB30_15:                              # %for.end
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %edx
	cmpl	$46, %edx
	jne	.LBB30_17
# BB#16:                                # %if.then.18
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB30_17:                              # %if.end.24
                                        #   in Loop: Header=BB30_1 Depth=1
	jmp	.LBB30_1
.LBB30_18:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Cobol_paragraphs, .Lfunc_end30-Cobol_paragraphs
	.cfi_endproc

	.align	16, 0x90
	.type	Erlang_functions,@function
Erlang_functions:                       # @Erlang_functions
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -24(%rbp)
.LBB31_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jne	.LBB31_2
	jmp	.LBB31_3
.LBB31_2:                               # %land.rhs
                                        #   in Loop: Header=BB31_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -33(%rbp)          # 1-byte Spill
.LBB31_3:                               # %land.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_4
	jmp	.LBB31_29
.LBB31_4:                               # %while.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB31_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_1
.LBB31_6:                               # %if.else
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB31_7
	jmp	.LBB31_8
.LBB31_7:                               # %if.then.5
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_1
.LBB31_8:                               # %if.else.6
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB31_10
# BB#9:                                 # %if.then.11
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_1
.LBB31_10:                              # %if.else.12
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB31_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_1
.LBB31_12:                              # %if.else.18
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB31_16
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	erlang_attribute
	cmpq	$0, -24(%rbp)
	je	.LBB31_15
# BB#14:                                # %if.then.26
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	free
	movq	$0, -24(%rbp)
.LBB31_15:                              # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_24
.LBB31_16:                              # %if.else.27
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	erlang_func
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB31_23
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB31_1 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB31_19
# BB#18:                                # %if.then.34
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	jmp	.LBB31_22
.LBB31_19:                              # %if.else.37
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB31_21
# BB#20:                                # %if.then.41
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
.LBB31_21:                              # %if.end.46
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_22
.LBB31_22:                              # %if.end.47
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	callq	memcpy
	movslq	-28(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
.LBB31_23:                              # %if.end.51
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_24
.LBB31_24:                              # %if.end.52
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_25
.LBB31_25:                              # %if.end.53
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_26
.LBB31_26:                              # %if.end.54
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_27
.LBB31_27:                              # %if.end.55
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_28
.LBB31_28:                              # %if.end.56
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_1
.LBB31_29:                              # %while.end
	movq	-24(%rbp), %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Erlang_functions, .Lfunc_end31-Erlang_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Forth_words,@function
Forth_words:                            # @Forth_words
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
.LBB32_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_5 Depth 2
                                        #       Child Loop BB32_12 Depth 3
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB32_2
	jmp	.LBB32_3
.LBB32_2:                               # %land.rhs
                                        #   in Loop: Header=BB32_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB32_3:                               # %land.end
                                        #   in Loop: Header=BB32_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_4
	jmp	.LBB32_42
.LBB32_4:                               # %while.body
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_5
.LBB32_5:                               # %while.cond.1
                                        #   Parent Loop BB32_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_12 Depth 3
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB32_41
# BB#6:                                 # %while.body.4
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB32_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB32_8
	jmp	.LBB32_9
.LBB32_8:                               # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_41
.LBB32_9:                               # %if.else
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB32_17
# BB#10:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB32_11
	jmp	.LBB32_17
.LBB32_11:                              # %if.then.22
                                        #   in Loop: Header=BB32_5 Depth=2
	jmp	.LBB32_12
.LBB32_12:                              # %do.body
                                        #   Parent Loop BB32_1 Depth=1
                                        #     Parent Loop BB32_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB32_12 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$41, %eax
	movb	%cl, -18(%rbp)          # 1-byte Spill
	je	.LBB32_15
# BB#14:                                # %land.rhs.26
                                        #   in Loop: Header=BB32_12 Depth=3
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -18(%rbp)          # 1-byte Spill
.LBB32_15:                              # %land.end.30
                                        #   in Loop: Header=BB32_12 Depth=3
	movb	-18(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_12
# BB#16:                                # %do.end
                                        #   in Loop: Header=BB32_5 Depth=2
	jmp	.LBB32_39
.LBB32_17:                              # %if.else.31
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB32_20
# BB#18:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB32_19
	jmp	.LBB32_20
.LBB32_19:                              # %land.lhs.true.41
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_20:                              # %lor.lhs.false
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.198, %rsi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_21
	jmp	.LBB32_22
.LBB32_21:                              # %land.lhs.true.45
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_22:                              # %lor.lhs.false.47
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.199, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_23
	jmp	.LBB32_24
.LBB32_23:                              # %land.lhs.true.50
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_24:                              # %lor.lhs.false.53
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.200, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_25
	jmp	.LBB32_26
.LBB32_25:                              # %land.lhs.true.56
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_26:                              # %lor.lhs.false.59
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.201, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_27
	jmp	.LBB32_28
.LBB32_27:                              # %land.lhs.true.62
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_28:                              # %lor.lhs.false.65
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.202, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_29
	jmp	.LBB32_30
.LBB32_29:                              # %land.lhs.true.68
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_30:                              # %lor.lhs.false.71
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.203, %rsi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_31
	jmp	.LBB32_32
.LBB32_31:                              # %land.lhs.true.74
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_32:                              # %lor.lhs.false.77
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.204, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_33
	jmp	.LBB32_34
.LBB32_33:                              # %land.lhs.true.80
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$7, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB32_36
.LBB32_34:                              # %lor.lhs.false.83
                                        #   in Loop: Header=BB32_5 Depth=2
	movabsq	$.L.str.205, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB32_35
	jmp	.LBB32_37
.LBB32_35:                              # %land.lhs.true.86
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB32_37
.LBB32_36:                              # %if.then.89
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	get_tag
	jmp	.LBB32_38
.LBB32_37:                              # %if.else.91
                                        #   in Loop: Header=BB32_5 Depth=2
	movq	-16(%rbp), %rdi
	callq	skip_non_spaces
	movq	%rax, -16(%rbp)
.LBB32_38:                              # %if.end
                                        #   in Loop: Header=BB32_5 Depth=2
	jmp	.LBB32_39
.LBB32_39:                              # %if.end.93
                                        #   in Loop: Header=BB32_5 Depth=2
	jmp	.LBB32_40
.LBB32_40:                              # %if.end.94
                                        #   in Loop: Header=BB32_5 Depth=2
	jmp	.LBB32_5
.LBB32_41:                              # %while.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_1
.LBB32_42:                              # %while.end.95
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Forth_words, .Lfunc_end32-Forth_words
	.cfi_endproc

	.align	16, 0x90
	.type	Fortran_functions,@function
Fortran_functions:                      # @Fortran_functions
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
.LBB33_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB33_2
	jmp	.LBB33_3
.LBB33_2:                               # %land.rhs
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, dbp
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB33_3:                               # %land.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB33_4
	jmp	.LBB33_58
.LBB33_4:                               # %while.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB33_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
.LBB33_6:                               # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB33_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_8:                               # %if.end.7
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.206, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB33_9
	jmp	.LBB33_11
.LBB33_9:                               # %land.lhs.true
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rax
	addq	$9, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	je	.LBB33_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
.LBB33_11:                              # %if.end.12
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.207, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB33_12
	jmp	.LBB33_14
.LBB33_12:                              # %land.lhs.true.15
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rax
	addq	$4, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	je	.LBB33_14
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
.LBB33_14:                              # %if.end.20
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.208, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB33_15
	jmp	.LBB33_17
.LBB33_15:                              # %land.lhs.true.23
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rax
	addq	$9, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	je	.LBB33_17
# BB#16:                                # %if.then.26
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
.LBB33_17:                              # %if.end.28
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp(%rip), %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	movl	%eax, %edi
	subl	$99, %eax
	movl	%edi, -16(%rbp)         # 4-byte Spill
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB33_27
	jmp	.LBB33_59
.LBB33_59:                              # %if.end.28
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB33_31
	jmp	.LBB33_60
.LBB33_60:                              # %if.end.28
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB33_18
	jmp	.LBB33_61
.LBB33_61:                              # %if.end.28
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB33_24
	jmp	.LBB33_62
.LBB33_62:                              # %if.end.28
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB33_21
	jmp	.LBB33_38
.LBB33_18:                              # %sw.bb
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.209, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_19
	jmp	.LBB33_20
.LBB33_19:                              # %if.then.32
                                        #   in Loop: Header=BB33_1 Depth=1
	callq	F_takeprec
.LBB33_20:                              # %if.end.33
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_38
.LBB33_21:                              # %sw.bb.34
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.210, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_22
	jmp	.LBB33_23
.LBB33_22:                              # %if.then.36
                                        #   in Loop: Header=BB33_1 Depth=1
	callq	F_takeprec
.LBB33_23:                              # %if.end.37
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_38
.LBB33_24:                              # %sw.bb.38
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.211, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_25
	jmp	.LBB33_26
.LBB33_25:                              # %if.then.40
                                        #   in Loop: Header=BB33_1 Depth=1
	callq	F_takeprec
.LBB33_26:                              # %if.end.41
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_38
.LBB33_27:                              # %sw.bb.42
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.212, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_29
# BB#28:                                # %lor.lhs.false
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.213, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_29
	jmp	.LBB33_30
.LBB33_29:                              # %if.then.47
                                        #   in Loop: Header=BB33_1 Depth=1
	callq	F_takeprec
.LBB33_30:                              # %if.end.48
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_38
.LBB33_31:                              # %sw.bb.49
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.214, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_32
	jmp	.LBB33_37
.LBB33_32:                              # %if.then.51
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB33_34
# BB#33:                                # %if.then.56
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_34:                              # %if.end.57
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.215, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_35
	jmp	.LBB33_36
.LBB33_35:                              # %if.then.59
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_38
.LBB33_36:                              # %if.end.60
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_37:                              # %if.end.61
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_38
.LBB33_38:                              # %sw.epilog
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB33_40
# BB#39:                                # %if.then.66
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_40:                              # %if.end.67
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp(%rip), %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	movl	%eax, %edi
	subl	$98, %eax
	movl	%edi, -40(%rbp)         # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB33_50
	jmp	.LBB33_63
.LBB33_63:                              # %if.end.67
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB33_47
	jmp	.LBB33_64
.LBB33_64:                              # %if.end.67
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB33_41
	jmp	.LBB33_65
.LBB33_65:                              # %if.end.67
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB33_44
	jmp	.LBB33_57
.LBB33_41:                              # %sw.bb.70
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.102, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_42
	jmp	.LBB33_43
.LBB33_42:                              # %if.then.72
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	F_getit
.LBB33_43:                              # %if.end.73
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_44:                              # %sw.bb.74
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.216, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_45
	jmp	.LBB33_46
.LBB33_45:                              # %if.then.76
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	F_getit
.LBB33_46:                              # %if.end.77
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_47:                              # %sw.bb.78
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.217, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_48
	jmp	.LBB33_49
.LBB33_48:                              # %if.then.80
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	F_getit
.LBB33_49:                              # %if.end.81
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_50:                              # %sw.bb.82
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.218, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_52
# BB#51:                                # %lor.lhs.false.85
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.219, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB33_52
	jmp	.LBB33_56
.LBB33_52:                              # %if.then.88
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB33_54
# BB#53:                                # %if.then.93
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$.L.str.218, %rdi
	movl	$9, %esi
	movl	$1, %edx
	movq	lb+16, %rcx
	movq	dbp, %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB33_55
.LBB33_54:                              # %if.else
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	F_getit
.LBB33_55:                              # %if.end.95
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_56
.LBB33_56:                              # %if.end.96
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_57:                              # %sw.epilog.97
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_1
.LBB33_58:                              # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fortran_functions, .Lfunc_end33-Fortran_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Go_functions,@function
Go_functions:                           # @Go_functions
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
	movq	%rdi, -8(%rbp)
.LBB34_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_8 Depth 2
                                        #     Child Loop BB34_18 Depth 2
                                        #     Child Loop BB34_23 Depth 2
                                        #     Child Loop BB34_34 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB34_2
	jmp	.LBB34_3
.LBB34_2:                               # %land.rhs
                                        #   in Loop: Header=BB34_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB34_3:                               # %land.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_4
	jmp	.LBB34_42
.LBB34_4:                               # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movabsq	$.L.str.106, %rsi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB34_5
	jmp	.LBB34_13
.LBB34_5:                               # %land.lhs.true
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	7(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB34_6
	jmp	.LBB34_13
.LBB34_6:                               # %land.lhs.true.4
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB34_13
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB34_8:                               # %while.cond.7
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jne	.LBB34_10
# BB#9:                                 # %land.rhs.9
                                        #   in Loop: Header=BB34_8 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB34_10:                              # %land.end.11
                                        #   in Loop: Header=BB34_8 Depth=2
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_11
	jmp	.LBB34_12
.LBB34_11:                              # %while.body.12
                                        #   in Loop: Header=BB34_8 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_8
.LBB34_12:                              # %while.end
                                        #   in Loop: Header=BB34_1 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB34_41
.LBB34_13:                              # %if.else
                                        #   in Loop: Header=BB34_1 Depth=1
	movabsq	$.L.str.224, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB34_14
	jmp	.LBB34_27
.LBB34_14:                              # %land.lhs.true.20
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	4(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB34_15
	jmp	.LBB34_27
.LBB34_15:                              # %land.lhs.true.24
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$5, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB34_27
# BB#16:                                # %if.then.29
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB34_21
# BB#17:                                # %if.then.33
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_18
.LBB34_18:                              # %while.cond.34
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	je	.LBB34_20
# BB#19:                                # %while.body.38
                                        #   in Loop: Header=BB34_18 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_18
.LBB34_20:                              # %while.end.40
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
.LBB34_21:                              # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB34_26
# BB#22:                                # %if.then.44
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB34_23:                              # %while.cond.45
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB34_24
	jmp	.LBB34_25
.LBB34_24:                              # %while.body.47
                                        #   in Loop: Header=BB34_23 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_23
.LBB34_25:                              # %while.end.49
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB34_26:                              # %if.end.59
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_40
.LBB34_27:                              # %if.else.60
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, members
	je	.LBB34_39
# BB#28:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB34_1 Depth=1
	movabsq	$.L.str.113, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB34_29
	jmp	.LBB34_39
.LBB34_29:                              # %land.lhs.true.65
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	4(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB34_30
	jmp	.LBB34_39
.LBB34_30:                              # %land.lhs.true.69
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$5, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB34_39
# BB#31:                                # %if.then.74
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB34_33
# BB#32:                                # %if.then.78
	jmp	.LBB34_42
.LBB34_33:                              # %if.end.79
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_34
.LBB34_34:                              # %while.cond.80
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -27(%rbp)          # 1-byte Spill
	jne	.LBB34_36
# BB#35:                                # %land.rhs.82
                                        #   in Loop: Header=BB34_34 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -27(%rbp)          # 1-byte Spill
.LBB34_36:                              # %land.end.86
                                        #   in Loop: Header=BB34_34 Depth=2
	movb	-27(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_37
	jmp	.LBB34_38
.LBB34_37:                              # %while.body.87
                                        #   in Loop: Header=BB34_34 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB34_34
.LBB34_38:                              # %while.end.89
                                        #   in Loop: Header=BB34_1 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB34_39:                              # %if.end.99
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_40
.LBB34_40:                              # %if.end.100
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_41
.LBB34_41:                              # %if.end.101
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_1
.LBB34_42:                              # %while.end.102
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Go_functions, .Lfunc_end34-Go_functions
	.cfi_endproc

	.align	16, 0x90
	.type	HTML_labels,@function
HTML_labels:                            # @HTML_labels
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
	subq	$48, %rsp
	movabsq	$token_name, %rax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	movb	$0, -10(%rbp)
	movb	$0, -11(%rbp)
	movb	$0, -12(%rbp)
	movq	%rax, %rdi
	callq	linebuffer_setlen
.LBB35_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_5 Depth 2
                                        #       Child Loop BB35_63 Depth 3
                                        #       Child Loop BB35_16 Depth 3
                                        #       Child Loop BB35_40 Depth 3
                                        #       Child Loop BB35_33 Depth 3
                                        #       Child Loop BB35_7 Depth 3
                                        #     Child Loop BB35_56 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -26(%rbp)          # 1-byte Spill
	jne	.LBB35_2
	jmp	.LBB35_3
.LBB35_2:                               # %land.rhs
                                        #   in Loop: Header=BB35_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, dbp
	movb	%al, -26(%rbp)          # 1-byte Spill
.LBB35_3:                               # %land.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_4
	jmp	.LBB35_87
.LBB35_4:                               # %while.body
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_5
.LBB35_5:                               # %for.cond
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB35_63 Depth 3
                                        #       Child Loop BB35_16 Depth 3
                                        #       Child Loop BB35_40 Depth 3
                                        #       Child Loop BB35_33 Depth 3
                                        #       Child Loop BB35_7 Depth 3
	testb	$1, -10(%rbp)
	je	.LBB35_14
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_7
.LBB35_7:                               # %while.cond.1
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	dbp, %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -27(%rbp)          # 1-byte Spill
	je	.LBB35_9
# BB#8:                                 # %land.rhs.3
                                        #   in Loop: Header=BB35_7 Depth=3
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$62, %ecx
	setne	%dl
	movb	%dl, -27(%rbp)          # 1-byte Spill
.LBB35_9:                               # %land.end.7
                                        #   in Loop: Header=BB35_7 Depth=3
	movb	-27(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_10
	jmp	.LBB35_11
.LBB35_10:                              # %while.body.8
                                        #   in Loop: Header=BB35_7 Depth=3
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB35_7
.LBB35_11:                              # %while.end
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$62, %ecx
	jne	.LBB35_13
# BB#12:                                # %if.then.12
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movb	$0, -10(%rbp)
	jmp	.LBB35_5
.LBB35_13:                              # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_86
.LBB35_14:                              # %if.else
                                        #   in Loop: Header=BB35_5 Depth=2
	testb	$1, -11(%rbp)
	je	.LBB35_48
# BB#15:                                # %if.then.14
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_16
.LBB35_16:                              # %while.cond.15
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	dbp, %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -28(%rbp)          # 1-byte Spill
	je	.LBB35_20
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB35_16 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	dbp, %rdx
	movsbl	(%rdx), %eax
	cmpl	$62, %eax
	movb	%cl, -28(%rbp)          # 1-byte Spill
	je	.LBB35_20
# BB#18:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB35_16 Depth=3
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$110, %eax
	movb	%cl, -28(%rbp)          # 1-byte Spill
	je	.LBB35_20
# BB#19:                                # %land.rhs.27
                                        #   in Loop: Header=BB35_16 Depth=3
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	cmpl	$105, %eax
	setne	%cl
	movb	%cl, -28(%rbp)          # 1-byte Spill
.LBB35_20:                              # %land.end.32
                                        #   in Loop: Header=BB35_16 Depth=3
	movb	-28(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_21
	jmp	.LBB35_22
.LBB35_21:                              # %while.body.33
                                        #   in Loop: Header=BB35_16 Depth=3
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB35_16
.LBB35_22:                              # %while.end.35
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB35_24
# BB#23:                                # %if.then.39
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_86
.LBB35_24:                              # %if.end.40
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$62, %ecx
	jne	.LBB35_26
# BB#25:                                # %if.then.44
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movb	$0, -11(%rbp)
	jmp	.LBB35_5
.LBB35_26:                              # %if.end.46
                                        #   in Loop: Header=BB35_5 Depth=2
	testb	$1, -12(%rbp)
	je	.LBB35_29
# BB#27:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$.L.str.225, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB35_28
	jmp	.LBB35_29
.LBB35_28:                              # %land.lhs.true.52
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$5, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	jne	.LBB35_31
.LBB35_29:                              # %lor.lhs.false
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$.L.str.226, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB35_30
	jmp	.LBB35_47
.LBB35_30:                              # %land.lhs.true.57
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$3, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	je	.LBB35_47
.LBB35_31:                              # %if.then.60
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB35_39
# BB#32:                                # %if.then.65
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movq	%rax, -24(%rbp)
.LBB35_33:                              # %for.cond.67
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB35_35
# BB#34:                                # %land.rhs.71
                                        #   in Loop: Header=BB35_33 Depth=3
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	setne	%dl
	movb	%dl, -29(%rbp)          # 1-byte Spill
.LBB35_35:                              # %land.end.75
                                        #   in Loop: Header=BB35_33 Depth=3
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_36
	jmp	.LBB35_38
.LBB35_36:                              # %for.body
                                        #   in Loop: Header=BB35_33 Depth=3
	jmp	.LBB35_37
.LBB35_37:                              # %for.inc
                                        #   in Loop: Header=BB35_33 Depth=3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB35_33
.LBB35_38:                              # %for.end
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_46
.LBB35_39:                              # %if.else.77
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movq	%rax, -24(%rbp)
.LBB35_40:                              # %for.cond.78
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -30(%rbp)          # 1-byte Spill
	je	.LBB35_42
# BB#41:                                # %land.rhs.82
                                        #   in Loop: Header=BB35_40 Depth=3
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edi
	callq	intoken
	movb	%al, -30(%rbp)          # 1-byte Spill
.LBB35_42:                              # %land.end.85
                                        #   in Loop: Header=BB35_40 Depth=3
	movb	-30(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_43
	jmp	.LBB35_45
.LBB35_43:                              # %for.body.86
                                        #   in Loop: Header=BB35_40 Depth=3
	jmp	.LBB35_44
.LBB35_44:                              # %for.inc.87
                                        #   in Loop: Header=BB35_40 Depth=3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB35_40
.LBB35_45:                              # %for.end.89
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_46
.LBB35_46:                              # %if.end.90
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$token_name, %rdi
	movq	-24(%rbp), %rax
	movq	dbp, %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %esi
	callq	linebuffer_setlen
	movq	token_name+16, %rdi
	movq	dbp, %rsi
	movq	-24(%rbp), %rax
	movq	dbp, %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-24(%rbp), %rax
	movq	dbp, %rcx
	subq	%rcx, %rax
	movq	token_name+16, %rcx
	movb	$0, (%rcx,%rax)
	movq	-24(%rbp), %rax
	movq	%rax, dbp
	movb	$0, -11(%rbp)
	movb	$1, -10(%rbp)
	movb	$1, -9(%rbp)
	jmp	.LBB35_5
.LBB35_47:                              # %if.end.99
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB35_84
.LBB35_48:                              # %if.else.101
                                        #   in Loop: Header=BB35_5 Depth=2
	testb	$1, -9(%rbp)
	je	.LBB35_62
# BB#49:                                # %if.then.103
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB35_51
# BB#50:                                # %if.then.108
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_86
.LBB35_51:                              # %if.end.109
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB35_55
# BB#52:                                # %if.then.113
                                        #   in Loop: Header=BB35_5 Depth=2
	movb	$1, -11(%rbp)
	movq	dbp, %rax
	movsbl	1(%rax), %edi
	callq	c_tolower
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$97, %eax
	movb	%cl, -31(%rbp)          # 1-byte Spill
	jne	.LBB35_54
# BB#53:                                # %land.rhs.119
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movzbl	2(%rax), %edi
	callq	intoken
	xorb	$-1, %al
	movb	%al, -31(%rbp)          # 1-byte Spill
.LBB35_54:                              # %land.end.122
                                        #   in Loop: Header=BB35_5 Depth=2
	movb	-31(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -12(%rbp)
	jmp	.LBB35_5
.LBB35_55:                              # %if.end.124
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB35_56:                              # %for.cond.126
                                        #   Parent Loop BB35_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -32(%rbp)          # 1-byte Spill
	je	.LBB35_58
# BB#57:                                # %land.rhs.130
                                        #   in Loop: Header=BB35_56 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	setne	%dl
	movb	%dl, -32(%rbp)          # 1-byte Spill
.LBB35_58:                              # %land.end.134
                                        #   in Loop: Header=BB35_56 Depth=2
	movb	-32(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_59
	jmp	.LBB35_61
.LBB35_59:                              # %for.body.135
                                        #   in Loop: Header=BB35_56 Depth=2
	jmp	.LBB35_60
.LBB35_60:                              # %for.inc.136
                                        #   in Loop: Header=BB35_56 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB35_56
.LBB35_61:                              # %for.end.138
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	$1, %edx
	movq	token_name+16, %rdi
	movl	token_name+8, %esi
	movq	dbp, %rcx
	movq	-24(%rbp), %rax
	movq	dbp, %r8
	subq	%r8, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	movabsq	$token_name, %rdi
	xorl	%esi, %esi
	callq	linebuffer_setlen
	movb	$0, -9(%rbp)
	jmp	.LBB35_86
.LBB35_62:                              # %if.else.143
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_63
.LBB35_63:                              # %while.cond.144
                                        #   Parent Loop BB35_1 Depth=1
                                        #     Parent Loop BB35_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	dbp, %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB35_65
# BB#64:                                # %land.rhs.148
                                        #   in Loop: Header=BB35_63 Depth=3
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	setne	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB35_65:                              # %land.end.152
                                        #   in Loop: Header=BB35_63 Depth=3
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_66
	jmp	.LBB35_67
.LBB35_66:                              # %while.body.153
                                        #   in Loop: Header=BB35_63 Depth=3
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB35_63
.LBB35_67:                              # %while.end.155
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB35_69
# BB#68:                                # %if.then.159
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_86
.LBB35_69:                              # %if.end.160
                                        #   in Loop: Header=BB35_5 Depth=2
	movb	$1, -11(%rbp)
	movq	dbp, %rax
	movsbl	1(%rax), %edi
	callq	c_tolower
	cmpl	$97, %eax
	jne	.LBB35_72
# BB#70:                                # %land.lhs.true.166
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	movzbl	2(%rax), %edi
	callq	intoken
	testb	$1, %al
	jne	.LBB35_72
# BB#71:                                # %if.then.169
                                        #   in Loop: Header=BB35_5 Depth=2
	movb	$1, -12(%rbp)
	jmp	.LBB35_5
.LBB35_72:                              # %if.else.170
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$.L.str.227, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB35_73
	jmp	.LBB35_74
.LBB35_73:                              # %land.lhs.true.173
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$7, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	jne	.LBB35_80
.LBB35_74:                              # %lor.lhs.false.176
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$.L.str.228, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB35_75
	jmp	.LBB35_76
.LBB35_75:                              # %land.lhs.true.179
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$4, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	jne	.LBB35_80
.LBB35_76:                              # %lor.lhs.false.182
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$.L.str.229, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB35_77
	jmp	.LBB35_78
.LBB35_77:                              # %land.lhs.true.185
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$4, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	jne	.LBB35_80
.LBB35_78:                              # %lor.lhs.false.188
                                        #   in Loop: Header=BB35_5 Depth=2
	movabsq	$.L.str.230, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strncaseeq
	testb	$1, %al
	jne	.LBB35_79
	jmp	.LBB35_81
.LBB35_79:                              # %land.lhs.true.191
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$4, %rax
	movq	%rax, dbp
	cmpq	$0, %rax
	je	.LBB35_81
.LBB35_80:                              # %if.then.194
                                        #   in Loop: Header=BB35_5 Depth=2
	movb	$0, -11(%rbp)
	movb	$1, -9(%rbp)
	jmp	.LBB35_5
.LBB35_81:                              # %if.end.195
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_82
.LBB35_82:                              # %if.end.196
                                        #   in Loop: Header=BB35_5 Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
# BB#83:                                # %if.end.198
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_84
.LBB35_84:                              # %if.end.199
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_85
.LBB35_85:                              # %if.end.200
                                        #   in Loop: Header=BB35_5 Depth=2
	jmp	.LBB35_5
.LBB35_86:                              # %for.end.201
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_1
.LBB35_87:                              # %while.end.202
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	HTML_labels, .Lfunc_end35-HTML_labels
	.cfi_endproc

	.align	16, 0x90
	.type	Cjava_entries,@function
Cjava_entries:                          # @Cjava_entries
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
	subq	$16, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	C_entries
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Cjava_entries, .Lfunc_end36-Cjava_entries
	.cfi_endproc

	.align	16, 0x90
	.type	Lisp_functions,@function
Lisp_functions:                         # @Lisp_functions
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB37_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_21 Depth 2
                                        #     Child Loop BB37_27 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB37_2
	jmp	.LBB37_3
.LBB37_2:                               # %land.rhs
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, dbp
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB37_3:                               # %land.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_4
	jmp	.LBB37_35
.LBB37_4:                               # %while.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	je	.LBB37_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_1
.LBB37_6:                               # %if.end
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	$0, declarations
	jne	.LBB37_14
# BB#7:                                 # %if.then.2
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.233, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	dbp, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_8
	jmp	.LBB37_13
.LBB37_8:                               # %land.lhs.true
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	6(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB37_9
	jmp	.LBB37_13
.LBB37_9:                               # %land.lhs.true.8
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$7, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB37_13
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	skip_name
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	jne	.LBB37_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_1
.LBB37_12:                              # %if.end.20
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_13
.LBB37_13:                              # %if.end.21
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_14
.LBB37_14:                              # %if.end.22
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.234, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.235, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_16
	jmp	.LBB37_17
.LBB37_16:                              # %if.then.29
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	dbp, %rax
	addq	$3, %rax
	movq	%rax, dbp
.LBB37_17:                              # %if.end.31
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.125, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_19
# BB#18:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.236, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_19
	jmp	.LBB37_20
.LBB37_19:                              # %if.then.39
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	dbp, %rdi
	callq	skip_non_spaces
	movq	%rax, dbp
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	callq	L_getit
	jmp	.LBB37_34
.LBB37_20:                              # %if.else
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_21
.LBB37_21:                              # %do.body
                                        #   Parent Loop BB37_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
# BB#22:                                # %do.cond
                                        #   in Loop: Header=BB37_21 Depth=2
	movq	dbp, %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -18(%rbp)          # 1-byte Spill
	jne	.LBB37_24
# BB#23:                                # %land.rhs.43
                                        #   in Loop: Header=BB37_21 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -18(%rbp)          # 1-byte Spill
.LBB37_24:                              # %land.end.47
                                        #   in Loop: Header=BB37_21 Depth=2
	movb	-18(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_21
# BB#25:                                # %do.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB37_33
# BB#26:                                # %if.then.51
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_27
.LBB37_27:                              # %do.body.52
                                        #   Parent Loop BB37_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
# BB#28:                                # %do.cond.54
                                        #   in Loop: Header=BB37_27 Depth=2
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB37_27
# BB#29:                                # %do.end.58
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.125, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_31
# BB#30:                                # %lor.lhs.false.61
                                        #   in Loop: Header=BB37_1 Depth=1
	movabsq	$.L.str.236, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB37_31
	jmp	.LBB37_32
.LBB37_31:                              # %if.then.64
                                        #   in Loop: Header=BB37_1 Depth=1
	movq	dbp, %rdi
	callq	skip_non_spaces
	movq	%rax, dbp
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	callq	L_getit
.LBB37_32:                              # %if.end.67
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_33
.LBB37_33:                              # %if.end.68
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_34
.LBB37_34:                              # %if.end.69
                                        #   in Loop: Header=BB37_1 Depth=1
	jmp	.LBB37_1
.LBB37_35:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Lisp_functions, .Lfunc_end37-Lisp_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Lua_functions,@function
Lua_functions:                          # @Lua_functions
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
.LBB38_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -53(%rbp)          # 1-byte Spill
	jne	.LBB38_2
	jmp	.LBB38_3
.LBB38_2:                               # %land.rhs
                                        #   in Loop: Header=BB38_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -53(%rbp)          # 1-byte Spill
.LBB38_3:                               # %land.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_4
	jmp	.LBB38_21
.LBB38_4:                               # %while.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$102, %ecx
	je	.LBB38_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$108, %ecx
	je	.LBB38_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_1
.LBB38_7:                               # %if.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movabsq	$.L.str.246, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	testb	$1, %al
	movb	%r8b, -54(%rbp)         # 1-byte Spill
	jne	.LBB38_8
	jmp	.LBB38_10
.LBB38_8:                               # %land.lhs.true.9
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -54(%rbp)          # 1-byte Spill
	jne	.LBB38_9
	jmp	.LBB38_10
.LBB38_9:                               # %land.rhs.13
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -54(%rbp)          # 1-byte Spill
.LBB38_10:                              # %land.end.16
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	-54(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.102, %rsi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movb	%al, -55(%rbp)          # 1-byte Spill
	callq	strneq
	testb	$1, %al
	jne	.LBB38_11
	jmp	.LBB38_20
.LBB38_11:                              # %land.lhs.true.19
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB38_12
	jmp	.LBB38_20
.LBB38_12:                              # %land.lhs.true.23
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$9, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB38_20
# BB#13:                                # %if.then.28
                                        #   in Loop: Header=BB38_1 Depth=1
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	get_tag
	movl	$46, %esi
	movq	-24(%rbp), %rdi
	callq	strrchr
	movl	$58, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB38_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB38_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB38_19
.LBB38_15:                              # %if.then.33
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB38_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB38_18
.LBB38_17:                              # %cond.false
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB38_18:                              # %cond.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%rdx, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	callq	get_tag
.LBB38_19:                              # %if.end.38
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_20
.LBB38_20:                              # %if.end.39
                                        #   in Loop: Header=BB38_1 Depth=1
	jmp	.LBB38_1
.LBB38_21:                              # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Lua_functions, .Lfunc_end38-Lua_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Makefile_targets,@function
Makefile_targets:                       # @Makefile_targets
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.LBB39_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_8 Depth 2
                                        #     Child Loop BB39_17 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB39_2
	jmp	.LBB39_3
.LBB39_2:                               # %land.rhs
                                        #   in Loop: Header=BB39_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB39_3:                               # %land.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_4
	jmp	.LBB39_23
.LBB39_4:                               # %while.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB39_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB39_7
.LBB39_6:                               # %if.then
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_1
.LBB39_7:                               # %if.end
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_8
.LBB39_8:                               # %while.cond.5
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB39_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB39_8 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$61, %eax
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB39_11
# BB#10:                                # %land.rhs.12
                                        #   in Loop: Header=BB39_8 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB39_11:                              # %land.end.16
                                        #   in Loop: Header=BB39_8 Depth=2
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_12
	jmp	.LBB39_13
.LBB39_12:                              # %while.body.17
                                        #   in Loop: Header=BB39_8 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB39_8
.LBB39_13:                              # %while.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB39_16
# BB#14:                                # %lor.lhs.false.21
                                        #   in Loop: Header=BB39_1 Depth=1
	cmpl	$0, globals
	je	.LBB39_22
# BB#15:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB39_22
.LBB39_16:                              # %if.then.26
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	lb+16, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
.LBB39_17:                              # %while.cond.28
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	cmpq	-24(%rbp), %rax
	jbe	.LBB39_21
# BB#18:                                # %while.body.32
                                        #   in Loop: Header=BB39_17 Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB39_20
# BB#19:                                # %if.then.34
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_21
.LBB39_20:                              # %if.end.35
                                        #   in Loop: Header=BB39_17 Depth=2
	jmp	.LBB39_17
.LBB39_21:                              # %while.end.36
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$2, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB39_22:                              # %if.end.43
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_1
.LBB39_23:                              # %while.end.44
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Makefile_targets, .Lfunc_end39-Makefile_targets
	.cfi_endproc

	.align	16, 0x90
	.type	plain_C_entries,@function
plain_C_entries:                        # @plain_C_entries
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	C_entries
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	plain_C_entries, .Lfunc_end40-plain_C_entries
	.cfi_endproc

	.align	16, 0x90
	.type	Pascal_functions,@function
Pascal_functions:                       # @Pascal_functions
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
	subq	$144, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	lb+16, %rdi
	movq	%rdi, dbp
	movq	dbp, %rdi
	movb	$0, (%rdi)
	movq	%rax, %rdi
	callq	linebuffer_init
	movb	$0, -66(%rbp)
	movb	$0, -65(%rbp)
	movb	$0, -68(%rbp)
	movb	$0, -67(%rbp)
	movb	$0, -69(%rbp)
	movb	$0, -70(%rbp)
.LBB41_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_62 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	testb	$1, %al
	jne	.LBB41_2
	jmp	.LBB41_81
.LBB41_2:                               # %while.body
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, dbp
	movb	(%rax), %dl
	movb	%dl, -53(%rbp)
	movsbl	-53(%rbp), %esi
	cmpl	$0, %esi
	jne	.LBB41_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB41_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movq	lb+16, %rsi
	movq	%rsi, dbp
	movq	dbp, %rsi
	movsbl	(%rsi), %eax
	cmpl	$0, %eax
	jne	.LBB41_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_5:                               # %if.end
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -68(%rbp)
	je	.LBB41_7
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -70(%rbp)
	jne	.LBB41_9
.LBB41_7:                               # %lor.lhs.false
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -67(%rbp)
	jne	.LBB41_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, dbp
	movb	(%rax), %dl
	movb	%dl, -53(%rbp)
.LBB41_9:                               # %if.end.13
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_10
.LBB41_10:                              # %if.end.14
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -65(%rbp)
	je	.LBB41_18
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB41_1 Depth=1
	movsbl	-53(%rbp), %eax
	cmpl	$125, %eax
	jne	.LBB41_13
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$0, -65(%rbp)
	jmp	.LBB41_17
.LBB41_13:                              # %if.else
                                        #   in Loop: Header=BB41_1 Depth=1
	movsbl	-53(%rbp), %eax
	cmpl	$42, %eax
	jne	.LBB41_16
# BB#14:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	jne	.LBB41_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movb	$0, -65(%rbp)
.LBB41_16:                              # %if.end.30
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_17
.LBB41_17:                              # %if.end.31
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_18:                              # %if.else.32
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -66(%rbp)
	je	.LBB41_22
# BB#19:                                # %if.then.34
                                        #   in Loop: Header=BB41_1 Depth=1
	movsbl	-53(%rbp), %eax
	cmpl	$39, %eax
	jne	.LBB41_21
# BB#20:                                # %if.then.38
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$0, -66(%rbp)
.LBB41_21:                              # %if.end.39
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_22:                              # %if.else.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movsbl	-53(%rbp), %eax
	movl	%eax, %ecx
	subl	$39, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	je	.LBB41_23
	jmp	.LBB41_82
.LBB41_82:                              # %if.else.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB41_25
	jmp	.LBB41_83
.LBB41_83:                              # %if.else.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB41_31
	jmp	.LBB41_84
.LBB41_84:                              # %if.else.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$59, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB41_34
	jmp	.LBB41_85
.LBB41_85:                              # %if.else.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB41_24
	jmp	.LBB41_38
.LBB41_23:                              # %sw.bb
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -66(%rbp)
	jmp	.LBB41_1
.LBB41_24:                              # %sw.bb.42
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -65(%rbp)
	jmp	.LBB41_1
.LBB41_25:                              # %sw.bb.43
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB41_27
# BB#26:                                # %if.then.47
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -65(%rbp)
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB41_30
.LBB41_27:                              # %if.else.49
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -68(%rbp)
	je	.LBB41_29
# BB#28:                                # %if.then.51
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -69(%rbp)
.LBB41_29:                              # %if.end.52
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_30
.LBB41_30:                              # %if.end.53
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_31:                              # %sw.bb.54
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -69(%rbp)
	je	.LBB41_33
# BB#32:                                # %if.then.56
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$0, -69(%rbp)
.LBB41_33:                              # %if.end.57
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_34:                              # %sw.bb.58
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -68(%rbp)
	je	.LBB41_37
# BB#35:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -69(%rbp)
	jne	.LBB41_37
# BB#36:                                # %if.then.63
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -70(%rbp)
	jmp	.LBB41_38
.LBB41_37:                              # %if.end.64
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_38:                              # %sw.epilog
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_39
.LBB41_39:                              # %if.end.65
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_40
.LBB41_40:                              # %if.end.66
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -68(%rbp)
	je	.LBB41_58
# BB#41:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -70(%rbp)
	je	.LBB41_58
# BB#42:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB41_58
# BB#43:                                # %if.then.76
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB41_45
# BB#44:                                # %if.then.80
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_45:                              # %if.end.81
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	cmpl	$101, %eax
	jne	.LBB41_49
# BB#46:                                # %if.then.86
                                        #   in Loop: Header=BB41_1 Depth=1
	movabsq	$.L.str.159, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB41_47
	jmp	.LBB41_48
.LBB41_47:                              # %if.then.88
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$0, -68(%rbp)
	movb	$0, -70(%rbp)
.LBB41_48:                              # %if.end.89
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_54
.LBB41_49:                              # %if.else.90
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	cmpl	$102, %eax
	jne	.LBB41_53
# BB#50:                                # %if.then.95
                                        #   in Loop: Header=BB41_1 Depth=1
	movabsq	$.L.str.254, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB41_51
	jmp	.LBB41_52
.LBB41_51:                              # %if.then.97
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$0, -68(%rbp)
	movb	$0, -70(%rbp)
.LBB41_52:                              # %if.end.98
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_53
.LBB41_53:                              # %if.end.99
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_54
.LBB41_54:                              # %if.end.100
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -68(%rbp)
	je	.LBB41_57
# BB#55:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -70(%rbp)
	je	.LBB41_57
# BB#56:                                # %if.then.106
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	$1, %edx
	movb	$0, -68(%rbp)
	movb	$0, -70(%rbp)
	movq	-64(%rbp), %rdi
	movl	-48(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movq	-40(%rbp), %rax
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB41_1
.LBB41_57:                              # %if.end.107
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_58
.LBB41_58:                              # %if.end.108
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -67(%rbp)
	je	.LBB41_68
# BB#59:                                # %if.then.110
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB41_61
# BB#60:                                # %if.then.114
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_61:                              # %if.end.115
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB41_62:                              # %for.cond
                                        #   Parent Loop BB41_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB41_64
# BB#63:                                # %land.rhs
                                        #   in Loop: Header=BB41_62 Depth=2
	movq	-80(%rbp), %rax
	movzbl	(%rax), %edi
	callq	endtoken
	xorb	$-1, %al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB41_64:                              # %land.end
                                        #   in Loop: Header=BB41_62 Depth=2
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB41_65
	jmp	.LBB41_67
.LBB41_65:                              # %for.body
                                        #   in Loop: Header=BB41_62 Depth=2
	jmp	.LBB41_66
.LBB41_66:                              # %for.inc
                                        #   in Loop: Header=BB41_62 Depth=2
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB41_62
.LBB41_67:                              # %for.end
                                        #   in Loop: Header=BB41_1 Depth=1
	leaq	-32(%rbp), %rdi
	movl	lb+8, %esi
	callq	linebuffer_setlen
	movq	-16(%rbp), %rdi
	movq	lb+16, %rsi
	callq	strcpy
	movl	lineno, %ecx
	movl	%ecx, -44(%rbp)
	movq	linecharno, %rsi
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	dbp, %rdi
	movq	lb+16, %rdx
	subq	%rdx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -64(%rbp)
	movq	-80(%rbp), %rdx
	movq	dbp, %rsi
	subq	%rsi, %rdx
	movl	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	lb+16, %rsi
	subq	%rsi, %rdx
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, dbp
	movb	$0, -67(%rbp)
	movb	$1, -68(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB41_1
.LBB41_68:                              # %if.else.133
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -65(%rbp)
	jne	.LBB41_79
# BB#69:                                # %land.lhs.true.135
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -66(%rbp)
	jne	.LBB41_79
# BB#70:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB41_1 Depth=1
	testb	$1, -68(%rbp)
	jne	.LBB41_79
# BB#71:                                # %if.then.139
                                        #   in Loop: Header=BB41_1 Depth=1
	movsbl	-53(%rbp), %edi
	callq	c_tolower
	movl	%eax, %edi
	subl	$102, %eax
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB41_75
	jmp	.LBB41_86
.LBB41_86:                              # %if.then.139
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB41_78
	jmp	.LBB41_72
.LBB41_72:                              # %sw.bb.142
                                        #   in Loop: Header=BB41_1 Depth=1
	movabsq	$.L.str.255, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB41_73
	jmp	.LBB41_74
.LBB41_73:                              # %if.then.144
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -67(%rbp)
.LBB41_74:                              # %if.end.145
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_75:                              # %sw.bb.146
                                        #   in Loop: Header=BB41_1 Depth=1
	movabsq	$.L.str.256, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB41_76
	jmp	.LBB41_77
.LBB41_76:                              # %if.then.148
                                        #   in Loop: Header=BB41_1 Depth=1
	movb	$1, -67(%rbp)
.LBB41_77:                              # %if.end.149
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_78:                              # %sw.epilog.150
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_79
.LBB41_79:                              # %if.end.151
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_80
.LBB41_80:                              # %if.end.152
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_1
.LBB41_81:                              # %while.end
	movq	-16(%rbp), %rdi
	callq	free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Pascal_functions, .Lfunc_end41-Pascal_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Perl_functions,@function
Perl_functions:                         # @Perl_functions
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
	subq	$128, %rsp
	movabsq	$.L.str.259, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	savestr
	movq	%rax, -16(%rbp)
.LBB42_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_13 Depth 2
                                        #     Child Loop BB42_22 Depth 2
                                        #     Child Loop BB42_63 Depth 2
                                        #     Child Loop BB42_56 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -89(%rbp)          # 1-byte Spill
	jne	.LBB42_2
	jmp	.LBB42_3
.LBB42_2:                               # %land.rhs
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -24(%rbp)
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB42_3:                               # %land.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB42_4
	jmp	.LBB42_77
.LBB42_4:                               # %while.body
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	skip_spaces
	movabsq	$.L.str.106, %rsi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB42_5
	jmp	.LBB42_8
.LBB42_5:                               # %land.lhs.true
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	7(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB42_6
	jmp	.LBB42_8
.LBB42_6:                               # %land.lhs.true.5
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB42_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	free
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	get_tag
	jmp	.LBB42_76
.LBB42_8:                               # %if.else
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$.L.str.260, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB42_9
	jmp	.LBB42_34
.LBB42_9:                               # %land.lhs.true.9
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB42_10
	jmp	.LBB42_34
.LBB42_10:                              # %land.lhs.true.12
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB42_34
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_12
.LBB42_12:                              # %subr
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB42_13:                              # %while.cond.18
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB42_14
	jmp	.LBB42_15
.LBB42_14:                              # %while.body.20
                                        #   in Loop: Header=BB42_13 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB42_13
.LBB42_15:                              # %while.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB42_17
# BB#16:                                # %if.then.21
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_1
.LBB42_17:                              # %if.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	$58, %esi
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB42_29
# BB#18:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB42_29
# BB#19:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB42_29
# BB#20:                                # %if.then.30
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpl	$0, class_qualify
	jne	.LBB42_28
# BB#21:                                # %if.then.32
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB42_22:                              # %while.cond.34
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$58, %esi
	movq	-48(%rbp), %rdi
	callq	strchr
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	movb	%cl, -90(%rbp)          # 1-byte Spill
	je	.LBB42_25
# BB#23:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB42_22 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	cmpq	-24(%rbp), %rdx
	movb	%cl, -90(%rbp)          # 1-byte Spill
	jae	.LBB42_25
# BB#24:                                # %land.rhs.41
                                        #   in Loop: Header=BB42_22 Depth=2
	movq	-56(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$58, %ecx
	sete	%dl
	movb	%dl, -90(%rbp)          # 1-byte Spill
.LBB42_25:                              # %land.end.46
                                        #   in Loop: Header=BB42_22 Depth=2
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB42_26
	jmp	.LBB42_27
.LBB42_26:                              # %while.body.47
                                        #   in Loop: Header=BB42_22 Depth=2
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB42_22
.LBB42_27:                              # %while.end.49
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB42_28:                              # %if.end.50
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB42_33
.LBB42_29:                              # %if.else.56
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpl	$0, class_qualify
	je	.LBB42_31
# BB#30:                                # %if.then.58
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$.L.str.133, %rsi
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -57(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	concat
	movl	$1, %edx
	movq	%rax, -72(%rbp)
	movb	-57(%rbp), %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	movq	-72(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %rsi
	subq	%rsi, %rax
	addq	$1, %rax
	movl	%eax, %r8d
	movl	lineno, %r9d
	movq	linecharno, %rax
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	make_tag
	movq	-72(%rbp), %rdi
	callq	free
	jmp	.LBB42_32
.LBB42_31:                              # %if.else.67
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB42_32:                              # %if.end.77
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_33
.LBB42_33:                              # %if.end.78
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_75
.LBB42_34:                              # %if.else.79
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$.L.str.261, %rsi
	movl	$12, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB42_35
	jmp	.LBB42_37
.LBB42_35:                              # %land.lhs.true.82
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB42_36
	jmp	.LBB42_37
.LBB42_36:                              # %land.lhs.true.86
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$13, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB42_40
.LBB42_37:                              # %lor.lhs.false
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$.L.str.262, %rsi
	movl	$19, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB42_38
	jmp	.LBB42_43
.LBB42_38:                              # %land.lhs.true.93
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	19(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB42_39
	jmp	.LBB42_43
.LBB42_39:                              # %land.lhs.true.97
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$20, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB42_43
.LBB42_40:                              # %if.then.102
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	jne	.LBB42_42
# BB#41:                                # %if.then.106
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
.LBB42_42:                              # %if.end.109
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_12
.LBB42_43:                              # %if.else.110
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpl	$0, globals
	je	.LBB42_73
# BB#44:                                # %if.then.112
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$.L.str.263, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB42_45
	jmp	.LBB42_47
.LBB42_45:                              # %land.lhs.true.115
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB42_46
	jmp	.LBB42_47
.LBB42_46:                              # %land.lhs.true.119
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$3, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	movb	%cl, -109(%rbp)         # 1-byte Spill
	jne	.LBB42_51
.LBB42_47:                              # %lor.rhs
                                        #   in Loop: Header=BB42_1 Depth=1
	movabsq	$.L.str.246, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strneq
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	testb	$1, %al
	movb	%r8b, -110(%rbp)        # 1-byte Spill
	jne	.LBB42_48
	jmp	.LBB42_50
.LBB42_48:                              # %land.lhs.true.126
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -110(%rbp)         # 1-byte Spill
	jne	.LBB42_49
	jmp	.LBB42_50
.LBB42_49:                              # %land.rhs.130
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -110(%rbp)         # 1-byte Spill
.LBB42_50:                              # %land.end.135
                                        #   in Loop: Header=BB42_1 Depth=1
	movb	-110(%rbp), %al         # 1-byte Reload
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB42_51:                              # %lor.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movb	-109(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -73(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	testb	$1, -73(%rbp)
	je	.LBB42_61
# BB#52:                                # %land.lhs.true.138
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	je	.LBB42_55
# BB#53:                                # %lor.lhs.false.142
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$64, %ecx
	je	.LBB42_55
# BB#54:                                # %lor.lhs.false.146
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB42_61
.LBB42_55:                              # %if.then.150
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
.LBB42_56:                              # %do.body
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
# BB#57:                                # %do.cond
                                        #   in Loop: Header=BB42_56 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalnum
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -111(%rbp)         # 1-byte Spill
	jne	.LBB42_59
# BB#58:                                # %lor.rhs.156
                                        #   in Loop: Header=BB42_56 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	sete	%dl
	movb	%dl, -111(%rbp)         # 1-byte Spill
.LBB42_59:                              # %lor.end.160
                                        #   in Loop: Header=BB42_56 Depth=2
	movb	-111(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB42_56
# BB#60:                                # %do.end
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_72
.LBB42_61:                              # %if.else.161
                                        #   in Loop: Header=BB42_1 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB42_70
# BB#62:                                # %if.then.163
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_63
.LBB42_63:                              # %while.cond.164
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -112(%rbp)         # 1-byte Spill
	je	.LBB42_67
# BB#64:                                # %land.lhs.true.168
                                        #   in Loop: Header=BB42_63 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$59, %eax
	movb	%cl, -112(%rbp)         # 1-byte Spill
	je	.LBB42_67
# BB#65:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB42_63 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$61, %eax
	movb	%cl, -112(%rbp)         # 1-byte Spill
	je	.LBB42_67
# BB#66:                                # %land.rhs.176
                                        #   in Loop: Header=BB42_63 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	setne	%dl
	movb	%dl, -112(%rbp)         # 1-byte Spill
.LBB42_67:                              # %land.end.180
                                        #   in Loop: Header=BB42_63 Depth=2
	movb	-112(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB42_68
	jmp	.LBB42_69
.LBB42_68:                              # %while.body.181
                                        #   in Loop: Header=BB42_63 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB42_63
.LBB42_69:                              # %while.end.183
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_71
.LBB42_70:                              # %if.else.184
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_1
.LBB42_71:                              # %if.end.185
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_72
.LBB42_72:                              # %if.end.186
                                        #   in Loop: Header=BB42_1 Depth=1
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB42_73:                              # %if.end.196
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_74
.LBB42_74:                              # %if.end.197
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_75
.LBB42_75:                              # %if.end.198
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_76
.LBB42_76:                              # %if.end.199
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_1
.LBB42_77:                              # %while.end.200
	movq	-16(%rbp), %rdi
	callq	free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Perl_functions, .Lfunc_end42-Perl_functions
	.cfi_endproc

	.align	16, 0x90
	.type	PHP_functions,@function
PHP_functions:                          # @PHP_functions
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -25(%rbp)
.LBB43_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_7 Depth 2
                                        #     Child Loop BB43_17 Depth 2
                                        #     Child Loop BB43_27 Depth 2
                                        #     Child Loop BB43_40 Depth 2
                                        #     Child Loop BB43_51 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -27(%rbp)          # 1-byte Spill
	jne	.LBB43_2
	jmp	.LBB43_3
.LBB43_2:                               # %land.rhs
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -27(%rbp)          # 1-byte Spill
.LBB43_3:                               # %land.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	-27(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB43_4
	jmp	.LBB43_59
.LBB43_4:                               # %while.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB43_10
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB43_10
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_7
.LBB43_7:                               # %while.cond.3
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB43_8
	jmp	.LBB43_9
.LBB43_8:                               # %while.body.5
                                        #   in Loop: Header=BB43_7 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_7
.LBB43_9:                               # %while.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	movb	$0, -25(%rbp)
	jmp	.LBB43_58
.LBB43_10:                              # %if.else
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$.L.str.102, %rsi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB43_11
	jmp	.LBB43_22
.LBB43_11:                              # %land.lhs.true.13
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB43_12
	jmp	.LBB43_22
.LBB43_12:                              # %land.lhs.true.16
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$9, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB43_22
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB43_15
# BB#14:                                # %if.then.24
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
.LBB43_15:                              # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB43_20
# BB#16:                                # %if.then.30
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB43_17:                              # %while.cond.31
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB43_18
	jmp	.LBB43_19
.LBB43_18:                              # %while.body.34
                                        #   in Loop: Header=BB43_17 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_17
.LBB43_19:                              # %while.end.36
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB43_21
.LBB43_20:                              # %if.else.46
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, -25(%rbp)
.LBB43_21:                              # %if.end.47
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_57
.LBB43_22:                              # %if.else.48
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$.L.str.167, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB43_23
	jmp	.LBB43_34
.LBB43_23:                              # %land.lhs.true.51
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB43_24
	jmp	.LBB43_34
.LBB43_24:                              # %land.lhs.true.55
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB43_34
# BB#25:                                # %if.then.60
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB43_32
# BB#26:                                # %if.then.64
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB43_27:                              # %while.cond.65
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -28(%rbp)          # 1-byte Spill
	je	.LBB43_29
# BB#28:                                # %land.rhs.69
                                        #   in Loop: Header=BB43_27 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	xorb	$-1, %al
	movb	%al, -28(%rbp)          # 1-byte Spill
.LBB43_29:                              # %land.end.73
                                        #   in Loop: Header=BB43_27 Depth=2
	movb	-28(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB43_30
	jmp	.LBB43_31
.LBB43_30:                              # %while.body.74
                                        #   in Loop: Header=BB43_27 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_27
.LBB43_31:                              # %while.end.76
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB43_33
.LBB43_32:                              # %if.else.86
                                        #   in Loop: Header=BB43_1 Depth=1
	movb	$1, -25(%rbp)
.LBB43_33:                              # %if.end.87
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_56
.LBB43_34:                              # %if.else.88
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$.L.str.147, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB43_35
	jmp	.LBB43_45
.LBB43_35:                              # %land.lhs.true.91
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB43_45
# BB#36:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	cmpl	$40, %edx
	jne	.LBB43_45
# BB#37:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	je	.LBB43_39
# BB#38:                                # %lor.lhs.false
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB43_45
.LBB43_39:                              # %if.then.107
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -26(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB43_40:                              # %while.cond.109
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	movsbl	-26(%rbp), %esi
	cmpl	%esi, %eax
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB43_42
# BB#41:                                # %land.rhs.114
                                        #   in Loop: Header=BB43_40 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -29(%rbp)          # 1-byte Spill
.LBB43_42:                              # %land.end.118
                                        #   in Loop: Header=BB43_40 Depth=2
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB43_43
	jmp	.LBB43_44
.LBB43_43:                              # %while.body.119
                                        #   in Loop: Header=BB43_40 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_40
.LBB43_44:                              # %while.end.121
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB43_55
.LBB43_45:                              # %if.else.131
                                        #   in Loop: Header=BB43_1 Depth=1
	cmpl	$0, members
	je	.LBB43_54
# BB#46:                                # %land.lhs.true.133
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$.L.str.267, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB43_47
	jmp	.LBB43_54
.LBB43_47:                              # %land.lhs.true.136
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB43_48
	jmp	.LBB43_54
.LBB43_48:                              # %land.lhs.true.140
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB43_54
# BB#49:                                # %land.lhs.true.145
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	jne	.LBB43_54
# BB#50:                                # %if.then.149
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB43_51:                              # %while.cond.150
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB43_52
	jmp	.LBB43_53
.LBB43_52:                              # %while.body.153
                                        #   in Loop: Header=BB43_51 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB43_51
.LBB43_53:                              # %while.end.155
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB43_54:                              # %if.end.165
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_55
.LBB43_55:                              # %if.end.166
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_56
.LBB43_56:                              # %if.end.167
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_57
.LBB43_57:                              # %if.end.168
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_58
.LBB43_58:                              # %if.end.169
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_1
.LBB43_59:                              # %while.end.170
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	PHP_functions, .Lfunc_end43-PHP_functions
	.cfi_endproc

	.align	16, 0x90
	.type	PS_functions,@function
PS_functions:                           # @PS_functions
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.LBB44_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_6 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB44_2
	jmp	.LBB44_3
.LBB44_2:                               # %land.rhs
                                        #   in Loop: Header=BB44_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB44_3:                               # %land.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_4
	jmp	.LBB44_19
.LBB44_4:                               # %while.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB44_13
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB44_6:                               # %for.cond
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB44_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB44_6 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$32, %eax
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB44_9
# BB#8:                                 # %land.rhs.8
                                        #   in Loop: Header=BB44_6 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$123, %ecx
	setne	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB44_9:                               # %land.end.12
                                        #   in Loop: Header=BB44_6 Depth=2
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_10
	jmp	.LBB44_12
.LBB44_10:                              # %for.body
                                        #   in Loop: Header=BB44_6 Depth=2
	jmp	.LBB44_11
.LBB44_11:                              # %for.inc
                                        #   in Loop: Header=BB44_6 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB44_6
.LBB44_12:                              # %for.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB44_18
.LBB44_13:                              # %if.else
                                        #   in Loop: Header=BB44_1 Depth=1
	movabsq	$.L.str.270, %rsi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB44_14
	jmp	.LBB44_17
.LBB44_14:                              # %land.lhs.true.20
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	8(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB44_15
	jmp	.LBB44_17
.LBB44_15:                              # %land.lhs.true.24
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$9, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB44_17
# BB#16:                                # %if.then.28
                                        #   in Loop: Header=BB44_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	get_tag
.LBB44_17:                              # %if.end
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_18
.LBB44_18:                              # %if.end.29
                                        #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_1
.LBB44_19:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	PS_functions, .Lfunc_end44-PS_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Prolog_functions,@function
Prolog_functions:                       # @Prolog_functions
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
.LBB45_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -41(%rbp)          # 1-byte Spill
	jne	.LBB45_2
	jmp	.LBB45_3
.LBB45_2:                               # %land.rhs
                                        #   in Loop: Header=BB45_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB45_3:                               # %land.end
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB45_4
	jmp	.LBB45_22
.LBB45_4:                               # %while.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB45_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_6:                               # %if.else
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB45_7
	jmp	.LBB45_8
.LBB45_7:                               # %if.then.5
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_8:                               # %if.else.6
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB45_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB45_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB45_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	prolog_skip_comment
	jmp	.LBB45_19
.LBB45_11:                              # %if.else.16
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	prolog_pr
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jbe	.LBB45_18
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB45_1 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB45_14
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	jmp	.LBB45_17
.LBB45_14:                              # %if.else.25
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	-40(%rbp), %rax
	jbe	.LBB45_16
# BB#15:                                # %if.then.29
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	%rax, -24(%rbp)
.LBB45_16:                              # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_17
.LBB45_17:                              # %if.end.33
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rax)
.LBB45_18:                              # %if.end.36
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_19
.LBB45_19:                              # %if.end.37
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_20
.LBB45_20:                              # %if.end.38
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_21
.LBB45_21:                              # %if.end.39
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_1
.LBB45_22:                              # %while.end
	movq	-24(%rbp), %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Prolog_functions, .Lfunc_end45-Prolog_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Python_functions,@function
Python_functions:                       # @Python_functions
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.LBB46_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_11 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB46_2
	jmp	.LBB46_3
.LBB46_2:                               # %land.rhs
                                        #   in Loop: Header=BB46_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB46_3:                               # %land.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB46_4
	jmp	.LBB46_17
.LBB46_4:                               # %while.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movabsq	$.L.str.125, %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB46_5
	jmp	.LBB46_7
.LBB46_5:                               # %land.lhs.true
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB46_6
	jmp	.LBB46_7
.LBB46_6:                               # %land.lhs.true.4
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB46_10
.LBB46_7:                               # %lor.lhs.false
                                        #   in Loop: Header=BB46_1 Depth=1
	movabsq	$.L.str.167, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB46_8
	jmp	.LBB46_16
.LBB46_8:                               # %land.lhs.true.8
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB46_9
	jmp	.LBB46_16
.LBB46_9:                               # %land.lhs.true.11
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB46_16
.LBB46_10:                              # %if.then
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB46_11:                              # %while.cond.16
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jne	.LBB46_13
# BB#12:                                # %land.rhs.18
                                        #   in Loop: Header=BB46_11 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB46_13:                              # %land.end.20
                                        #   in Loop: Header=BB46_11 Depth=2
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB46_14
	jmp	.LBB46_15
.LBB46_14:                              # %while.body.21
                                        #   in Loop: Header=BB46_11 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB46_11
.LBB46_15:                              # %while.end
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB46_16:                              # %if.end
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_1
.LBB46_17:                              # %while.end.27
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Python_functions, .Lfunc_end46-Python_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Ruby_functions,@function
Ruby_functions:                         # @Ruby_functions
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movb	$0, -17(%rbp)
	movb	$0, -18(%rbp)
	movb	$0, -19(%rbp)
	movb	$0, -20(%rbp)
.LBB47_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_8 Depth 2
                                        #     Child Loop BB47_39 Depth 2
                                        #     Child Loop BB47_48 Depth 2
                                        #     Child Loop BB47_64 Depth 2
                                        #       Child Loop BB47_92 Depth 3
                                        #         Child Loop BB47_104 Depth 4
                                        #       Child Loop BB47_129 Depth 3
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -89(%rbp)          # 1-byte Spill
	jne	.LBB47_2
	jmp	.LBB47_3
.LBB47_2:                               # %land.rhs
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB47_3:                               # %land.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_4
	jmp	.LBB47_138
.LBB47_4:                               # %while.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	$0, -21(%rbp)
	movb	$0, -22(%rbp)
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	testb	$1, -20(%rbp)
	jne	.LBB47_26
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalpha
	testb	$1, %al
	jne	.LBB47_6
	jmp	.LBB47_26
.LBB47_6:                               # %land.lhs.true.4
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isupper
	testb	$1, %al
	jne	.LBB47_7
	jmp	.LBB47_26
.LBB47_7:                               # %if.then
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB47_8:                               # %for.cond
                                        #   Parent Loop BB47_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalnum
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -90(%rbp)          # 1-byte Spill
	jne	.LBB47_11
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB47_8 Depth=2
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$95, %edx
	movb	%al, -90(%rbp)          # 1-byte Spill
	je	.LBB47_11
# BB#10:                                # %lor.rhs
                                        #   in Loop: Header=BB47_8 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	sete	%dl
	movb	%dl, -90(%rbp)          # 1-byte Spill
.LBB47_11:                              # %lor.end
                                        #   in Loop: Header=BB47_8 Depth=2
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_12
	jmp	.LBB47_16
.LBB47_12:                              # %for.body
                                        #   in Loop: Header=BB47_8 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB47_14
# BB#13:                                # %if.then.19
                                        #   in Loop: Header=BB47_8 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB47_14:                              # %if.end
                                        #   in Loop: Header=BB47_8 Depth=2
	jmp	.LBB47_15
.LBB47_15:                              # %for.inc
                                        #   in Loop: Header=BB47_8 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB47_8
.LBB47_16:                              # %for.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB47_25
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB47_24
# BB#18:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$61, %ecx
	je	.LBB47_24
# BB#19:                                # %lor.lhs.false.32
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$62, %ecx
	je	.LBB47_24
# BB#20:                                # %if.then.37
                                        #   in Loop: Header=BB47_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB47_23
# BB#21:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB47_23
# BB#22:                                # %if.then.43
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB47_23:                              # %if.end.45
                                        #   in Loop: Header=BB47_1 Depth=1
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB47_24:                              # %if.end.51
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_25
.LBB47_25:                              # %if.end.52
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_137
.LBB47_26:                              # %if.else
                                        #   in Loop: Header=BB47_1 Depth=1
	testb	$1, -20(%rbp)
	jne	.LBB47_61
# BB#27:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$.L.str.125, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	testb	$1, %al
	movb	%r8b, -91(%rbp)         # 1-byte Spill
	jne	.LBB47_28
	jmp	.LBB47_30
.LBB47_28:                              # %land.lhs.true.57
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -91(%rbp)          # 1-byte Spill
	jne	.LBB47_29
	jmp	.LBB47_30
.LBB47_29:                              # %land.rhs.61
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -91(%rbp)          # 1-byte Spill
.LBB47_30:                              # %land.end.66
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	-91(%rbp), %al          # 1-byte Reload
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -22(%rbp)
	testb	$1, %al
	jne	.LBB47_38
# BB#31:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$.L.str.167, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	testb	$1, %al
	movb	%r8b, -92(%rbp)         # 1-byte Spill
	jne	.LBB47_32
	jmp	.LBB47_34
.LBB47_32:                              # %land.lhs.true.71
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -92(%rbp)          # 1-byte Spill
	jne	.LBB47_33
	jmp	.LBB47_34
.LBB47_33:                              # %land.rhs.75
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -92(%rbp)          # 1-byte Spill
.LBB47_34:                              # %land.end.80
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	-92(%rbp), %al          # 1-byte Reload
	movb	%al, %cl
	andb	$1, %cl
	movb	%cl, -21(%rbp)
	testb	$1, %al
	jne	.LBB47_38
# BB#35:                                # %lor.lhs.false.83
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$.L.str.275, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_36
	jmp	.LBB47_61
.LBB47_36:                              # %land.lhs.true.86
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	6(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB47_37
	jmp	.LBB47_61
.LBB47_37:                              # %land.lhs.true.90
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$7, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB47_61
.LBB47_38:                              # %if.then.95
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	$5, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB47_39:                              # %while.cond.96
                                        #   Parent Loop BB47_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -93(%rbp)          # 1-byte Spill
	jne	.LBB47_40
	jmp	.LBB47_41
.LBB47_40:                              # %lor.rhs.98
                                        #   in Loop: Header=BB47_39 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	sete	%dl
	movb	%dl, -93(%rbp)          # 1-byte Spill
.LBB47_41:                              # %lor.end.102
                                        #   in Loop: Header=BB47_39 Depth=2
	movb	-93(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_42
	jmp	.LBB47_43
.LBB47_42:                              # %while.body.103
                                        #   in Loop: Header=BB47_39 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB47_39
.LBB47_43:                              # %while.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$5, %rax
	jbe	.LBB47_46
# BB#44:                                # %land.lhs.true.110
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$Ruby_functions.self_name, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_45
	jmp	.LBB47_46
.LBB47_45:                              # %if.then.113
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -32(%rbp)
.LBB47_46:                              # %if.end.115
                                        #   in Loop: Header=BB47_1 Depth=1
	testb	$1, -22(%rbp)
	je	.LBB47_56
# BB#47:                                # %if.then.117
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB47_48:                              # %for.cond.118
                                        #   Parent Loop BB47_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -94(%rbp)          # 1-byte Spill
	jae	.LBB47_50
# BB#49:                                # %land.rhs.121
                                        #   in Loop: Header=BB47_48 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	setne	%dl
	movb	%dl, -94(%rbp)          # 1-byte Spill
.LBB47_50:                              # %land.end.125
                                        #   in Loop: Header=BB47_48 Depth=2
	movb	-94(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_51
	jmp	.LBB47_53
.LBB47_51:                              # %for.body.126
                                        #   in Loop: Header=BB47_48 Depth=2
	jmp	.LBB47_52
.LBB47_52:                              # %for.inc.127
                                        #   in Loop: Header=BB47_48 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB47_48
.LBB47_53:                              # %for.end.129
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB47_55
# BB#54:                                # %if.then.133
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB47_55:                              # %if.end.135
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_56
.LBB47_56:                              # %if.end.136
                                        #   in Loop: Header=BB47_1 Depth=1
	testb	$1, -21(%rbp)
	je	.LBB47_60
# BB#57:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB47_1 Depth=1
	movabsq	$.L.str.276, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_58
	jmp	.LBB47_60
.LBB47_58:                              # %land.lhs.true.142
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB47_60
# BB#59:                                # %if.then.146
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_1
.LBB47_60:                              # %if.end.147
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB47_136
.LBB47_61:                              # %if.else.157
                                        #   in Loop: Header=BB47_1 Depth=1
	testb	$1, -20(%rbp)
	jne	.LBB47_63
# BB#62:                                # %if.then.159
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	$0, -19(%rbp)
	movb	$0, -18(%rbp)
	movb	$0, -17(%rbp)
.LBB47_63:                              # %if.end.160
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_64
.LBB47_64:                              # %while.cond.161
                                        #   Parent Loop BB47_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_92 Depth 3
                                        #         Child Loop BB47_104 Depth 4
                                        #       Child Loop BB47_129 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -95(%rbp)          # 1-byte Spill
	je	.LBB47_66
# BB#65:                                # %land.rhs.164
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	setne	%dl
	movb	%dl, -95(%rbp)          # 1-byte Spill
.LBB47_66:                              # %land.end.168
                                        #   in Loop: Header=BB47_64 Depth=2
	movb	-95(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_67
	jmp	.LBB47_135
.LBB47_67:                              # %while.body.169
                                        #   in Loop: Header=BB47_64 Depth=2
	testb	$1, -20(%rbp)
	jne	.LBB47_88
# BB#68:                                # %if.then.171
                                        #   in Loop: Header=BB47_64 Depth=2
	movabsq	$.L.str.277, %rsi
	movl	$11, %eax
	movl	%eax, %edx
	movb	$0, -19(%rbp)
	movb	$0, -18(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_69
	jmp	.LBB47_72
.LBB47_69:                              # %land.lhs.true.174
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	movzbl	11(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB47_70
	jmp	.LBB47_72
.LBB47_70:                              # %land.lhs.true.178
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	addq	$12, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB47_72
# BB#71:                                # %if.then.183
                                        #   in Loop: Header=BB47_64 Depth=2
	movb	$1, -17(%rbp)
	jmp	.LBB47_87
.LBB47_72:                              # %if.else.184
                                        #   in Loop: Header=BB47_64 Depth=2
	movabsq	$.L.str.278, %rsi
	movl	$11, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_73
	jmp	.LBB47_76
.LBB47_73:                              # %land.lhs.true.187
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	movzbl	11(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB47_74
	jmp	.LBB47_76
.LBB47_74:                              # %land.lhs.true.191
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	addq	$12, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB47_76
# BB#75:                                # %if.then.196
                                        #   in Loop: Header=BB47_64 Depth=2
	movb	$1, -18(%rbp)
	jmp	.LBB47_86
.LBB47_76:                              # %if.else.197
                                        #   in Loop: Header=BB47_64 Depth=2
	movabsq	$.L.str.279, %rsi
	movl	$13, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_77
	jmp	.LBB47_80
.LBB47_77:                              # %land.lhs.true.200
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	movzbl	13(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB47_78
	jmp	.LBB47_80
.LBB47_78:                              # %land.lhs.true.204
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	addq	$14, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB47_80
# BB#79:                                # %if.then.209
                                        #   in Loop: Header=BB47_64 Depth=2
	movb	$1, -17(%rbp)
	movb	$1, -18(%rbp)
	jmp	.LBB47_85
.LBB47_80:                              # %if.else.210
                                        #   in Loop: Header=BB47_64 Depth=2
	movabsq	$.L.str.280, %rsi
	movl	$12, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB47_81
	jmp	.LBB47_84
.LBB47_81:                              # %land.lhs.true.213
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	movzbl	12(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB47_82
	jmp	.LBB47_84
.LBB47_82:                              # %land.lhs.true.217
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	addq	$13, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB47_84
# BB#83:                                # %if.then.222
                                        #   in Loop: Header=BB47_64 Depth=2
	movb	$1, -19(%rbp)
.LBB47_84:                              # %if.end.223
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_85
.LBB47_85:                              # %if.end.224
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_86
.LBB47_86:                              # %if.end.225
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_87
.LBB47_87:                              # %if.end.226
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_88
.LBB47_88:                              # %if.end.227
                                        #   in Loop: Header=BB47_64 Depth=2
	testb	$1, -17(%rbp)
	jne	.LBB47_91
# BB#89:                                # %lor.lhs.false.230
                                        #   in Loop: Header=BB47_64 Depth=2
	testb	$1, -18(%rbp)
	jne	.LBB47_91
# BB#90:                                # %lor.lhs.false.233
                                        #   in Loop: Header=BB47_64 Depth=2
	testb	$1, -19(%rbp)
	je	.LBB47_126
.LBB47_91:                              # %if.then.236
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_92
.LBB47_92:                              # %do.body
                                        #   Parent Loop BB47_1 Depth=1
                                        #     Parent Loop BB47_64 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB47_104 Depth 4
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB47_94
# BB#93:                                # %if.then.241
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
.LBB47_94:                              # %if.end.244
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	skip_name
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB47_96
# BB#95:                                # %if.then.249
                                        #   in Loop: Header=BB47_92 Depth=3
	jmp	.LBB47_118
.LBB47_96:                              # %if.end.250
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB47_98
# BB#97:                                # %if.then.253
                                        #   in Loop: Header=BB47_92 Depth=3
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
	movb	$0, -20(%rbp)
.LBB47_98:                              # %if.end.263
                                        #   in Loop: Header=BB47_92 Depth=3
	testb	$1, -18(%rbp)
	je	.LBB47_100
# BB#99:                                # %if.then.265
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$1, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	$1, %rcx
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	memcpy
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movw	.L.str.281, %r8w
	movw	%r8w, -1(%rax,%rcx)
	movq	-88(%rbp), %rdi
	movq	lb+16, %rdx
	movq	-16(%rbp), %rax
	movq	lb+16, %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r8d
	movq	linecharno, %rax
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	%r9d, %ecx
	movq	%rax, %r9
	callq	pfnote
	movb	$0, -20(%rbp)
.LBB47_100:                             # %if.end.279
                                        #   in Loop: Header=BB47_92 Depth=3
	testb	$1, -19(%rbp)
	je	.LBB47_117
# BB#101:                               # %if.then.281
                                        #   in Loop: Header=BB47_92 Depth=3
	testb	$1, -20(%rbp)
	jne	.LBB47_103
# BB#102:                               # %if.then.283
                                        #   in Loop: Header=BB47_92 Depth=3
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB47_103:                             # %if.end.293
                                        #   in Loop: Header=BB47_92 Depth=3
	movb	$0, -20(%rbp)
.LBB47_104:                             # %while.cond.294
                                        #   Parent Loop BB47_1 Depth=1
                                        #     Parent Loop BB47_64 Depth=2
                                        #       Parent Loop BB47_92 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -101(%rbp)         # 1-byte Spill
	je	.LBB47_107
# BB#105:                               # %land.lhs.true.297
                                        #   in Loop: Header=BB47_104 Depth=4
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$35, %eax
	movb	%cl, -101(%rbp)         # 1-byte Spill
	je	.LBB47_107
# BB#106:                               # %land.rhs.301
                                        #   in Loop: Header=BB47_104 Depth=4
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	setne	%dl
	movb	%dl, -101(%rbp)         # 1-byte Spill
.LBB47_107:                             # %land.end.305
                                        #   in Loop: Header=BB47_104 Depth=4
	movb	-101(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_108
	jmp	.LBB47_114
.LBB47_108:                             # %while.body.306
                                        #   in Loop: Header=BB47_104 Depth=4
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	jne	.LBB47_110
# BB#109:                               # %if.then.310
                                        #   in Loop: Header=BB47_104 Depth=4
	movb	$1, -20(%rbp)
	jmp	.LBB47_113
.LBB47_110:                             # %if.else.311
                                        #   in Loop: Header=BB47_104 Depth=4
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB47_112
# BB#111:                               # %if.then.314
                                        #   in Loop: Header=BB47_104 Depth=4
	movb	$0, -20(%rbp)
.LBB47_112:                             # %if.end.315
                                        #   in Loop: Header=BB47_104 Depth=4
	jmp	.LBB47_113
.LBB47_113:                             # %if.end.316
                                        #   in Loop: Header=BB47_104 Depth=4
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB47_104
.LBB47_114:                             # %while.end.318
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$59, %ecx
	jne	.LBB47_116
# BB#115:                               # %if.then.322
                                        #   in Loop: Header=BB47_92 Depth=3
	movb	$0, -20(%rbp)
.LBB47_116:                             # %if.end.323
                                        #   in Loop: Header=BB47_92 Depth=3
	jmp	.LBB47_117
.LBB47_117:                             # %if.end.324
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
.LBB47_118:                             # %do.cond
                                        #   in Loop: Header=BB47_92 Depth=3
	testb	$1, -19(%rbp)
	je	.LBB47_120
# BB#119:                               # %cond.true
                                        #   in Loop: Header=BB47_92 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$44, %eax
	movb	%cl, -102(%rbp)         # 1-byte Spill
	je	.LBB47_121
	jmp	.LBB47_124
.LBB47_120:                             # %cond.false
                                        #   in Loop: Header=BB47_92 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$44, %eax
	sete	%sil
	movb	%sil, %dil
	andb	$1, %dil
	movb	%dil, -20(%rbp)
	testb	$1, %sil
	movb	%cl, -102(%rbp)         # 1-byte Spill
	jne	.LBB47_121
	jmp	.LBB47_124
.LBB47_121:                             # %land.rhs.336
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	movb	%dl, -103(%rbp)         # 1-byte Spill
	je	.LBB47_123
# BB#122:                               # %land.rhs.341
                                        #   in Loop: Header=BB47_92 Depth=3
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	setne	%dl
	movb	%dl, -103(%rbp)         # 1-byte Spill
.LBB47_123:                             # %land.end.345
                                        #   in Loop: Header=BB47_92 Depth=3
	movb	-103(%rbp), %al         # 1-byte Reload
	movb	%al, -102(%rbp)         # 1-byte Spill
.LBB47_124:                             # %land.end.346
                                        #   in Loop: Header=BB47_92 Depth=3
	movb	-102(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_92
# BB#125:                               # %do.end
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_126
.LBB47_126:                             # %if.end.347
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	je	.LBB47_128
# BB#127:                               # %if.then.351
                                        #   in Loop: Header=BB47_64 Depth=2
	movq	-16(%rbp), %rdi
	callq	skip_name
	movq	%rax, -16(%rbp)
.LBB47_128:                             # %if.end.353
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_129
.LBB47_129:                             # %while.cond.354
                                        #   Parent Loop BB47_1 Depth=1
                                        #     Parent Loop BB47_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -104(%rbp)         # 1-byte Spill
	je	.LBB47_132
# BB#130:                               # %land.lhs.true.357
                                        #   in Loop: Header=BB47_129 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$35, %eax
	movb	%cl, -104(%rbp)         # 1-byte Spill
	je	.LBB47_132
# BB#131:                               # %land.rhs.361
                                        #   in Loop: Header=BB47_129 Depth=3
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	movb	%al, -104(%rbp)         # 1-byte Spill
.LBB47_132:                             # %land.end.364
                                        #   in Loop: Header=BB47_129 Depth=3
	movb	-104(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_133
	jmp	.LBB47_134
.LBB47_133:                             # %while.body.365
                                        #   in Loop: Header=BB47_129 Depth=3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB47_129
.LBB47_134:                             # %while.end.367
                                        #   in Loop: Header=BB47_64 Depth=2
	jmp	.LBB47_64
.LBB47_135:                             # %while.end.368
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_136
.LBB47_136:                             # %if.end.369
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_137
.LBB47_137:                             # %if.end.370
                                        #   in Loop: Header=BB47_1 Depth=1
	jmp	.LBB47_1
.LBB47_138:                             # %while.end.371
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Ruby_functions, .Lfunc_end47-Ruby_functions
	.cfi_endproc

	.align	16, 0x90
	.type	Scheme_functions,@function
Scheme_functions:                       # @Scheme_functions
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.LBB48_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_7 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB48_2
	jmp	.LBB48_3
.LBB48_2:                               # %land.rhs
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB48_3:                               # %land.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_4
	jmp	.LBB48_20
.LBB48_4:                               # %while.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$.L.str.287, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB48_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$.L.str.288, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB48_6
	jmp	.LBB48_12
.LBB48_6:                               # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	skip_non_spaces
	movq	%rax, -16(%rbp)
.LBB48_7:                               # %while.cond.4
                                        #   Parent Loop BB48_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -18(%rbp)          # 1-byte Spill
	je	.LBB48_9
# BB#8:                                 # %land.rhs.5
                                        #   in Loop: Header=BB48_7 Depth=2
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	movb	%al, -18(%rbp)          # 1-byte Spill
.LBB48_9:                               # %land.end.8
                                        #   in Loop: Header=BB48_7 Depth=2
	movb	-18(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_10
	jmp	.LBB48_11
.LBB48_10:                              # %while.body.9
                                        #   in Loop: Header=BB48_7 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB48_7
.LBB48_11:                              # %while.end
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	get_tag
.LBB48_12:                              # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$.L.str.289, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB48_13
	jmp	.LBB48_15
.LBB48_13:                              # %land.lhs.true
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB48_14
	jmp	.LBB48_15
.LBB48_14:                              # %land.lhs.true.14
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB48_18
.LBB48_15:                              # %lor.lhs.false.19
                                        #   in Loop: Header=BB48_1 Depth=1
	movabsq	$.L.str.290, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB48_16
	jmp	.LBB48_19
.LBB48_16:                              # %land.lhs.true.22
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB48_17
	jmp	.LBB48_19
.LBB48_17:                              # %land.lhs.true.26
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB48_19
.LBB48_18:                              # %if.then.31
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	get_tag
.LBB48_19:                              # %if.end.32
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_1
.LBB48_20:                              # %while.end.33
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Scheme_functions, .Lfunc_end48-Scheme_functions
	.cfi_endproc

	.align	16, 0x90
	.type	TeX_commands,@function
TeX_commands:                           # @TeX_commands
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -25(%rbp)
	cmpq	$0, TEX_toktab
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.299, %rdi
	movq	TEX_defenv, %rsi
	callq	TEX_decode_env
.LBB49_2:                               # %if.end
	jmp	.LBB49_3
.LBB49_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_7 Depth 2
                                        #       Child Loop BB49_8 Depth 3
                                        #       Child Loop BB49_20 Depth 3
                                        #     Child Loop BB49_25 Depth 2
                                        #     Child Loop BB49_35 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -50(%rbp)          # 1-byte Spill
	jne	.LBB49_4
	jmp	.LBB49_5
.LBB49_4:                               # %land.rhs
                                        #   in Loop: Header=BB49_3 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB49_5:                               # %land.end
                                        #   in Loop: Header=BB49_3 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB49_6
	jmp	.LBB49_46
.LBB49_6:                               # %while.body
                                        #   in Loop: Header=BB49_3 Depth=1
	jmp	.LBB49_7
.LBB49_7:                               # %for.cond
                                        #   Parent Loop BB49_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB49_8 Depth 3
                                        #       Child Loop BB49_20 Depth 3
	jmp	.LBB49_8
.LBB49_8:                               # %while.body.2
                                        #   Parent Loop BB49_3 Depth=1
                                        #     Parent Loop BB49_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -28(%rbp)
	movsbl	-28(%rbp), %esi
	cmpl	$0, %esi
	je	.LBB49_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB49_8 Depth=3
	movsbl	-28(%rbp), %eax
	cmpl	$37, %eax
	jne	.LBB49_11
.LBB49_10:                              # %if.then.8
                                        #   in Loop: Header=BB49_3 Depth=1
	jmp	.LBB49_45
.LBB49_11:                              # %if.end.9
                                        #   in Loop: Header=BB49_8 Depth=3
	cmpb	$0, -25(%rbp)
	jne	.LBB49_16
# BB#12:                                # %if.then.10
                                        #   in Loop: Header=BB49_8 Depth=3
	movsbl	-28(%rbp), %eax
	movl	%eax, %ecx
	subl	$33, %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB49_14
	jmp	.LBB49_47
.LBB49_47:                              # %if.then.10
                                        #   in Loop: Header=BB49_8 Depth=3
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB49_15
	jmp	.LBB49_13
.LBB49_13:                              # %sw.bb
                                        #   in Loop: Header=BB49_8 Depth=3
	movb	-28(%rbp), %al
	movb	%al, -25(%rbp)
	movb	$123, -26(%rbp)
	movb	$125, -27(%rbp)
	jmp	.LBB49_15
.LBB49_14:                              # %sw.bb.12
                                        #   in Loop: Header=BB49_8 Depth=3
	movb	-28(%rbp), %al
	movb	%al, -25(%rbp)
	movb	$60, -26(%rbp)
	movb	$62, -27(%rbp)
.LBB49_15:                              # %sw.epilog
                                        #   in Loop: Header=BB49_8 Depth=3
	jmp	.LBB49_16
.LBB49_16:                              # %if.end.13
                                        #   in Loop: Header=BB49_8 Depth=3
	movsbl	-28(%rbp), %eax
	movsbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB49_18
# BB#17:                                # %if.then.18
                                        #   in Loop: Header=BB49_7 Depth=2
	jmp	.LBB49_19
.LBB49_18:                              # %if.end.19
                                        #   in Loop: Header=BB49_8 Depth=3
	jmp	.LBB49_8
.LBB49_19:                              # %while.end
                                        #   in Loop: Header=BB49_7 Depth=2
	movq	TEX_toktab, %rax
	movq	%rax, -24(%rbp)
.LBB49_20:                              # %for.cond.20
                                        #   Parent Loop BB49_3 Depth=1
                                        #     Parent Loop BB49_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB49_44
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB49_20 Depth=3
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movslq	8(%rax), %rdx
	callq	strneq
	testb	$1, %al
	jne	.LBB49_22
	jmp	.LBB49_42
.LBB49_22:                              # %if.then.26
                                        #   in Loop: Header=BB49_3 Depth=1
	movb	$0, -49(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	8(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	movsbl	-26(%rbp), %esi
	cmpl	%esi, %edx
	jne	.LBB49_24
# BB#23:                                # %if.then.33
                                        #   in Loop: Header=BB49_3 Depth=1
	movb	$1, -49(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB49_24:                              # %if.end.35
                                        #   in Loop: Header=BB49_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB49_25:                              # %for.cond.36
                                        #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB49_29
# BB#26:                                # %land.lhs.true
                                        #   in Loop: Header=BB49_25 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$35, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB49_29
# BB#27:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB49_25 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	movsbl	-26(%rbp), %esi
	cmpl	%esi, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB49_29
# BB#28:                                # %land.rhs.47
                                        #   in Loop: Header=BB49_25 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-27(%rbp), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -65(%rbp)         # 1-byte Spill
.LBB49_29:                              # %land.end.52
                                        #   in Loop: Header=BB49_25 Depth=2
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB49_30
	jmp	.LBB49_32
.LBB49_30:                              # %for.body.53
                                        #   in Loop: Header=BB49_25 Depth=2
	jmp	.LBB49_31
.LBB49_31:                              # %for.inc
                                        #   in Loop: Header=BB49_25 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_25
.LBB49_32:                              # %for.end
                                        #   in Loop: Header=BB49_3 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	lb+8, %edx
	movl	%edx, -48(%rbp)
	testb	$1, -49(%rbp)
	je	.LBB49_34
# BB#33:                                # %lor.lhs.false.57
                                        #   in Loop: Header=BB49_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-27(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB49_41
.LBB49_34:                              # %if.then.62
                                        #   in Loop: Header=BB49_3 Depth=1
	jmp	.LBB49_35
.LBB49_35:                              # %while.cond.63
                                        #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -66(%rbp)          # 1-byte Spill
	je	.LBB49_38
# BB#36:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB49_35 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	movsbl	-26(%rbp), %esi
	cmpl	%esi, %eax
	movb	%cl, -66(%rbp)          # 1-byte Spill
	je	.LBB49_38
# BB#37:                                # %land.rhs.72
                                        #   in Loop: Header=BB49_35 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-27(%rbp), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -66(%rbp)         # 1-byte Spill
.LBB49_38:                              # %land.end.77
                                        #   in Loop: Header=BB49_35 Depth=2
	movb	-66(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB49_39
	jmp	.LBB49_40
.LBB49_39:                              # %while.body.78
                                        #   in Loop: Header=BB49_35 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB49_35
.LBB49_40:                              # %while.end.80
                                        #   in Loop: Header=BB49_3 Depth=1
	movq	-40(%rbp), %rax
	movq	lb+16, %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -48(%rbp)
.LBB49_41:                              # %if.end.85
                                        #   in Loop: Header=BB49_3 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	lb+16, %rcx
	movl	-48(%rbp), %r8d
	movl	lineno, %r9d
	movq	linecharno, %rax
	movq	%rax, (%rsp)
	callq	make_tag
	jmp	.LBB49_45
.LBB49_42:                              # %if.end.86
                                        #   in Loop: Header=BB49_20 Depth=3
	jmp	.LBB49_43
.LBB49_43:                              # %for.inc.87
                                        #   in Loop: Header=BB49_20 Depth=3
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB49_20
.LBB49_44:                              # %for.end.89
                                        #   in Loop: Header=BB49_7 Depth=2
	jmp	.LBB49_7
.LBB49_45:                              # %tex_next_line
                                        #   in Loop: Header=BB49_3 Depth=1
	jmp	.LBB49_3
.LBB49_46:                              # %while.end.90
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	TeX_commands, .Lfunc_end49-TeX_commands
	.cfi_endproc

	.align	16, 0x90
	.type	Texinfo_nodes,@function
Texinfo_nodes:                          # @Texinfo_nodes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.LBB50_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_8 Depth 2
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB50_2
	jmp	.LBB50_3
.LBB50_2:                               # %land.rhs
                                        #   in Loop: Header=BB50_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movb	$1, %al
	movq	lb+16, %rsi
	movq	%rsi, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB50_3:                               # %land.end
                                        #   in Loop: Header=BB50_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_4
	jmp	.LBB50_14
.LBB50_4:                               # %while.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movabsq	$.L.str.307, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB50_5
	jmp	.LBB50_13
.LBB50_5:                               # %land.lhs.true
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB50_6
	jmp	.LBB50_13
.LBB50_6:                               # %land.lhs.true.3
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB50_13
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB50_8:                               # %while.cond.6
                                        #   Parent Loop BB50_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB50_10
# BB#9:                                 # %land.rhs.8
                                        #   in Loop: Header=BB50_8 Depth=2
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB50_10:                              # %land.end.12
                                        #   in Loop: Header=BB50_8 Depth=2
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB50_11
	jmp	.LBB50_12
.LBB50_11:                              # %while.body.13
                                        #   in Loop: Header=BB50_8 Depth=2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB50_8
.LBB50_12:                              # %while.end
                                        #   in Loop: Header=BB50_1 Depth=1
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB50_13:                              # %if.end
                                        #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_1
.LBB50_14:                              # %while.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Texinfo_nodes, .Lfunc_end50-Texinfo_nodes
	.cfi_endproc

	.align	16, 0x90
	.type	Yacc_entries,@function
Yacc_entries:                           # @Yacc_entries
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
	movl	$65536, %eax            # imm = 0x10000
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	C_entries
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Yacc_entries, .Lfunc_end51-Yacc_entries
	.cfi_endproc

	.align	16, 0x90
	.type	just_read_file,@function
just_read_file:                         # @just_read_file
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB52_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	testb	$1, %al
	jne	.LBB52_2
	jmp	.LBB52_3
.LBB52_2:                               # %while.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	jmp	.LBB52_1
.LBB52_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	just_read_file, .Lfunc_end52-just_read_file
	.cfi_endproc

	.align	16, 0x90
	.type	perhaps_more_input,@function
perhaps_more_input:                     # @perhaps_more_input
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	feof
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB53_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB53_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	perhaps_more_input, .Lfunc_end53-perhaps_more_input
	.cfi_endproc

	.align	16, 0x90
	.type	readline,@function
readline:                               # @readline
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	charno, %rsi
	movq	%rsi, linecharno
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	infilename, %rdx
	callq	readline_internal
	movq	%rax, -24(%rbp)
	movl	lineno, %ecx
	addl	$1, %ecx
	movl	%ecx, lineno
	movq	-24(%rbp), %rax
	addq	charno, %rax
	movq	%rax, charno
	cmpl	$0, no_line_directive
	jne	.LBB54_43
# BB#1:                                 # %if.then
	cmpq	$12, -24(%rbp)
	jle	.LBB54_38
# BB#2:                                 # %land.lhs.true
	movabsq	$.L.str.114, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB54_3
	jmp	.LBB54_38
.LBB54_3:                               # %if.then.3
	movabsq	$.L.str.115, %rsi
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movb	$0, %al
	callq	sscanf
	cmpl	$1, %eax
	jl	.LBB54_37
# BB#4:                                 # %land.lhs.true.7
	cmpl	$0, -32(%rbp)
	jle	.LBB54_37
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
.LBB54_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$34, %esi
	movq	-40(%rbp), %rdi
	callq	strchr
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB54_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB54_6 Depth=1
	movq	-40(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$92, %ecx
	sete	%dl
	movb	%dl, -97(%rbp)          # 1-byte Spill
.LBB54_8:                               # %land.end
                                        #   in Loop: Header=BB54_6 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB54_9
	jmp	.LBB54_10
.LBB54_9:                               # %while.body
                                        #   in Loop: Header=BB54_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB54_6
.LBB54_10:                              # %while.end
	cmpq	$0, -40(%rbp)
	je	.LBB54_36
# BB#11:                                # %if.then.17
	movb	$0, readline.discard_until_line_directive
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rdi
	callq	canonicalize_filename
	movq	-64(%rbp), %rdi
	movq	tagfiledir, %rsi
	callq	absolute_filename
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	callq	filename_is_absolute
	testb	$1, %al
	jne	.LBB54_13
# BB#12:                                # %lor.lhs.false
	movq	curfdp, %rax
	movq	8(%rax), %rdi
	callq	filename_is_absolute
	testb	$1, %al
	jne	.LBB54_13
	jmp	.LBB54_14
.LBB54_13:                              # %if.then.26
	movq	-48(%rbp), %rdi
	callq	savestr
	movq	%rax, -56(%rbp)
	jmp	.LBB54_15
.LBB54_14:                              # %if.else
	movq	-48(%rbp), %rdi
	movq	tagfiledir, %rsi
	callq	relative_filename
	movq	%rax, -56(%rbp)
.LBB54_15:                              # %if.end
	movq	curfdp, %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB54_16
	jmp	.LBB54_17
.LBB54_16:                              # %if.then.31
	movq	-56(%rbp), %rdi
	callq	free
	jmp	.LBB54_35
.LBB54_17:                              # %if.else.32
	movq	fdhead, %rax
	movq	%rax, -72(%rbp)
.LBB54_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB54_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB54_18 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	curfdp, %rax
	movq	8(%rax), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB54_20
	jmp	.LBB54_22
.LBB54_20:                              # %land.lhs.true.39
                                        #   in Loop: Header=BB54_18 Depth=1
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB54_21
	jmp	.LBB54_22
.LBB54_21:                              # %if.then.43
	movq	-72(%rbp), %rax
	movq	%rax, curfdp
	movq	-56(%rbp), %rdi
	callq	free
	jmp	.LBB54_24
.LBB54_22:                              # %if.end.44
                                        #   in Loop: Header=BB54_18 Depth=1
	jmp	.LBB54_23
.LBB54_23:                              # %for.inc
                                        #   in Loop: Header=BB54_18 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB54_18
.LBB54_24:                              # %for.end
	cmpq	$0, -72(%rbp)
	jne	.LBB54_32
# BB#25:                                # %if.then.47
	movq	fdhead, %rax
	movq	%rax, -72(%rbp)
.LBB54_26:                              # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB54_31
# BB#27:                                # %for.body.51
                                        #   in Loop: Header=BB54_26 Depth=1
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB54_28
	jmp	.LBB54_29
.LBB54_28:                              # %if.then.53
	movb	$1, readline.discard_until_line_directive
	movq	-56(%rbp), %rdi
	callq	free
	jmp	.LBB54_31
.LBB54_29:                              # %if.end.54
                                        #   in Loop: Header=BB54_26 Depth=1
	jmp	.LBB54_30
.LBB54_30:                              # %for.inc.55
                                        #   in Loop: Header=BB54_26 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB54_26
.LBB54_31:                              # %for.end.57
	jmp	.LBB54_32
.LBB54_32:                              # %if.end.58
	cmpq	$0, -72(%rbp)
	jne	.LBB54_34
# BB#33:                                # %if.then.61
	movl	$64, %eax
	movl	%eax, %edi
	movq	fdhead, %rcx
	movq	%rcx, -72(%rbp)
	callq	xmalloc
	movl	$64, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, fdhead
	movq	fdhead, %rax
	movq	curfdp, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-72(%rbp), %rax
	movq	fdhead, %rcx
	movq	%rax, (%rcx)
	movq	curfdp, %rax
	movq	8(%rax), %rdi
	callq	savestr
	movq	fdhead, %rcx
	movq	%rax, 8(%rcx)
	movq	curfdp, %rax
	movq	16(%rax), %rdi
	callq	savestr
	movq	fdhead, %rcx
	movq	%rax, 16(%rcx)
	movq	curfdp, %rax
	movq	24(%rax), %rdi
	callq	savestr
	movq	fdhead, %rcx
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	fdhead, %rcx
	movq	%rax, 32(%rcx)
	movq	fdhead, %rax
	movb	$0, 56(%rax)
	movq	fdhead, %rax
	movq	$0, 48(%rax)
	movq	fdhead, %rax
	movb	$0, 57(%rax)
	movq	fdhead, %rax
	movq	%rax, curfdp
.LBB54_34:                              # %if.end.73
	jmp	.LBB54_35
.LBB54_35:                              # %if.end.74
	movq	-48(%rbp), %rdi
	callq	free
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, lineno
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	readline
	jmp	.LBB54_68
.LBB54_36:                              # %if.end.75
	jmp	.LBB54_37
.LBB54_37:                              # %if.end.76
	jmp	.LBB54_38
.LBB54_38:                              # %if.end.77
	testb	$1, readline.discard_until_line_directive
	je	.LBB54_42
# BB#39:                                # %if.then.79
	cmpq	$0, -24(%rbp)
	jle	.LBB54_41
# BB#40:                                # %if.then.82
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	readline
	jmp	.LBB54_68
.LBB54_41:                              # %if.end.83
	movb	$0, readline.discard_until_line_directive
	jmp	.LBB54_68
.LBB54_42:                              # %if.end.84
	jmp	.LBB54_43
.LBB54_43:                              # %if.end.85
	movq	-8(%rbp), %rax
	cmpl	$0, 8(%rax)
	jle	.LBB54_68
# BB#44:                                # %if.then.89
	movq	p_head, %rax
	movq	%rax, -88(%rbp)
.LBB54_45:                              # %for.cond.90
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB54_67
# BB#46:                                # %for.body.93
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB54_48
# BB#47:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	fdhead, %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB54_49
.LBB54_48:                              # %lor.lhs.false.101
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	testb	$1, 67(%rax)
	je	.LBB54_50
.LBB54_49:                              # %if.then.104
                                        #   in Loop: Header=BB54_45 Depth=1
	jmp	.LBB54_66
.LBB54_50:                              # %if.end.105
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rsi
	movslq	8(%rcx), %rdx
	addq	$40, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %r8
	callq	re_match
	movl	%eax, %r9d
	movl	%r9d, -76(%rbp)
	movl	%r9d, %r10d
	subl	$-2, %r10d
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	je	.LBB54_51
	jmp	.LBB54_69
.LBB54_69:                              # %if.end.105
                                        #   in Loop: Header=BB54_45 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB54_54
	jmp	.LBB54_70
.LBB54_70:                              # %if.end.105
                                        #   in Loop: Header=BB54_45 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	je	.LBB54_55
	jmp	.LBB54_58
.LBB54_51:                              # %sw.bb
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	testb	$1, 64(%rax)
	jne	.LBB54_53
# BB#52:                                # %if.then.112
                                        #   in Loop: Header=BB54_45 Depth=1
	movabsq	$.L.str.116, %rdi
	movq	-88(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	error
	movq	-88(%rbp), %rsi
	movb	$1, 64(%rsi)
.LBB54_53:                              # %if.end.114
                                        #   in Loop: Header=BB54_45 Depth=1
	jmp	.LBB54_65
.LBB54_54:                              # %sw.bb.115
                                        #   in Loop: Header=BB54_45 Depth=1
	jmp	.LBB54_65
.LBB54_55:                              # %sw.bb.116
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	testb	$1, 64(%rax)
	jne	.LBB54_57
# BB#56:                                # %if.then.119
                                        #   in Loop: Header=BB54_45 Depth=1
	movabsq	$.L.str.117, %rdi
	movq	-88(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	error
	movq	-88(%rbp), %rsi
	movb	$1, 64(%rsi)
.LBB54_57:                              # %if.end.122
                                        #   in Loop: Header=BB54_45 Depth=1
	jmp	.LBB54_65
.LBB54_58:                              # %sw.default
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB54_60
# BB#59:                                # %if.then.128
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	$0, -96(%rbp)
	jmp	.LBB54_61
.LBB54_60:                              # %if.else.129
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-88(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdx
	callq	substitute
	movq	%rax, -96(%rbp)
.LBB54_61:                              # %if.end.134
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	testb	$1, 65(%rax)
	je	.LBB54_63
# BB#62:                                # %if.then.136
                                        #   in Loop: Header=BB54_45 Depth=1
	movl	$1, %esi
	movq	-96(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-76(%rbp), %ecx
	movl	lineno, %r8d
	movq	linecharno, %r9
	callq	pfnote
	jmp	.LBB54_64
.LBB54_63:                              # %if.else.138
                                        #   in Loop: Header=BB54_45 Depth=1
	movl	$1, %edx
	movq	-96(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-76(%rbp), %r8d
	movl	lineno, %r9d
	movq	linecharno, %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-124(%rbp), %edx        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	make_tag
.LBB54_64:                              # %if.end.142
                                        #   in Loop: Header=BB54_45 Depth=1
	jmp	.LBB54_65
.LBB54_65:                              # %sw.epilog
                                        #   in Loop: Header=BB54_45 Depth=1
	jmp	.LBB54_66
.LBB54_66:                              # %for.inc.143
                                        #   in Loop: Header=BB54_45 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB54_45
.LBB54_67:                              # %for.end.144
	jmp	.LBB54_68
.LBB54_68:                              # %if.end.145
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	readline, .Lfunc_end54-readline
	.cfi_endproc

	.align	16, 0x90
	.type	begtoken,@function
begtoken:                               # @begtoken
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
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edi
	movl	%edi, %ecx
	movb	begtoken.table(,%rcx), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end55:
	.size	begtoken, .Lfunc_end55-begtoken
	.cfi_endproc

	.align	16, 0x90
	.type	nocase_tail,@function
nocase_tail:                            # @nocase_tail
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB56_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB56_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	movslq	-20(%rbp), %rcx
	movq	dbp, %rdx
	movsbl	(%rdx,%rcx), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	c_tolower
	movl	-28(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	sete	%sil
	movb	%sil, -21(%rbp)         # 1-byte Spill
.LBB56_3:                               # %land.end
                                        #   in Loop: Header=BB56_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB56_4
	jmp	.LBB56_5
.LBB56_4:                               # %while.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB56_1
.LBB56_5:                               # %while.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB56_8
# BB#6:                                 # %land.lhs.true
	movslq	-20(%rbp), %rax
	movq	dbp, %rcx
	movzbl	(%rcx,%rax), %edi
	callq	intoken
	testb	$1, %al
	jne	.LBB56_8
# BB#7:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	dbp, %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, dbp
	movb	$1, -1(%rbp)
	jmp	.LBB56_9
.LBB56_8:                               # %if.end
	movb	$0, -1(%rbp)
.LBB56_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	nocase_tail, .Lfunc_end56-nocase_tail
	.cfi_endproc

	.align	16, 0x90
	.type	Ada_getit,@function
Ada_getit:                              # @Ada_getit
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB57_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	perhaps_more_input
	testb	$1, %al
	jne	.LBB57_2
	jmp	.LBB57_34
.LBB57_2:                               # %while.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB57_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB57_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	dbp, %rax
	movsbl	1(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB57_6
.LBB57_5:                               # %if.then
                                        #   in Loop: Header=BB57_1 Depth=1
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movq	lb+16, %rsi
	movq	%rsi, dbp
.LBB57_6:                               # %if.end
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	dbp(%rip), %rax
	movsbl	(%rax), %edi
	callq	c_tolower
	movl	%eax, %edi
	subl	$98, %eax
	movl	%edi, -40(%rbp)         # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB57_7
	jmp	.LBB57_35
.LBB57_35:                              # %if.end
                                        #   in Loop: Header=BB57_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB57_10
	jmp	.LBB57_13
.LBB57_7:                               # %sw.bb
                                        #   in Loop: Header=BB57_1 Depth=1
	movabsq	$.L.str.120, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB57_8
	jmp	.LBB57_9
.LBB57_8:                               # %if.then.13
                                        #   in Loop: Header=BB57_1 Depth=1
	movabsq	$.L.str.121, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB57_1
.LBB57_9:                               # %if.end.14
	jmp	.LBB57_13
.LBB57_10:                              # %sw.bb.15
                                        #   in Loop: Header=BB57_1 Depth=1
	movabsq	$.L.str.113, %rdi
	callq	nocase_tail
	testb	$1, %al
	jne	.LBB57_11
	jmp	.LBB57_12
.LBB57_11:                              # %if.then.17
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_1
.LBB57_12:                              # %if.end.18
	jmp	.LBB57_13
.LBB57_13:                              # %sw.epilog
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB57_21
# BB#14:                                # %if.then.22
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movq	dbp, %rax
	movq	%rax, -24(%rbp)
.LBB57_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB57_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB57_15 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	setne	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB57_17:                              # %land.end
                                        #   in Loop: Header=BB57_15 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB57_18
	jmp	.LBB57_20
.LBB57_18:                              # %for.body
                                        #   in Loop: Header=BB57_15 Depth=1
	jmp	.LBB57_19
.LBB57_19:                              # %for.inc
                                        #   in Loop: Header=BB57_15 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB57_15
.LBB57_20:                              # %for.end
	jmp	.LBB57_31
.LBB57_21:                              # %if.else
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movq	%rax, -24(%rbp)
.LBB57_22:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isalnum
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jne	.LBB57_25
# BB#23:                                # %lor.lhs.false.34
                                        #   in Loop: Header=BB57_22 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$95, %edx
	movb	%al, -50(%rbp)          # 1-byte Spill
	je	.LBB57_25
# BB#24:                                # %lor.rhs
                                        #   in Loop: Header=BB57_22 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	sete	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB57_25:                              # %lor.end
                                        #   in Loop: Header=BB57_22 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB57_26
	jmp	.LBB57_28
.LBB57_26:                              # %for.body.41
                                        #   in Loop: Header=BB57_22 Depth=1
	jmp	.LBB57_27
.LBB57_27:                              # %for.inc.42
                                        #   in Loop: Header=BB57_22 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB57_22
.LBB57_28:                              # %for.end.44
	movq	-24(%rbp), %rax
	cmpq	dbp, %rax
	jne	.LBB57_30
# BB#29:                                # %if.then.47
	jmp	.LBB57_34
.LBB57_30:                              # %if.end.48
	jmp	.LBB57_31
.LBB57_31:                              # %if.end.49
	movabsq	$.L.str.4, %rdx
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -33(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	dbp, %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movb	-33(%rbp), %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %rsi
	subq	%rsi, %rax
	addq	$1, %rax
	movl	%eax, %r8d
	movl	lineno, %r9d
	movq	linecharno, %rax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%edx, %esi
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, (%rsp)
	callq	make_tag
	movq	-32(%rbp), %rdi
	callq	free
	movsbl	-33(%rbp), %edx
	cmpl	$34, %edx
	jne	.LBB57_33
# BB#32:                                # %if.then.57
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, dbp
.LBB57_33:                              # %if.end.59
	jmp	.LBB57_34
.LBB57_34:                              # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Ada_getit, .Lfunc_end57-Ada_getit
	.cfi_endproc

	.align	16, 0x90
	.type	endtoken,@function
endtoken:                               # @endtoken
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
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edi
	movl	%edi, %ecx
	movb	endtoken.table(,%rcx), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end58:
	.size	endtoken, .Lfunc_end58-endtoken
	.cfi_endproc

	.align	16, 0x90
	.type	absolute_filename,@function
absolute_filename:                      # @absolute_filename
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	filename_is_absolute
	testb	$1, %al
	jne	.LBB59_1
	jmp	.LBB59_2
.LBB59_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	savestr
	movq	%rax, -48(%rbp)
	jmp	.LBB59_3
.LBB59_2:                               # %if.else
	movabsq	$.L.str.4, %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	movq	%rax, -48(%rbp)
.LBB59_3:                               # %if.end
	movl	$47, %esi
	movq	-48(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
.LBB59_4:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_12 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB59_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB59_6:                               # %land.end
                                        #   in Loop: Header=BB59_4 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_7
	jmp	.LBB59_25
.LBB59_7:                               # %while.body
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB59_24
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB59_19
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB59_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB59_19
.LBB59_11:                              # %if.then.23
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB59_12:                              # %do.body
                                        #   Parent Loop BB59_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB59_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jb	.LBB59_15
# BB#14:                                # %land.rhs.26
                                        #   in Loop: Header=BB59_12 Depth=2
	movq	-40(%rbp), %rdi
	callq	filename_is_absolute
	xorb	$-1, %al
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB59_15:                              # %land.end.28
                                        #   in Loop: Header=BB59_12 Depth=2
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB59_12
# BB#16:                                # %do.end
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB59_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB59_18:                              # %if.end.32
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movq	-32(%rbp), %rcx
	addq	$2, %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memmove
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB59_4
.LBB59_19:                              # %if.else.35
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB59_21
# BB#20:                                # %lor.lhs.false.40
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB59_22
.LBB59_21:                              # %if.then.45
                                        #   in Loop: Header=BB59_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memmove
	jmp	.LBB59_4
.LBB59_22:                              # %if.end.49
                                        #   in Loop: Header=BB59_4 Depth=1
	jmp	.LBB59_23
.LBB59_23:                              # %if.end.50
                                        #   in Loop: Header=BB59_4 Depth=1
	jmp	.LBB59_24
.LBB59_24:                              # %if.end.51
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	$47, %esi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	jmp	.LBB59_4
.LBB59_25:                              # %while.end
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB59_27
# BB#26:                                # %if.then.58
	movq	-48(%rbp), %rdi
	callq	free
	movabsq	$.L.str.10, %rdi
	callq	savestr
	movq	%rax, -8(%rbp)
	jmp	.LBB59_28
.LBB59_27:                              # %if.else.60
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB59_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	absolute_filename, .Lfunc_end59-absolute_filename
	.cfi_endproc

	.align	16, 0x90
	.type	filename_is_absolute,@function
filename_is_absolute:                   # @filename_is_absolute
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %eax
	cmpl	$47, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end60:
	.size	filename_is_absolute, .Lfunc_end60-filename_is_absolute
	.cfi_endproc

	.align	16, 0x90
	.type	relative_filename,@function
relative_filename:                      # @relative_filename
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	cwd, %rsi
	callq	absolute_filename
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB61_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB61_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_1
.LBB61_3:                               # %while.end
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
.LBB61_4:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB61_4 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB61_4
# BB#6:                                 # %do.end
	movl	$0, -52(%rbp)
.LBB61_7:                               # %while.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movl	$47, %esi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB61_9
# BB#8:                                 # %while.body.15
                                        #   in Loop: Header=BB61_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB61_7
.LBB61_9:                               # %while.end.16
	imull	$3, -52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rdi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB61_10:                              # %while.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	jle	.LBB61_12
# BB#11:                                # %while.body.27
                                        #   in Loop: Header=BB61_10 Depth=1
	movq	-64(%rbp), %rdi
	movl	$.L.str.118, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -64(%rbp)
	jmp	.LBB61_10
.LBB61_12:                              # %while.end.29
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	callq	strcpy
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	free
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	relative_filename, .Lfunc_end61-relative_filename
	.cfi_endproc

	.align	16, 0x90
	.type	substitute,@function
substitute:                             # @substitute
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB62_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.119, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	fatal
.LBB62_2:                               # %if.end
	movl	$92, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
.LBB62_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB62_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB62_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB62_5
	jmp	.LBB62_6
.LBB62_5:                               # %if.then.9
                                        #   in Loop: Header=BB62_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, -48(%rbp)
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movslq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	(%rsi,%rdx,8), %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %ecx
	subl	$2, %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB62_7
.LBB62_6:                               # %if.else
                                        #   in Loop: Header=BB62_3 Depth=1
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB62_7:                               # %if.end.21
                                        #   in Loop: Header=BB62_3 Depth=1
	jmp	.LBB62_8
.LBB62_8:                               # %for.inc
                                        #   in Loop: Header=BB62_3 Depth=1
	movl	$92, %esi
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	jmp	.LBB62_3
.LBB62_9:                               # %for.end
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB62_10:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB62_17
# BB#11:                                # %for.body.30
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB62_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	1(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB62_13
	jmp	.LBB62_14
.LBB62_13:                              # %if.then.37
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movl	%ecx, -48(%rbp)
	movslq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movslq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	(%rsi,%rdx,8), %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	addq	(%rsi,%rdx,8), %rax
	movslq	-52(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB62_15
.LBB62_14:                              # %if.else.54
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
.LBB62_15:                              # %if.end.56
                                        #   in Loop: Header=BB62_10 Depth=1
	jmp	.LBB62_16
.LBB62_16:                              # %for.inc.57
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB62_10
.LBB62_17:                              # %for.end.59
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	substitute, .Lfunc_end62-substitute
	.cfi_endproc

	.align	16, 0x90
	.type	pfnote,@function
pfnote:                                 # @pfnote
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
	subq	$48, %rsp
	movb	%sil, %al
	movl	$56, %esi
	movl	%esi, %r10d
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r10, %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	movb	$1, 40(%rax)
	movq	-48(%rbp), %rax
	movb	$0, 42(%rax)
	movq	curfdp, %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movb	-9(%rbp), %r11b
	movq	-48(%rbp), %rax
	andb	$1, %r11b
	movb	%r11b, 41(%rax)
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testb	$1, 56(%rax)
	je	.LBB63_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 48(%rcx)
	jmp	.LBB63_3
.LBB63_2:                               # %if.else
	movq	-48(%rbp), %rax
	movq	$-1, 48(%rax)
.LBB63_3:                               # %if.end
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	savenstr
	movabsq	$nodehead, %rsi
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-48(%rbp), %rdi
	callq	add_node
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	pfnote, .Lfunc_end63-pfnote
	.cfi_endproc

	.align	16, 0x90
	.type	make_tag,@function
make_tag:                               # @make_tag
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
	subq	$80, %rsp
	movb	%dl, %al
	movq	16(%rbp), %r10
	xorl	%edx, %edx
	movb	%dl, %r11b
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	%r10, -40(%rbp)
	cmpq	$0, -8(%rbp)
	movb	%r11b, -73(%rbp)        # 1-byte Spill
	je	.LBB64_2
# BB#1:                                 # %land.rhs
	cmpl	$0, -12(%rbp)
	setg	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB64_2:                               # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	$0, -56(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB64_19
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -60(%rbp)
.LBB64_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB64_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB64_4 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB64_6
	jmp	.LBB64_7
.LBB64_6:                               # %if.then.4
	jmp	.LBB64_9
.LBB64_7:                               # %if.end
                                        #   in Loop: Header=BB64_4 Depth=1
	jmp	.LBB64_8
.LBB64_8:                               # %for.inc
                                        #   in Loop: Header=BB64_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB64_4
.LBB64_9:                               # %for.end
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB64_18
# BB#10:                                # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -72(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB64_11
	jmp	.LBB64_12
.LBB64_11:                              # %if.then.10
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
.LBB64_12:                              # %if.end.12
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB64_17
# BB#13:                                # %land.lhs.true
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB64_15
# BB#14:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	movzbl	-1(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB64_15
	jmp	.LBB64_17
.LBB64_15:                              # %land.lhs.true.17
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	strneq
	testb	$1, %al
	jne	.LBB64_16
	jmp	.LBB64_17
.LBB64_16:                              # %if.then.20
	movb	$0, -41(%rbp)
.LBB64_17:                              # %if.end.21
	jmp	.LBB64_18
.LBB64_18:                              # %if.end.22
	jmp	.LBB64_19
.LBB64_19:                              # %if.end.23
	testb	$1, -41(%rbp)
	je	.LBB64_21
# BB#20:                                # %if.then.25
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	savenstr
	movq	%rax, -56(%rbp)
.LBB64_21:                              # %if.end.27
	movq	-56(%rbp), %rdi
	movb	-13(%rbp), %al
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	-40(%rbp), %r9
	andb	$1, %al
	movzbl	%al, %esi
	callq	pfnote
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	make_tag, .Lfunc_end64-make_tag
	.cfi_endproc

	.align	16, 0x90
	.type	savenstr,@function
savenstr:                               # @savenstr
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rdi
	shlq	$0, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rdi
	movb	$0, (%rdi,%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	savenstr, .Lfunc_end65-savenstr
	.cfi_endproc

	.align	16, 0x90
	.type	add_node,@function
add_node:                               # @add_node
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, last_node
	jmp	.LBB66_9
.LBB66_2:                               # %if.end
	cmpq	$0, last_node
	je	.LBB66_5
# BB#3:                                 # %land.lhs.true
	movq	last_node, %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB66_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	last_node, %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, last_node
	jmp	.LBB66_9
.LBB66_5:                               # %if.else
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB66_7
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	add_node
	jmp	.LBB66_8
.LBB66_7:                               # %if.else.10
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	add_node
.LBB66_8:                               # %if.end.11
	jmp	.LBB66_9
.LBB66_9:                               # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	add_node, .Lfunc_end66-add_node
	.cfi_endproc

	.align	16, 0x90
	.type	notinname,@function
notinname:                              # @notinname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edi
	movl	%edi, %ecx
	movb	notinname.table(,%rcx), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end67:
	.size	notinname, .Lfunc_end67-notinname
	.cfi_endproc

	.align	16, 0x90
	.type	intoken,@function
intoken:                                # @intoken
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %edi
	movl	%edi, %ecx
	movb	intoken.table(,%rcx), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end68:
	.size	intoken, .Lfunc_end68-intoken
	.cfi_endproc

	.align	16, 0x90
	.type	skip_spaces,@function
skip_spaces:                            # @skip_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB69_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB69_2
	jmp	.LBB69_3
.LBB69_2:                               # %while.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB69_1
.LBB69_3:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	skip_spaces, .Lfunc_end69-skip_spaces
	.cfi_endproc

	.align	16, 0x90
	.type	C_entries,@function
C_entries:                              # @C_entries
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$688, %rsp              # imm = 0x2B0
	movabsq	$lbs, %rax
	addq	$8, %rax
	xorl	%ecx, %ecx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-128(%rbp), %r8
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%r8, %rdi
	movl	%ecx, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	memset
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	linebuffer_init
	movabsq	$lbs, %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	linebuffer_init
	cmpl	$0, cstack+20
	jne	.LBB70_2
# BB#1:                                 # %if.then
	movl	$4, cstack+20
	movl	$0, cstack+16
	movslq	cstack+20, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, cstack
	movslq	cstack+20, %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, cstack+8
.LBB70_2:                               # %if.end
	movabsq	$lbs, %rax
	movl	$0, -84(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, fvdef
	movb	$0, fvextern
	movl	$0, typdef
	movl	$0, structdef
	movl	$0, definedef
	movl	$0, objdef
	movb	$0, -90(%rbp)
	movb	$0, -88(%rbp)
	movb	$0, -85(%rbp)
	movb	$0, -87(%rbp)
	movb	$0, -86(%rbp)
	movb	$0, -89(%rbp)
	movb	$0, -112(%rbp)
	movb	$0, token+16
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	-4(%rbp), %edx
	andl	$5, %edx
	cmpl	$5, %edx
	jne	.LBB70_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.132, %rax
	movq	%rax, -56(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB70_5
.LBB70_4:                               # %if.else
	movabsq	$.L.str.133, %rax
	movq	%rax, -56(%rbp)
	movl	$2, -60(%rbp)
.LBB70_5:                               # %if.end.7
	jmp	.LBB70_6
.LBB70_6:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_70 Depth 2
                                        #     Child Loop BB70_128 Depth 2
                                        #     Child Loop BB70_154 Depth 2
                                        #     Child Loop BB70_415 Depth 2
	movq	-16(%rbp), %rdi
	callq	perhaps_more_input
	testb	$1, %al
	jne	.LBB70_7
	jmp	.LBB70_512
.LBB70_7:                               # %while.body
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -17(%rbp)
	movsbl	-17(%rbp), %esi
	cmpl	$92, %esi
	jne	.LBB70_11
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB70_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, -88(%rbp)
	jmp	.LBB70_6
.LBB70_10:                              # %if.end.17
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movb	$32, -17(%rbp)
	jmp	.LBB70_107
.LBB70_11:                              # %if.else.19
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -85(%rbp)
	je	.LBB70_20
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB70_16
	jmp	.LBB70_522
.LBB70_522:                             # %if.then.20
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jne	.LBB70_19
	jmp	.LBB70_13
.LBB70_13:                              # %sw.bb
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB70_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -17(%rbp)
	movb	$0, -85(%rbp)
.LBB70_15:                              # %if.end.27
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_19
.LBB70_16:                              # %sw.bb.28
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_17
.LBB70_17:                              # %do.body
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	charno, %rcx
	movslq	-36(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	readline
	movabsq	$lbs, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -88(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -40(%rbp)
# BB#18:                                # %do.end
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_19
.LBB70_19:                              # %sw.epilog
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_20:                              # %if.else.38
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -86(%rbp)
	je	.LBB70_27
# BB#21:                                # %if.then.40
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB70_23
	jmp	.LBB70_521
.LBB70_521:                             # %if.then.40
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$34, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jne	.LBB70_26
	jmp	.LBB70_22
.LBB70_22:                              # %sw.bb.42
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, -86(%rbp)
	jmp	.LBB70_26
.LBB70_23:                              # %sw.bb.43
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_24
.LBB70_24:                              # %do.body.44
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	charno, %rcx
	movslq	-36(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	readline
	movabsq	$lbs, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -88(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -40(%rbp)
# BB#25:                                # %do.end.55
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_26
.LBB70_26:                              # %sw.epilog.56
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_27:                              # %if.else.57
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -87(%rbp)
	je	.LBB70_38
# BB#28:                                # %if.then.59
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB70_29
	jmp	.LBB70_520
.LBB70_520:                             # %if.then.59
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB70_36
	jmp	.LBB70_37
.LBB70_29:                              # %sw.bb.61
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_30
.LBB70_30:                              # %do.body.62
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_31
.LBB70_31:                              # %do.body.63
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	charno, %rcx
	movslq	-36(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	readline
	movabsq	$lbs, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -88(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -40(%rbp)
# BB#32:                                # %do.end.74
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -112(%rbp)
	je	.LBB70_34
# BB#33:                                # %if.then.77
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, token
	movq	-120(%rbp), %rax
	movq	%rax, token+8
	movq	-112(%rbp), %rax
	movq	%rax, token+16
	movq	-104(%rbp), %rax
	movq	%rax, token+24
	movb	$0, -112(%rbp)
.LBB70_34:                              # %if.end.79
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, definedef
# BB#35:                                # %do.end.80
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_36
.LBB70_36:                              # %sw.bb.81
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, -87(%rbp)
.LBB70_37:                              # %sw.epilog.82
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_38:                              # %if.else.83
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	movl	%eax, %ecx
	subl	$34, %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	je	.LBB70_39
	jmp	.LBB70_513
.LBB70_513:                             # %if.else.83
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB70_68
	jmp	.LBB70_514
.LBB70_514:                             # %if.else.83
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB70_64
	jmp	.LBB70_515
.LBB70_515:                             # %if.else.83
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$39, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB70_47
	jmp	.LBB70_516
.LBB70_516:                             # %if.else.83
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$47, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB70_56
	jmp	.LBB70_517
.LBB70_517:                             # %if.else.83
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB70_92
	jmp	.LBB70_93
.LBB70_39:                              # %sw.bb.85
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, -86(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.LBB70_41
# BB#40:                                # %if.then.88
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_41:                              # %if.end.89
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_43
# BB#42:                                # %if.then.91
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_103
.LBB70_43:                              # %if.end.92
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	je	.LBB70_44
	jmp	.LBB70_518
.LBB70_518:                             # %if.end.92
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	addl	$-5, %eax
	subl	$2, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jb	.LBB70_44
	jmp	.LBB70_519
.LBB70_519:                             # %if.end.92
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	addl	$-8, %eax
	subl	$1, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	ja	.LBB70_45
	jmp	.LBB70_44
.LBB70_44:                              # %sw.bb.93
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_46
.LBB70_45:                              # %sw.default
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, fvextern
	movl	$0, fvdef
.LBB70_46:                              # %sw.epilog.94
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_47:                              # %sw.bb.95
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, -87(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.LBB70_49
# BB#48:                                # %if.then.98
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_49:                              # %if.end.99
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_51
# BB#50:                                # %if.then.101
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_103
.LBB70_51:                              # %if.end.102
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$6, fvdef
	je	.LBB70_55
# BB#52:                                # %land.lhs.true
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$8, fvdef
	je	.LBB70_55
# BB#53:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$9, fvdef
	je	.LBB70_55
# BB#54:                                # %if.then.110
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, fvextern
	movl	$0, fvdef
.LBB70_55:                              # %if.end.111
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_56:                              # %sw.bb.112
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB70_60
# BB#57:                                # %if.then.116
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, -85(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movb	$32, -17(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.LBB70_59
# BB#58:                                # %if.then.120
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_59:                              # %if.end.121
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_63
.LBB70_60:                              # %if.else.122
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB70_62
# BB#61:                                # %if.then.126
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, -17(%rbp)
.LBB70_62:                              # %if.end.127
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_63
.LBB70_63:                              # %if.end.128
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_103
.LBB70_64:                              # %sw.bb.129
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$65536, %eax            # imm = 0x10000
	cmpl	$0, %eax
	je	.LBB70_67
# BB#65:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB70_67
# BB#66:                                # %if.then.136
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	$0, definedef
	movl	$0, fvdef
	movb	$0, fvextern
	movl	$0, typdef
	movl	$0, structdef
	movb	$0, -88(%rbp)
	movb	$0, -85(%rbp)
	movb	$0, -87(%rbp)
	movb	$0, -86(%rbp)
	movb	$0, -89(%rbp)
	movl	$0, -64(%rbp)
	movb	-90(%rbp), %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -90(%rbp)
	jmp	.LBB70_6
.LBB70_67:                              # %if.else.139
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_103
.LBB70_68:                              # %sw.bb.140
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_91
# BB#69:                                # %if.then.143
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movb	$1, -137(%rbp)
	movslq	-40(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB70_70:                              # %for.cond
                                        #   Parent Loop BB70_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-136(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$-1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB70_79
# BB#71:                                # %for.body
                                        #   in Loop: Header=BB70_70 Depth=2
	movq	-136(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB70_77
# BB#72:                                # %if.then.152
                                        #   in Loop: Header=BB70_70 Depth=2
	movq	-136(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB70_75
# BB#73:                                # %land.lhs.true.156
                                        #   in Loop: Header=BB70_70 Depth=2
	movq	-136(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB70_75
# BB#74:                                # %if.then.161
                                        #   in Loop: Header=BB70_70 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	movb	$1, -137(%rbp)
	jmp	.LBB70_76
.LBB70_75:                              # %if.else.163
                                        #   in Loop: Header=BB70_70 Depth=2
	movb	$0, -137(%rbp)
.LBB70_76:                              # %if.end.164
                                        #   in Loop: Header=BB70_70 Depth=2
	jmp	.LBB70_77
.LBB70_77:                              # %if.end.165
                                        #   in Loop: Header=BB70_70 Depth=2
	jmp	.LBB70_78
.LBB70_78:                              # %for.inc
                                        #   in Loop: Header=BB70_70 Depth=2
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB70_70
.LBB70_79:                              # %for.end
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -137(%rbp)
	je	.LBB70_90
# BB#80:                                # %if.then.168
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, definedef
	cmpl	$9, fvdef
	jne	.LBB70_89
# BB#81:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_89
# BB#82:                                # %land.lhs.true.174
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_89
# BB#83:                                # %land.lhs.true.177
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_89
# BB#84:                                # %land.lhs.true.182
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB70_89
# BB#85:                                # %if.then.185
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$.L.str.134, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB70_87
# BB#86:                                # %lor.lhs.false
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$.L.str.135, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB70_87
	jmp	.LBB70_88
.LBB70_87:                              # %if.then.190
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_88:                              # %if.end.191
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_89
.LBB70_89:                              # %if.end.192
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_90
.LBB70_90:                              # %if.end.193
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_91
.LBB70_91:                              # %if.end.194
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_92:                              # %sw.bb.195
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB70_6
.LBB70_93:                              # %sw.default.196
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -68(%rbp)
	jle	.LBB70_102
# BB#94:                                # %if.then.199
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$93, %eax
	jne	.LBB70_96
# BB#95:                                # %if.then.203
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB70_101
.LBB70_96:                              # %if.else.204
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB70_100
# BB#97:                                # %if.then.208
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_98
.LBB70_98:                              # %do.body.209
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	charno, %rcx
	movslq	-36(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	readline
	movabsq	$lbs, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -88(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -40(%rbp)
# BB#99:                                # %do.end.220
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_100
.LBB70_100:                             # %if.end.221
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_101
.LBB70_101:                             # %if.end.222
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_102:                             # %if.end.223
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_103
.LBB70_103:                             # %sw.epilog.224
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_104
.LBB70_104:                             # %if.end.225
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_105
.LBB70_105:                             # %if.end.226
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_106
.LBB70_106:                             # %if.end.227
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_107
.LBB70_107:                             # %if.end.228
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, typdef
	je	.LBB70_224
# BB#108:                               # %land.lhs.true.231
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$3, definedef
	je	.LBB70_224
# BB#109:                               # %land.lhs.true.234
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$6, fvdef
	je	.LBB70_224
# BB#110:                               # %land.lhs.true.237
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -80(%rbp)
	jne	.LBB70_224
# BB#111:                               # %land.lhs.true.240
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_113
# BB#112:                               # %lor.lhs.false.243
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$3, structdef
	je	.LBB70_224
.LBB70_113:                             # %land.lhs.true.246
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	jne	.LBB70_224
# BB#114:                               # %if.then.248
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -89(%rbp)
	je	.LBB70_203
# BB#115:                               # %if.then.250
                                        #   in Loop: Header=BB70_6 Depth=1
	movzbl	-17(%rbp), %edi
	callq	endtoken
	testb	$1, %al
	jne	.LBB70_116
	jmp	.LBB70_198
.LBB70_116:                             # %if.then.252
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$58, %eax
	jne	.LBB70_122
# BB#117:                               # %land.lhs.true.256
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB70_122
# BB#118:                               # %land.lhs.true.260
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edi
	callq	begtoken
	testb	$1, %al
	jne	.LBB70_119
	jmp	.LBB70_122
.LBB70_119:                             # %if.then.264
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB70_121
# BB#120:                               # %if.then.267
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	orl	$1, %eax
	andl	$-4097, %eax            # imm = 0xFFFFFFFFFFFFEFFF
	movl	%eax, -4(%rbp)
.LBB70_121:                             # %if.end.269
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	-48(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -48(%rbp)
	movq	-32(%rbp), %rax
	movb	-1(%rax), %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB70_200
.LBB70_122:                             # %if.else.273
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, -138(%rbp)
	testb	$1, -90(%rbp)
	jne	.LBB70_124
# BB#123:                               # %lor.lhs.false.276
                                        #   in Loop: Header=BB70_6 Depth=1
	leaq	-4(%rbp), %rcx
	leaq	-138(%rbp), %rax
	movabsq	$lbs, %rdx
	movslq	-40(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movq	24(%rdx), %rdx
	movslq	-44(%rbp), %rsi
	addq	%rsi, %rdx
	movl	-48(%rbp), %esi
	movsbl	-17(%rbp), %edi
	movl	-64(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	%edi, -288(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movl	-288(%rbp), %edx        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	consider_token
	testb	$1, %al
	jne	.LBB70_124
	jmp	.LBB70_192
.LBB70_124:                             # %if.then.285
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$3, fvdef
	jne	.LBB70_134
# BB#125:                               # %if.then.288
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB70_127
# BB#126:                               # %if.then.294
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB70_127:                             # %if.end.296
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_128
.LBB70_128:                             # %while.cond.297
                                        #   Parent Loop BB70_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -289(%rbp)         # 1-byte Spill
	je	.LBB70_131
# BB#129:                               # %land.lhs.true.301
                                        #   in Loop: Header=BB70_128 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	xorl	%edi, %edi
	movb	%dil, %cl
	testb	$1, %al
	movb	%cl, -289(%rbp)         # 1-byte Spill
	jne	.LBB70_131
# BB#130:                               # %land.rhs
                                        #   in Loop: Header=BB70_128 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	setne	%dl
	movb	%dl, -289(%rbp)         # 1-byte Spill
.LBB70_131:                             # %land.end
                                        #   in Loop: Header=BB70_128 Depth=2
	movb	-289(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB70_132
	jmp	.LBB70_133
.LBB70_132:                             # %while.body.307
                                        #   in Loop: Header=BB70_128 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB70_128
.LBB70_133:                             # %while.end
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -17(%rbp)
	movq	-32(%rbp), %rax
	movq	-152(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-48(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %esi
	movl	%esi, -48(%rbp)
.LBB70_134:                             # %if.end.313
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, token+17
	movl	-4(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	cmpl	$0, %eax
	je	.LBB70_141
# BB#135:                               # %land.lhs.true.317
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_141
# BB#136:                               # %land.lhs.true.320
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_141
# BB#137:                               # %if.then.323
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, class_qualify
	je	.LBB70_139
# BB#138:                               # %if.then.325
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movq	-56(%rbp), %rsi
	callq	write_classname
	movabsq	$token_name, %rdi
	movl	token_name+8, %eax
	movl	%eax, -156(%rbp)
	movl	-156(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, %esi
	callq	linebuffer_setlen
	movabsq	$.L.str.136, %rsi
	movabsq	$lbs, %rdi
	movq	token_name+16, %rcx
	movslq	-156(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movl	-48(%rbp), %eax
	movslq	-40(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rdi
	movq	24(%rdi), %rdi
	movslq	-44(%rbp), %r8
	addq	%r8, %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movq	-304(%rbp), %r8         # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB70_140
.LBB70_139:                             # %if.else.337
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movl	-48(%rbp), %esi
	callq	linebuffer_setlen
	movabsq	$.L.str.137, %rsi
	movabsq	$lbs, %rdi
	movq	token_name+16, %rax
	movl	-48(%rbp), %edx
	movslq	-40(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdi
	movq	24(%rdi), %rcx
	movslq	-44(%rbp), %rdi
	addq	%rdi, %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB70_140:                             # %if.end.345
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, token+17
	jmp	.LBB70_174
.LBB70_141:                             # %if.else.346
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, objdef
	jne	.LBB70_146
# BB#142:                               # %if.then.349
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, class_qualify
	je	.LBB70_144
# BB#143:                               # %if.then.351
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movq	objtag, %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$2, %rax
	movslq	-48(%rbp), %rdi
	addq	%rdi, %rax
	movl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	movl	-160(%rbp), %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	callq	linebuffer_setlen
	movabsq	$.L.str.138, %rsi
	movabsq	$lbs, %rax
	movq	token_name+16, %rdi
	movq	objtag, %rdx
	movl	-48(%rbp), %ecx
	movslq	-40(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rax
	movq	24(%rax), %rax
	movslq	-44(%rbp), %r8
	addq	%r8, %rax
	movq	%rax, %r8
	movb	$0, %al
	callq	sprintf
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB70_145
.LBB70_144:                             # %if.else.365
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movl	-48(%rbp), %esi
	callq	linebuffer_setlen
	movabsq	$.L.str.137, %rsi
	movabsq	$lbs, %rdi
	movq	token_name+16, %rax
	movl	-48(%rbp), %edx
	movslq	-40(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdi
	movq	24(%rdi), %rcx
	movslq	-44(%rbp), %rdi
	addq	%rdi, %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB70_145:                             # %if.end.373
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, token+17
	jmp	.LBB70_173
.LBB70_146:                             # %if.else.374
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$8, objdef
	je	.LBB70_148
# BB#147:                               # %lor.lhs.false.377
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$10, objdef
	jne	.LBB70_149
.LBB70_148:                             # %if.then.380
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, token+17
	jmp	.LBB70_172
.LBB70_149:                             # %if.else.381
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, fvdef
	jne	.LBB70_160
# BB#150:                               # %if.then.384
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movslq	-44(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	movsbl	(%rax,%rcx), %esi
	cmpl	$70, %esi
	sete	%dil
	andb	$1, %dil
	movb	%dil, -161(%rbp)
	movl	-44(%rbp), %esi
	movl	%esi, -168(%rbp)
	movl	-48(%rbp), %esi
	movl	%esi, -172(%rbp)
	testb	$1, -161(%rbp)
	je	.LBB70_152
# BB#151:                               # %if.then.397
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	movl	-172(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -172(%rbp)
.LBB70_152:                             # %if.end.400
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movl	-172(%rbp), %esi
	callq	linebuffer_setlen
	movabsq	$lbs, %rdi
	movq	token_name+16, %rax
	movslq	-40(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdi
	movq	24(%rdi), %rcx
	movslq	-168(%rbp), %rdi
	addq	%rdi, %rcx
	movslq	-172(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movslq	-172(%rbp), %rax
	movq	token_name+16, %rcx
	movb	$0, (%rcx,%rax)
	testb	$1, -161(%rbp)
	je	.LBB70_159
# BB#153:                               # %if.then.411
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_154
.LBB70_154:                             # %while.cond.412
                                        #   Parent Loop BB70_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-172(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -172(%rbp)
	cmpl	$0, %eax
	jl	.LBB70_158
# BB#155:                               # %while.body.416
                                        #   in Loop: Header=BB70_154 Depth=2
	movslq	-172(%rbp), %rax
	movq	token_name+16, %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$95, %edx
	jne	.LBB70_157
# BB#156:                               # %if.then.422
                                        #   in Loop: Header=BB70_154 Depth=2
	movslq	-172(%rbp), %rax
	movq	token_name+16, %rcx
	movb	$45, (%rcx,%rax)
.LBB70_157:                             # %if.end.425
                                        #   in Loop: Header=BB70_154 Depth=2
	jmp	.LBB70_154
.LBB70_158:                             # %while.end.426
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_159
.LBB70_159:                             # %if.end.427
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	-161(%rbp), %al
	andb	$1, %al
	movb	%al, token+17
	jmp	.LBB70_171
.LBB70_160:                             # %if.else.430
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movl	-48(%rbp), %esi
	callq	linebuffer_setlen
	movb	$1, %al
	movabsq	$lbs, %rdi
	movq	token_name+16, %rcx
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rdi
	movq	24(%rdi), %rdx
	movslq	-44(%rbp), %rdi
	addq	%rdi, %rdx
	movslq	-48(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movb	%al, -337(%rbp)         # 1-byte Spill
	callq	memcpy
	movslq	-48(%rbp), %rcx
	movq	token_name+16, %rdx
	movb	$0, (%rdx,%rcx)
	cmpl	$2, structdef
	movb	-337(%rbp), %al         # 1-byte Reload
	movb	%al, -338(%rbp)         # 1-byte Spill
	je	.LBB70_170
# BB#161:                               # %lor.lhs.false.442
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, %al
	cmpl	$2, typdef
	movb	%al, -338(%rbp)         # 1-byte Spill
	je	.LBB70_170
# BB#162:                               # %lor.lhs.false.445
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, %al
	cmpl	$4, typdef
	movb	%al, -338(%rbp)         # 1-byte Spill
	je	.LBB70_170
# BB#163:                               # %lor.lhs.false.448
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -138(%rbp)
	je	.LBB70_165
# BB#164:                               # %land.lhs.true.451
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$1, %al
	cmpl	$3, definedef
	movb	%al, -338(%rbp)         # 1-byte Spill
	je	.LBB70_170
.LBB70_165:                             # %lor.rhs
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -138(%rbp)
	movb	%cl, -339(%rbp)         # 1-byte Spill
	je	.LBB70_169
# BB#166:                               # %land.lhs.true.456
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, definedef
	movb	%cl, -339(%rbp)         # 1-byte Spill
	jne	.LBB70_169
# BB#167:                               # %land.lhs.true.459
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, structdef
	movb	%cl, -339(%rbp)         # 1-byte Spill
	jne	.LBB70_169
# BB#168:                               # %land.rhs.462
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	setg	%al
	movb	%al, -339(%rbp)         # 1-byte Spill
.LBB70_169:                             # %land.end.465
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	-339(%rbp), %al         # 1-byte Reload
	movb	%al, -338(%rbp)         # 1-byte Spill
.LBB70_170:                             # %lor.end
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	-338(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, token+17
.LBB70_171:                             # %if.end.467
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_172
.LBB70_172:                             # %if.end.468
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_173
.LBB70_173:                             # %if.end.469
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_174
.LBB70_174:                             # %if.end.470
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movl	lineno, %ecx
	movl	%ecx, token+20
	movl	-44(%rbp), %ecx
	movl	%ecx, token+8
	movl	-48(%rbp), %ecx
	movl	%ecx, token+12
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	24(%rsi), %rdx
	movq	%rdx, token
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, token+24
	movb	$1, token+16
	cmpl	$0, definedef
	jne	.LBB70_184
# BB#175:                               # %land.lhs.true.480
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$4, fvdef
	je	.LBB70_181
# BB#176:                               # %lor.lhs.false.483
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$3, fvdef
	je	.LBB70_181
# BB#177:                               # %lor.lhs.false.486
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	je	.LBB70_181
# BB#178:                               # %lor.lhs.false.489
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$4, typdef
	je	.LBB70_181
# BB#179:                               # %lor.lhs.false.492
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, typdef
	je	.LBB70_181
# BB#180:                               # %lor.lhs.false.495
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, objdef
	je	.LBB70_184
.LBB70_181:                             # %if.then.498
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB70_183
# BB#182:                               # %if.then.501
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB70_183:                             # %if.end.503
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_191
.LBB70_184:                             # %if.else.504
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_189
# BB#185:                               # %lor.lhs.false.507
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, fvdef
	je	.LBB70_189
# BB#186:                               # %lor.lhs.false.510
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_190
# BB#187:                               # %land.lhs.true.513
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_190
# BB#188:                               # %land.lhs.true.516
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_190
.LBB70_189:                             # %if.then.523
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	-138(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	make_C_tag
.LBB70_190:                             # %if.end.525
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_191
.LBB70_191:                             # %if.end.526
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_196
.LBB70_192:                             # %if.else.527
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_195
# BB#193:                               # %land.lhs.true.530
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$8, fvdef
	jne	.LBB70_195
# BB#194:                               # %if.then.533
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_195:                             # %if.end.534
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_196
.LBB70_196:                             # %if.end.535
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, -89(%rbp)
# BB#197:                               # %if.end.536
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_202
.LBB70_198:                             # %if.else.537
                                        #   in Loop: Header=BB70_6 Depth=1
	movzbl	-17(%rbp), %edi
	callq	intoken
	testb	$1, %al
	jne	.LBB70_199
	jmp	.LBB70_201
.LBB70_199:                             # %if.then.539
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_200
.LBB70_200:                             # %still_in_token
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB70_6
.LBB70_201:                             # %if.end.541
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_202
.LBB70_202:                             # %if.end.542
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_223
.LBB70_203:                             # %if.else.543
                                        #   in Loop: Header=BB70_6 Depth=1
	movzbl	-17(%rbp), %edi
	callq	begtoken
	testb	$1, %al
	jne	.LBB70_204
	jmp	.LBB70_222
.LBB70_204:                             # %if.then.545
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	definedef(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB70_205
	jmp	.LBB70_523
.LBB70_523:                             # %if.then.545
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-344(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	je	.LBB70_216
	jmp	.LBB70_217
.LBB70_205:                             # %sw.bb.546
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$5, %ecx
	movl	%eax, -352(%rbp)        # 4-byte Spill
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	je	.LBB70_206
	jmp	.LBB70_524
.LBB70_524:                             # %sw.bb.546
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	je	.LBB70_207
	jmp	.LBB70_211
.LBB70_206:                             # %sw.bb.547
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$6, fvdef
	jmp	.LBB70_6
.LBB70_207:                             # %sw.bb.548
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	cmpl	$0, %eax
	je	.LBB70_209
# BB#208:                               # %lor.lhs.false.552
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	je	.LBB70_210
.LBB70_209:                             # %if.then.554
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$8, fvdef
.LBB70_210:                             # %if.end.555
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_212
.LBB70_211:                             # %sw.default.556
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_212
.LBB70_212:                             # %sw.epilog.557
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	jne	.LBB70_215
# BB#213:                               # %land.lhs.true.560
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$5, %eax
	cmpl	$5, %eax
	je	.LBB70_215
# BB#214:                               # %if.then.564
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %edi
	callq	popclass_above
	movl	$0, structdef
.LBB70_215:                             # %if.end.565
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_218
.LBB70_216:                             # %sw.bb.566
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	token, %rax
	movq	%rax, -128(%rbp)
	movq	token+8, %rax
	movq	%rax, -120(%rbp)
	movq	token+16, %rax
	movq	%rax, -112(%rbp)
	movq	token+24, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB70_218
.LBB70_217:                             # %sw.default.567
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_218
.LBB70_218:                             # %sw.epilog.568
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -90(%rbp)
	je	.LBB70_220
# BB#219:                               # %lor.lhs.false.570
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	-32(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.LBB70_221
.LBB70_220:                             # %if.then.578
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	-32(%rbp), %rcx
	addq	$-1, %rcx
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	subq	%rax, %rcx
	movl	%ecx, %esi
	movl	%esi, -44(%rbp)
	movl	$1, -48(%rbp)
	movb	$1, -89(%rbp)
.LBB70_221:                             # %if.end.588
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_222:                             # %if.end.589
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_223
.LBB70_223:                             # %if.end.590
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_224
.LBB70_224:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movsbl	-17(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB70_497
	jmp	.LBB70_525
.LBB70_525:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$33, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB70_491
	jmp	.LBB70_526
.LBB70_526:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	je	.LBB70_491
	jmp	.LBB70_527
.LBB70_527:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	addl	$-37, %eax
	subl	$2, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jb	.LBB70_491
	jmp	.LBB70_528
.LBB70_528:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	je	.LBB70_364
	jmp	.LBB70_529
.LBB70_529:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	je	.LBB70_383
	jmp	.LBB70_530
.LBB70_530:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	je	.LBB70_442
	jmp	.LBB70_531
.LBB70_531:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	je	.LBB70_486
	jmp	.LBB70_532
.LBB70_532:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$44, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	je	.LBB70_297
	jmp	.LBB70_533
.LBB70_533:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	je	.LBB70_486
	jmp	.LBB70_534
.LBB70_534:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	addl	$-46, %eax
	subl	$2, %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jb	.LBB70_491
	jmp	.LBB70_535
.LBB70_535:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	je	.LBB70_225
	jmp	.LBB70_536
.LBB70_536:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$59, %eax
	movl	%eax, -412(%rbp)        # 4-byte Spill
	je	.LBB70_245
	jmp	.LBB70_537
.LBB70_537:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
	je	.LBB70_478
	jmp	.LBB70_538
.LBB70_538:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$61, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	je	.LBB70_464
	jmp	.LBB70_539
.LBB70_539:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	je	.LBB70_483
	jmp	.LBB70_540
.LBB70_540:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	je	.LBB70_491
	jmp	.LBB70_541
.LBB70_541:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$93, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	je	.LBB70_343
	jmp	.LBB70_542
.LBB70_542:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	je	.LBB70_491
	jmp	.LBB70_543
.LBB70_543:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	je	.LBB70_407
	jmp	.LBB70_544
.LBB70_544:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	je	.LBB70_491
	jmp	.LBB70_545
.LBB70_545:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$125, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	je	.LBB70_447
	jmp	.LBB70_546
.LBB70_546:                             # %if.end.591
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$126, %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	je	.LBB70_491
	jmp	.LBB70_511
.LBB70_225:                             # %sw.bb.593
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_227
# BB#226:                               # %if.then.595
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_227:                             # %if.end.596
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -90(%rbp)
	je	.LBB70_231
# BB#228:                               # %land.lhs.true.599
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, token+8
	jne	.LBB70_231
# BB#229:                               # %land.lhs.true.602
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, token+16
	je	.LBB70_231
# BB#230:                               # %if.then.605
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
	jmp	.LBB70_511
.LBB70_231:                             # %if.end.606
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_233
# BB#232:                               # %if.then.609
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_233:                             # %if.end.610
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	objdef(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -456(%rbp)        # 4-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	je	.LBB70_234
	jmp	.LBB70_570
.LBB70_570:                             # %if.end.610
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-456(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -464(%rbp)        # 4-byte Spill
	je	.LBB70_235
	jmp	.LBB70_571
.LBB70_571:                             # %if.end.610
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-456(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -468(%rbp)        # 4-byte Spill
	je	.LBB70_235
	jmp	.LBB70_238
.LBB70_234:                             # %sw.bb.611
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	movl	$11, objdef
	callq	make_C_tag
	jmp	.LBB70_239
.LBB70_235:                             # %sw.bb.612
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$9, objdef
	cmpl	$0, class_qualify
	je	.LBB70_237
# BB#236:                               # %if.then.614
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movl	token_name+8, %eax
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	linebuffer_setlen
	movq	token_name+16, %rdi
	movslq	-176(%rbp), %rcx
	addq	%rcx, %rdi
	movl	$.L.str.139, %eax
	movl	%eax, %esi
	callq	strcpy
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB70_237:                             # %if.end.620
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_239
.LBB70_238:                             # %sw.default.621
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_239
.LBB70_239:                             # %sw.epilog.622
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	jne	.LBB70_241
# BB#240:                               # %if.then.625
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$3, structdef
	jmp	.LBB70_511
.LBB70_241:                             # %if.end.626
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB70_244
# BB#242:                               # %land.lhs.true.629
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$7, fvdef
	jne	.LBB70_244
# BB#243:                               # %if.then.632
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$8, fvdef
	jmp	.LBB70_511
.LBB70_244:                             # %if.end.633
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_245:                             # %sw.bb.634
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_247
# BB#246:                               # %lor.lhs.false.637
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_248
.LBB70_247:                             # %if.then.640
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_248:                             # %if.end.641
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	typdef(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	je	.LBB70_250
	jmp	.LBB70_564
.LBB70_564:                             # %if.end.641
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	je	.LBB70_249
	jmp	.LBB70_565
.LBB70_565:                             # %if.end.641
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	je	.LBB70_250
	jmp	.LBB70_566
.LBB70_566:                             # %if.end.641
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	je	.LBB70_249
	jmp	.LBB70_567
.LBB70_567:                             # %if.end.641
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	je	.LBB70_250
	jmp	.LBB70_289
.LBB70_249:                             # %sw.bb.642
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
	movl	$0, typdef
	movl	$0, fvdef
	jmp	.LBB70_294
.LBB70_250:                             # %sw.bb.643
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$4, %ecx
	movl	%eax, -504(%rbp)        # 4-byte Spill
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	je	.LBB70_255
	jmp	.LBB70_568
.LBB70_568:                             # %sw.bb.643
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-504(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -512(%rbp)        # 4-byte Spill
	je	.LBB70_265
	jmp	.LBB70_569
.LBB70_569:                             # %sw.bb.643
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-504(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jne	.LBB70_282
	jmp	.LBB70_251
.LBB70_251:                             # %sw.bb.644
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, typdef
	je	.LBB70_253
# BB#252:                               # %lor.lhs.false.647
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB70_254
.LBB70_253:                             # %if.then.650
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_254:                             # %if.end.651
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_288
.LBB70_255:                             # %sw.bb.652
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, globals
	je	.LBB70_259
# BB#256:                               # %land.lhs.true.654
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_259
# BB#257:                               # %land.lhs.true.657
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, fvextern
	je	.LBB70_263
# BB#258:                               # %lor.lhs.false.659
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	jne	.LBB70_263
.LBB70_259:                             # %lor.lhs.false.661
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, members
	je	.LBB70_264
# BB#260:                               # %land.lhs.true.663
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_264
# BB#261:                               # %land.lhs.true.666
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_264
# BB#262:                               # %land.lhs.true.669
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_264
.LBB70_263:                             # %if.then.676
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
.LBB70_264:                             # %if.end.677
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, fvextern
	movl	$0, fvdef
	movb	$0, token+16
	jmp	.LBB70_288
.LBB70_265:                             # %sw.bb.678
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	je	.LBB70_275
# BB#266:                               # %land.lhs.true.680
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB70_270
# BB#267:                               # %lor.lhs.false.683
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_270
# BB#268:                               # %land.lhs.true.686
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_270
# BB#269:                               # %land.lhs.true.689
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB70_275
.LBB70_270:                             # %land.lhs.true.696
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, typdef
	je	.LBB70_280
# BB#271:                               # %lor.lhs.false.699
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, typdef
	je	.LBB70_275
# BB#272:                               # %land.lhs.true.702
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_275
# BB#273:                               # %land.lhs.true.705
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_275
# BB#274:                               # %land.lhs.true.708
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB70_280
.LBB70_275:                             # %lor.lhs.false.715
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, members
	je	.LBB70_281
# BB#276:                               # %land.lhs.true.717
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	cmpl	$0, %eax
	jne	.LBB70_281
# BB#277:                               # %land.lhs.true.721
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_281
# BB#278:                               # %land.lhs.true.724
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_281
# BB#279:                               # %land.lhs.true.727
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_281
.LBB70_280:                             # %if.then.734
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
.LBB70_281:                             # %if.end.735
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_282
.LBB70_282:                             # %sw.default.736
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, fvextern
	movl	$0, fvdef
	cmpl	$0, declarations
	je	.LBB70_286
# BB#283:                               # %land.lhs.true.738
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB70_286
# BB#284:                               # %land.lhs.true.741
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	jne	.LBB70_286
# BB#285:                               # %if.then.744
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
	jmp	.LBB70_287
.LBB70_286:                             # %if.else.745
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, token+16
.LBB70_287:                             # %if.end.746
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_288
.LBB70_288:                             # %sw.epilog.747
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_289
.LBB70_289:                             # %sw.default.748
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_292
# BB#290:                               # %land.lhs.true.751
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_292
# BB#291:                               # %land.lhs.true.754
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB70_293
.LBB70_292:                             # %if.then.761
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, typdef
.LBB70_293:                             # %if.end.762
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_294
.LBB70_294:                             # %sw.epilog.763
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	jne	.LBB70_296
# BB#295:                               # %if.then.766
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, structdef
.LBB70_296:                             # %if.end.767
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_297:                             # %sw.bb.768
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_299
# BB#298:                               # %lor.lhs.false.771
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_300
.LBB70_299:                             # %if.then.774
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_300:                             # %if.end.775
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	objdef(%rip), %eax
	orl	$2, %eax
	subl	$10, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	je	.LBB70_301
	jmp	.LBB70_302
.LBB70_301:                             # %sw.bb.776
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$6, objdef
	jmp	.LBB70_303
.LBB70_302:                             # %sw.default.777
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_303
.LBB70_303:                             # %sw.epilog.778
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$8, %eax
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movl	%eax, -532(%rbp)        # 4-byte Spill
	ja	.LBB70_339
# BB#563:                               # %sw.epilog.778
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	.LJTI70_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB70_304:                             # %sw.bb.779
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_340
.LBB70_305:                             # %sw.bb.780
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_310
# BB#306:                               # %land.lhs.true.783
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_310
# BB#307:                               # %land.lhs.true.786
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_310
# BB#308:                               # %land.lhs.true.793
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB70_310
# BB#309:                               # %if.then.796
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_310:                             # %if.end.797
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_340
.LBB70_311:                             # %sw.bb.798
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$8, fvdef
	jmp	.LBB70_340
.LBB70_312:                             # %sw.bb.799
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB70_323
# BB#313:                               # %land.lhs.true.802
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, globals
	je	.LBB70_318
# BB#314:                               # %land.lhs.true.804
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_318
# BB#315:                               # %land.lhs.true.807
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -80(%rbp)
	jne	.LBB70_318
# BB#316:                               # %land.lhs.true.810
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, fvextern
	je	.LBB70_322
# BB#317:                               # %lor.lhs.false.812
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	jne	.LBB70_322
.LBB70_318:                             # %lor.lhs.false.814
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, members
	je	.LBB70_323
# BB#319:                               # %land.lhs.true.816
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_323
# BB#320:                               # %land.lhs.true.819
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_323
# BB#321:                               # %land.lhs.true.822
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_323
.LBB70_322:                             # %if.then.829
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
.LBB70_323:                             # %if.end.830
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_340
.LBB70_324:                             # %sw.bb.831
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	je	.LBB70_329
# BB#325:                               # %land.lhs.true.833
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, typdef
	jne	.LBB70_329
# BB#326:                               # %land.lhs.true.836
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_334
# BB#327:                               # %land.lhs.true.839
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_334
# BB#328:                               # %land.lhs.true.842
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_334
.LBB70_329:                             # %lor.lhs.false.849
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, members
	je	.LBB70_335
# BB#330:                               # %land.lhs.true.851
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, typdef
	je	.LBB70_335
# BB#331:                               # %land.lhs.true.854
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_335
# BB#332:                               # %land.lhs.true.857
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_335
# BB#333:                               # %land.lhs.true.860
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB70_335
.LBB70_334:                             # %if.then.867
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$4, fvdef
	jmp	.LBB70_338
.LBB70_335:                             # %if.else.868
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	jne	.LBB70_337
# BB#336:                               # %if.then.870
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_337:                             # %if.end.871
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_338
.LBB70_338:                             # %if.end.872
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, token+16
	jmp	.LBB70_340
.LBB70_339:                             # %sw.default.873
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_340:                             # %sw.epilog.874
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	jne	.LBB70_342
# BB#341:                               # %if.then.877
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, structdef
.LBB70_342:                             # %if.end.878
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_343:                             # %sw.bb.879
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	jne	.LBB70_345
# BB#344:                               # %lor.lhs.false.882
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_346
.LBB70_345:                             # %if.then.885
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_346:                             # %if.end.886
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	jne	.LBB70_348
# BB#347:                               # %if.then.889
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, structdef
.LBB70_348:                             # %if.end.890
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	typdef(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	ja	.LBB70_362
# BB#559:                               # %if.end.890
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	.LJTI70_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB70_349:                             # %sw.bb.891
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	movl	$5, typdef
	callq	make_C_tag
	jmp	.LBB70_363
.LBB70_350:                             # %sw.bb.892
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -556(%rbp)        # 4-byte Spill
	movl	%ecx, -560(%rbp)        # 4-byte Spill
	je	.LBB70_351
	jmp	.LBB70_560
.LBB70_560:                             # %sw.bb.892
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	je	.LBB70_352
	jmp	.LBB70_561
.LBB70_561:                             # %sw.bb.892
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -568(%rbp)        # 4-byte Spill
	je	.LBB70_351
	jmp	.LBB70_562
.LBB70_562:                             # %sw.bb.892
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	addl	$-8, %eax
	subl	$1, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	ja	.LBB70_360
	jmp	.LBB70_351
.LBB70_351:                             # %sw.bb.893
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_361
.LBB70_352:                             # %sw.bb.894
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, members
	je	.LBB70_354
# BB#353:                               # %land.lhs.true.896
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$1, -64(%rbp)
	je	.LBB70_358
.LBB70_354:                             # %lor.lhs.false.899
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, globals
	je	.LBB70_359
# BB#355:                               # %land.lhs.true.901
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_359
# BB#356:                               # %land.lhs.true.904
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, fvextern
	je	.LBB70_358
# BB#357:                               # %lor.lhs.false.906
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	je	.LBB70_359
.LBB70_358:                             # %if.then.908
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
.LBB70_359:                             # %if.end.909
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_360
.LBB70_360:                             # %sw.default.910
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_361:                             # %sw.epilog.911
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_363
.LBB70_362:                             # %sw.default.912
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_363
.LBB70_363:                             # %sw.epilog.913
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_364:                             # %sw.bb.914
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_366
# BB#365:                               # %if.then.916
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB70_511
.LBB70_366:                             # %if.end.918
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_368
# BB#367:                               # %if.then.921
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_368:                             # %if.end.922
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$3, objdef
	jne	.LBB70_371
# BB#369:                               # %land.lhs.true.925
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB70_371
# BB#370:                               # %if.then.928
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$4, objdef
.LBB70_371:                             # %if.end.929
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -576(%rbp)        # 4-byte Spill
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	je	.LBB70_379
	jmp	.LBB70_557
.LBB70_557:                             # %if.end.929
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-576(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	je	.LBB70_372
	jmp	.LBB70_558
.LBB70_558:                             # %if.end.929
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-576(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	je	.LBB70_380
	jmp	.LBB70_381
.LBB70_372:                             # %sw.bb.930
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, typdef
	jne	.LBB70_378
# BB#373:                               # %land.lhs.true.933
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB70_378
# BB#374:                               # %land.lhs.true.937
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_377
# BB#375:                               # %land.lhs.true.940
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_377
# BB#376:                               # %land.lhs.true.943
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB70_378
.LBB70_377:                             # %if.then.950
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
	movl	$5, typdef
	movl	$8, fvdef
	jmp	.LBB70_382
.LBB70_378:                             # %if.end.951
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_379
.LBB70_379:                             # %sw.bb.952
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$5, fvdef
	jmp	.LBB70_382
.LBB70_380:                             # %sw.bb.953
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$6, fvdef
	jmp	.LBB70_382
.LBB70_381:                             # %sw.default.954
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_382
.LBB70_382:                             # %sw.epilog.955
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB70_511
.LBB70_383:                             # %sw.bb.957
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, inattribute
	je	.LBB70_387
# BB#384:                               # %if.then.959
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jne	.LBB70_386
# BB#385:                               # %if.then.963
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, inattribute
.LBB70_386:                             # %if.end.964
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_387:                             # %if.end.965
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_389
# BB#388:                               # %if.then.968
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_389:                             # %if.end.969
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, objdef
	jne	.LBB70_392
# BB#390:                               # %land.lhs.true.972
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$1, -72(%rbp)
	jne	.LBB70_392
# BB#391:                               # %if.then.975
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$11, objdef
.LBB70_392:                             # %if.end.976
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, %eax
	jne	.LBB70_403
# BB#393:                               # %if.then.980
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	addl	$-5, %eax
	subl	$1, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	ja	.LBB70_395
	jmp	.LBB70_394
.LBB70_394:                             # %sw.bb.981
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$7, fvdef
	jmp	.LBB70_396
.LBB70_395:                             # %sw.default.982
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_396
.LBB70_396:                             # %sw.epilog.983
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_399
# BB#397:                               # %land.lhs.true.986
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jle	.LBB70_399
# BB#398:                               # %land.lhs.true.989
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB70_402
.LBB70_399:                             # %land.lhs.true.996
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$4, typdef
	je	.LBB70_401
# BB#400:                               # %lor.lhs.false.999
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, typdef
	jne	.LBB70_402
.LBB70_401:                             # %if.then.1002
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	movl	$5, typdef
	callq	make_C_tag
.LBB70_402:                             # %if.end.1003
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_406
.LBB70_403:                             # %if.else.1004
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -72(%rbp)
	jge	.LBB70_405
# BB#404:                               # %if.then.1007
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, -72(%rbp)
.LBB70_405:                             # %if.end.1008
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_406
.LBB70_406:                             # %if.end.1009
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_407:                             # %sw.bb.1010
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_409
# BB#408:                               # %if.then.1013
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_409:                             # %if.end.1014
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, typdef
	jne	.LBB70_411
# BB#410:                               # %if.then.1017
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$3, typdef
	movl	-64(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB70_411:                             # %if.end.1018
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	je	.LBB70_426
	jmp	.LBB70_552
.LBB70_552:                             # %if.end.1018
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	je	.LBB70_412
	jmp	.LBB70_553
.LBB70_553:                             # %if.end.1018
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	je	.LBB70_425
	jmp	.LBB70_436
.LBB70_412:                             # %sw.bb.1019
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB70_424
# BB#413:                               # %land.lhs.true.1022
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, class_qualify
	jne	.LBB70_424
# BB#414:                               # %if.then.1024
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	token_name+16, %rax
	movq	%rax, -192(%rbp)
	movq	token_name+16, %rax
	movslq	token_name+8, %rcx
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
	movq	token_name+16, %rax
	movq	%rax, -184(%rbp)
.LBB70_415:                             # %for.cond.1027
                                        #   Parent Loop BB70_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jae	.LBB70_421
# BB#416:                               # %for.body.1030
                                        #   in Loop: Header=BB70_415 Depth=2
	movq	-184(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB70_419
# BB#417:                               # %land.lhs.true.1034
                                        #   in Loop: Header=BB70_415 Depth=2
	movq	-184(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB70_419
# BB#418:                               # %if.then.1039
                                        #   in Loop: Header=BB70_415 Depth=2
	movq	-184(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
.LBB70_419:                             # %if.end.1042
                                        #   in Loop: Header=BB70_415 Depth=2
	jmp	.LBB70_420
.LBB70_420:                             # %for.inc.1043
                                        #   in Loop: Header=BB70_415 Depth=2
	movq	-184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB70_415
.LBB70_421:                             # %for.end.1045
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-192(%rbp), %rax
	cmpq	token_name+16, %rax
	jbe	.LBB70_423
# BB#422:                               # %if.then.1048
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$token_name, %rdi
	movq	-192(%rbp), %rax
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -204(%rbp)
	movl	-204(%rbp), %esi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	callq	linebuffer_setlen
	movq	token_name+16, %rdi
	movq	-192(%rbp), %rsi
	movl	-204(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	callq	memmove
.LBB70_423:                             # %if.end.1053
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_424
.LBB70_424:                             # %if.end.1054
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
.LBB70_425:                             # %sw.bb.1055
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
	jmp	.LBB70_437
.LBB70_426:                             # %sw.bb.1056
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	objdef(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -620(%rbp)        # 4-byte Spill
	movl	%ecx, -624(%rbp)        # 4-byte Spill
	je	.LBB70_427
	jmp	.LBB70_554
.LBB70_554:                             # %sw.bb.1056
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	je	.LBB70_428
	jmp	.LBB70_555
.LBB70_555:                             # %sw.bb.1056
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
	je	.LBB70_428
	jmp	.LBB70_429
.LBB70_427:                             # %sw.bb.1057
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$11, objdef
	jmp	.LBB70_435
.LBB70_428:                             # %sw.bb.1058
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$6, objdef
	jmp	.LBB70_435
.LBB70_429:                             # %sw.default.1059
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_434
# BB#430:                               # %land.lhs.true.1062
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, structdef
	jne	.LBB70_434
# BB#431:                               # %land.lhs.true.1065
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, cstack+16
	jne	.LBB70_434
# BB#432:                               # %land.lhs.true.1068
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, typdef
	jne	.LBB70_434
# BB#433:                               # %if.then.1071
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$-1, -64(%rbp)
.LBB70_434:                             # %if.end.1072
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_435
.LBB70_435:                             # %sw.epilog.1073
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_437
.LBB70_436:                             # %sw.default.1074
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_437
.LBB70_437:                             # %sw.epilog.1075
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	structdef(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -636(%rbp)        # 4-byte Spill
	movl	%ecx, -640(%rbp)        # 4-byte Spill
	je	.LBB70_438
	jmp	.LBB70_556
.LBB70_556:                             # %sw.epilog.1075
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jb	.LBB70_439
	jmp	.LBB70_440
.LBB70_438:                             # %sw.bb.1076
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	-64(%rbp), %edi
	callq	pushclass_above
	movl	$0, structdef
	jmp	.LBB70_441
.LBB70_439:                             # %sw.bb.1077
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %edi
	movq	token, %rax
	movslq	token+8, %rcx
	addq	%rcx, %rax
	movl	token+12, %edx
	movq	%rax, %rsi
	callq	pushclass_above
	xorl	%edi, %edi
	movl	$0, structdef
	callq	make_C_tag
	jmp	.LBB70_441
.LBB70_440:                             # %sw.default.1080
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_441
.LBB70_441:                             # %sw.epilog.1081
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB70_511
.LBB70_442:                             # %sw.bb.1083
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_444
# BB#443:                               # %if.then.1086
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_444:                             # %if.end.1087
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$5, fvdef
	jne	.LBB70_446
# BB#445:                               # %if.then.1090
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
	movb	$0, token+16
.LBB70_446:                             # %if.end.1091
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_447:                             # %sw.bb.1092
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_449
# BB#448:                               # %if.then.1095
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_449:                             # %if.end.1096
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	testb	$1, ignoreindent
	jne	.LBB70_454
# BB#450:                               # %land.lhs.true.1099
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	-32(%rbp), %rcx
	movslq	-40(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.LBB70_454
# BB#451:                               # %if.then.1107
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB70_453
# BB#452:                               # %if.then.1110
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, token+16
.LBB70_453:                             # %if.end.1111
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, -64(%rbp)
	movl	$0, -72(%rbp)
	jmp	.LBB70_457
.LBB70_454:                             # %if.else.1112
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jge	.LBB70_456
# BB#455:                               # %if.then.1115
                                        #   in Loop: Header=BB70_6 Depth=1
	movb	$0, token+16
	movl	$0, -64(%rbp)
.LBB70_456:                             # %if.end.1116
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_457
.LBB70_457:                             # %if.end.1117
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_460
# BB#458:                               # %land.lhs.true.1120
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$9, fvdef
	jne	.LBB70_460
# BB#459:                               # %if.then.1123
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_460:                             # %if.end.1124
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %edi
	callq	popclass_above
	movl	$0, structdef
	cmpl	$3, typdef
	jne	.LBB70_463
# BB#461:                               # %land.lhs.true.1127
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jg	.LBB70_463
# BB#462:                               # %if.then.1130
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$4, typdef
.LBB70_463:                             # %if.end.1131
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_464:                             # %sw.bb.1132
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_466
# BB#465:                               # %if.then.1135
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_466:                             # %if.end.1136
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -648(%rbp)        # 4-byte Spill
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	je	.LBB70_467
	jmp	.LBB70_549
.LBB70_549:                             # %if.end.1136
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-648(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	je	.LBB70_468
	jmp	.LBB70_550
.LBB70_550:                             # %if.end.1136
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-648(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	je	.LBB70_467
	jmp	.LBB70_551
.LBB70_551:                             # %if.end.1136
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-648(%rbp), %eax        # 4-byte Reload
	addl	$-8, %eax
	subl	$1, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	ja	.LBB70_476
	jmp	.LBB70_467
.LBB70_467:                             # %sw.bb.1137
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_477
.LBB70_468:                             # %sw.bb.1138
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, members
	je	.LBB70_470
# BB#469:                               # %land.lhs.true.1140
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$1, -64(%rbp)
	je	.LBB70_474
.LBB70_470:                             # %lor.lhs.false.1143
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, globals
	je	.LBB70_475
# BB#471:                               # %land.lhs.true.1145
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_475
# BB#472:                               # %land.lhs.true.1148
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, fvextern
	je	.LBB70_474
# BB#473:                               # %lor.lhs.false.1150
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, declarations
	je	.LBB70_475
.LBB70_474:                             # %if.then.1152
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%edi, %edi
	callq	make_C_tag
.LBB70_475:                             # %if.end.1153
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_476
.LBB70_476:                             # %sw.default.1154
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$9, fvdef
.LBB70_477:                             # %sw.epilog.1155
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_478:                             # %sw.bb.1156
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-4(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB70_482
# BB#479:                               # %land.lhs.true.1159
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$2, structdef
	je	.LBB70_481
# BB#480:                               # %lor.lhs.false.1162
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$4, fvdef
	jne	.LBB70_482
.LBB70_481:                             # %if.then.1165
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB70_511
.LBB70_482:                             # %if.end.1167
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_490
.LBB70_483:                             # %sw.bb.1168
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -80(%rbp)
	jle	.LBB70_485
# BB#484:                               # %if.then.1171
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB70_511
.LBB70_485:                             # %if.end.1173
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_490
.LBB70_486:                             # %sw.bb.1174
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$6, objdef
	jne	.LBB70_489
# BB#487:                               # %land.lhs.true.1177
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB70_489
# BB#488:                               # %if.then.1180
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$7, objdef
	jmp	.LBB70_511
.LBB70_489:                             # %if.end.1181
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_490
.LBB70_490:                             # %resetfvdef
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_491
.LBB70_491:                             # %sw.bb.1182
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$0, definedef
	je	.LBB70_493
# BB#492:                               # %if.then.1185
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_493:                             # %if.end.1186
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	fvdef(%rip), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -668(%rbp)        # 4-byte Spill
	movl	%ecx, -672(%rbp)        # 4-byte Spill
	je	.LBB70_494
	jmp	.LBB70_547
.LBB70_547:                             # %if.end.1186
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-668(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	je	.LBB70_494
	jmp	.LBB70_548
.LBB70_548:                             # %if.end.1186
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-668(%rbp), %eax        # 4-byte Reload
	addl	$-8, %eax
	subl	$1, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	ja	.LBB70_495
	jmp	.LBB70_494
.LBB70_494:                             # %sw.bb.1187
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_496
.LBB70_495:                             # %sw.default.1188
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, fvdef
.LBB70_496:                             # %sw.epilog.1189
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_497:                             # %sw.bb.1190
                                        #   in Loop: Header=BB70_6 Depth=1
	cmpl	$3, objdef
	jne	.LBB70_499
# BB#498:                               # %if.then.1193
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, %edi
	callq	make_C_tag
	movl	$11, objdef
.LBB70_499:                             # %if.end.1194
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -88(%rbp)
	je	.LBB70_503
# BB#500:                               # %if.then.1196
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_501
.LBB70_501:                             # %do.body.1197
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	charno, %rcx
	movslq	-36(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	readline
	movabsq	$lbs, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -88(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -40(%rbp)
# BB#502:                               # %do.end.1208
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_510
.LBB70_503:                             # %if.else.1209
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_504
.LBB70_504:                             # %do.body.1210
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_505
.LBB70_505:                             # %do.body.1211
                                        #   in Loop: Header=BB70_6 Depth=1
	movabsq	$lbs, %rax
	movq	charno, %rcx
	movslq	-36(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	readline
	movabsq	$lbs, %rax
	movslq	-36(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movb	$0, -88(%rbp)
	movl	-36(%rbp), %r8d
	movl	%r8d, -40(%rbp)
# BB#506:                               # %do.end.1222
                                        #   in Loop: Header=BB70_6 Depth=1
	testb	$1, -112(%rbp)
	je	.LBB70_508
# BB#507:                               # %if.then.1225
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, token
	movq	-120(%rbp), %rax
	movq	%rax, token+8
	movq	-112(%rbp), %rax
	movq	%rax, token+16
	movq	-104(%rbp), %rax
	movq	%rax, token+24
	movb	$0, -112(%rbp)
.LBB70_508:                             # %if.end.1227
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$0, definedef
# BB#509:                               # %do.end.1228
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_510
.LBB70_510:                             # %if.end.1229
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_511
.LBB70_511:                             # %sw.epilog.1230
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_512:                             # %while.end.1231
	movq	lbs+24, %rdi
	callq	free
	movq	lbs+56, %rdi
	callq	free
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end70:
	.size	C_entries, .Lfunc_end70-C_entries
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI70_0:
	.quad	.LBB70_350
	.quad	.LBB70_362
	.quad	.LBB70_349
	.quad	.LBB70_350
	.quad	.LBB70_349
.LJTI70_1:
	.quad	.LBB70_304
	.quad	.LBB70_311
	.quad	.LBB70_304
	.quad	.LBB70_312
	.quad	.LBB70_304
	.quad	.LBB70_304
	.quad	.LBB70_324
	.quad	.LBB70_304
	.quad	.LBB70_305

	.text
	.align	16, 0x90
	.type	consider_token,@function
consider_token:                         # @consider_token
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	callq	C_symtype
	movl	%eax, consider_token.toktype
	cmpl	$6, consider_token.toktype
	jne	.LBB71_2
# BB#1:                                 # %if.then
	movb	$1, inattribute
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_2:                               # %if.end
	movl	definedef(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB71_15
# BB#130:                               # %if.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI71_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB71_3:                               # %sw.bb
	cmpl	$4, consider_token.toktype
	jne	.LBB71_5
# BB#4:                                 # %if.then.2
	movl	$1, fvdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_5:                               # %if.end.3
	jmp	.LBB71_16
.LBB71_6:                               # %sw.bb.4
	cmpl	$14, consider_token.toktype
	jne	.LBB71_8
# BB#7:                                 # %if.then.6
	movl	$2, definedef
	jmp	.LBB71_9
.LBB71_8:                               # %if.else
	movl	$3, definedef
.LBB71_9:                               # %if.end.7
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_10:                              # %sw.bb.8
	movl	$3, definedef
	cmpl	$40, -24(%rbp)
	sete	%al
	movq	-48(%rbp), %rcx
	andb	$1, %al
	movb	%al, (%rcx)
	movq	-48(%rbp), %rcx
	testb	$1, (%rcx)
	jne	.LBB71_13
# BB#11:                                # %land.lhs.true
	testb	$1, constantypedefs
	jne	.LBB71_13
# BB#12:                                # %if.then.11
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_13:                              # %if.else.12
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_14:                              # %sw.bb.13
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_15:                              # %sw.default
	movabsq	$.L.str.140, %rdi
	movb	$0, %al
	callq	error
.LBB71_16:                              # %sw.epilog
	movl	typdef(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	ja	.LBB71_33
# BB#131:                               # %sw.epilog
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI71_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB71_17:                              # %sw.bb.14
	cmpl	$15, consider_token.toktype
	jne	.LBB71_21
# BB#18:                                # %if.then.16
	testb	$1, typedefs
	je	.LBB71_20
# BB#19:                                # %if.then.18
	movl	$1, typdef
.LBB71_20:                              # %if.end.19
	movb	$0, fvextern
	movl	$0, fvdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_21:                              # %if.end.20
	jmp	.LBB71_34
.LBB71_22:                              # %sw.bb.21
	movl	consider_token.toktype(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB71_23
	jmp	.LBB71_134
.LBB71_134:                             # %sw.bb.21
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB71_23
	jmp	.LBB71_135
.LBB71_135:                             # %sw.bb.21
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB71_23
	jmp	.LBB71_136
.LBB71_136:                             # %sw.bb.21
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB71_24
	jmp	.LBB71_23
.LBB71_23:                              # %sw.bb.22
	movl	$2, typdef
	jmp	.LBB71_25
.LBB71_24:                              # %sw.default.23
	jmp	.LBB71_25
.LBB71_25:                              # %sw.epilog.24
	jmp	.LBB71_34
.LBB71_26:                              # %sw.bb.25
	cmpl	$0, structdef
	jne	.LBB71_29
# BB#27:                                # %land.lhs.true.27
	cmpl	$0, fvdef
	jne	.LBB71_29
# BB#28:                                # %if.then.29
	movl	$4, fvdef
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_29:                              # %if.end.30
	jmp	.LBB71_34
.LBB71_30:                              # %sw.bb.31
	movl	consider_token.toktype(%rip), %eax
	movl	%eax, %ecx
	subl	$9, %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	je	.LBB71_31
	jmp	.LBB71_132
.LBB71_132:                             # %sw.bb.31
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB71_31
	jmp	.LBB71_133
.LBB71_133:                             # %sw.bb.31
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jne	.LBB71_32
	jmp	.LBB71_31
.LBB71_31:                              # %sw.bb.32
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_32:                              # %sw.default.33
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_33:                              # %sw.default.34
	jmp	.LBB71_34
.LBB71_34:                              # %sw.epilog.35
	movl	consider_token.toktype(%rip), %eax
	addl	$-7, %eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	ja	.LBB71_57
# BB#137:                               # %sw.epilog.35
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI71_2(,%rax,8), %rcx
	jmpq	*%rcx
.LBB71_35:                              # %sw.bb.36
	cmpl	$2, structdef
	jne	.LBB71_37
# BB#36:                                # %if.then.38
	movl	$3, structdef
.LBB71_37:                              # %if.end.39
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_38:                              # %sw.bb.40
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB71_45
# BB#39:                                # %land.lhs.true.42
	cmpl	$0, -36(%rbp)
	jne	.LBB71_45
# BB#40:                                # %land.lhs.true.44
	cmpl	$0, definedef
	jne	.LBB71_45
# BB#41:                                # %land.lhs.true.46
	cmpl	$0, structdef
	jne	.LBB71_45
# BB#42:                                # %land.lhs.true.48
	cmpl	$0, typdef
	jne	.LBB71_45
# BB#43:                                # %land.lhs.true.50
	cmpl	$0, fvdef
	jne	.LBB71_45
# BB#44:                                # %if.then.52
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB71_45:                              # %if.end.54
	cmpl	$10, consider_token.toktype
	jne	.LBB71_47
# BB#46:                                # %if.then.56
	jmp	.LBB71_58
.LBB71_47:                              # %if.end.57
	jmp	.LBB71_48
.LBB71_48:                              # %sw.bb.58
	cmpl	$0, -40(%rbp)
	jne	.LBB71_56
# BB#49:                                # %land.lhs.true.60
	cmpl	$9, fvdef
	je	.LBB71_56
# BB#50:                                # %land.lhs.true.62
	cmpl	$1, typdef
	je	.LBB71_53
# BB#51:                                # %lor.lhs.false
	testb	$1, typedefs_or_cplusplus
	je	.LBB71_56
# BB#52:                                # %land.lhs.true.65
	cmpl	$0, structdef
	jne	.LBB71_56
.LBB71_53:                              # %if.then.67
	movl	$1, structdef
	movl	consider_token.toktype, %eax
	movl	%eax, consider_token.structtype
	movl	-36(%rbp), %eax
	movl	%eax, consider_token.structbracelev
	cmpl	$4, fvdef
	jne	.LBB71_55
# BB#54:                                # %if.then.69
	movl	$0, fvdef
.LBB71_55:                              # %if.end.70
	jmp	.LBB71_56
.LBB71_56:                              # %if.end.71
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_57:                              # %sw.default.72
	jmp	.LBB71_58
.LBB71_58:                              # %sw.epilog.73
	cmpl	$1, structdef
	jne	.LBB71_60
# BB#59:                                # %if.then.75
	movl	$2, structdef
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_60:                              # %if.end.76
	cmpl	$0, typdef
	je	.LBB71_62
# BB#61:                                # %if.then.78
	movl	$0, definedef
.LBB71_62:                              # %if.end.79
	movl	objdef(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$11, %rdx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	ja	.LBB71_86
# BB#138:                               # %if.end.79
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI71_3(,%rax,8), %rcx
	jmpq	*%rcx
.LBB71_63:                              # %sw.bb.80
	movl	consider_token.toktype(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	je	.LBB71_64
	jmp	.LBB71_139
.LBB71_139:                             # %sw.bb.80
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB71_65
	jmp	.LBB71_66
.LBB71_64:                              # %sw.bb.81
	movl	$1, objdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_65:                              # %sw.bb.82
	movl	$2, objdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_66:                              # %sw.default.83
	jmp	.LBB71_67
.LBB71_67:                              # %sw.epilog.84
	jmp	.LBB71_87
.LBB71_68:                              # %sw.bb.85
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	savenstr
	movq	%rax, objtag
	movl	$6, objdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_69:                              # %sw.bb.87
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	savenstr
	movq	%rax, objtag
	movl	$3, objdef
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_70:                              # %sw.bb.89
	movl	$5, objdef
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_71:                              # %sw.bb.90
	jmp	.LBB71_87
.LBB71_72:                              # %sw.bb.91
	cmpl	$0, -40(%rbp)
	jne	.LBB71_74
# BB#73:                                # %if.then.93
	movabsq	$token_name, %rdi
	movl	$0, fvdef
	movl	$8, objdef
	movl	-20(%rbp), %esi
	callq	linebuffer_setlen
	movq	token_name+16, %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	movslq	-20(%rbp), %rdx
	movq	token_name+16, %rsi
	movb	$0, (%rsi,%rdx)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_74:                              # %if.end.94
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_75:                              # %sw.bb.95
	cmpl	$0, -40(%rbp)
	jne	.LBB71_77
# BB#76:                                # %if.then.98
	movl	$10, objdef
.LBB71_77:                              # %if.end.99
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_78:                              # %sw.bb.100
	cmpl	$0, -40(%rbp)
	jne	.LBB71_82
# BB#79:                                # %if.then.103
	movl	$8, objdef
	cmpl	$0, class_qualify
	je	.LBB71_81
# BB#80:                                # %if.then.105
	movabsq	$token_name, %rdi
	movl	token_name+8, %eax
	movl	%eax, -52(%rbp)
	movl	$0, fvdef
	movl	-52(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, %esi
	callq	linebuffer_setlen
	movq	token_name+16, %rdi
	movslq	-52(%rbp), %rcx
	addq	%rcx, %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	movl	-52(%rbp), %eax
	addl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	token_name+16, %rdx
	movb	$0, (%rdx,%rcx)
.LBB71_81:                              # %if.end.110
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_82:                              # %if.end.111
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_83:                              # %sw.bb.112
	cmpl	$3, consider_token.toktype
	jne	.LBB71_85
# BB#84:                                # %if.then.115
	movl	$0, objdef
.LBB71_85:                              # %if.end.116
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_86:                              # %sw.default.117
	jmp	.LBB71_87
.LBB71_87:                              # %sw.epilog.118
	movl	consider_token.toktype(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB71_94
	jmp	.LBB71_140
.LBB71_140:                             # %sw.epilog.118
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB71_92
	jmp	.LBB71_141
.LBB71_141:                             # %sw.epilog.118
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB71_93
	jmp	.LBB71_142
.LBB71_142:                             # %sw.epilog.118
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jne	.LBB71_127
	jmp	.LBB71_88
.LBB71_88:                              # %sw.bb.119
	movb	$1, fvextern(%rip)
	movl	fvdef(%rip), %eax
	addl	$-6, %eax
	subl	$3, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	ja	.LBB71_90
	jmp	.LBB71_89
.LBB71_89:                              # %sw.bb.120
	jmp	.LBB71_91
.LBB71_90:                              # %sw.default.121
	movl	$0, fvdef
.LBB71_91:                              # %sw.epilog.122
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_92:                              # %sw.bb.123
	movb	$0, fvextern
	movl	$9, fvdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_93:                              # %sw.bb.124
	movl	$3, fvdef
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_94:                              # %sw.bb.125
	testb	$1, constantypedefs
	je	.LBB71_100
# BB#95:                                # %land.lhs.true.128
	cmpl	$0, structdef
	jne	.LBB71_100
# BB#96:                                # %land.lhs.true.131
	cmpl	$13, consider_token.structtype
	jne	.LBB71_100
# BB#97:                                # %land.lhs.true.134
	movl	-36(%rbp), %eax
	cmpl	consider_token.structbracelev, %eax
	jle	.LBB71_100
# BB#98:                                # %land.lhs.true.137
	cmpl	$9, fvdef
	je	.LBB71_100
# BB#99:                                # %if.then.140
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_100:                             # %if.end.141
	movl	fvdef(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB71_104
	jmp	.LBB71_143
.LBB71_143:                             # %if.end.141
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB71_101
	jmp	.LBB71_144
.LBB71_144:                             # %if.end.141
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB71_114
	jmp	.LBB71_125
.LBB71_101:                             # %sw.bb.142
	cmpl	$0, -36(%rbp)
	jle	.LBB71_103
# BB#102:                               # %if.then.145
	jmp	.LBB71_126
.LBB71_103:                             # %if.end.146
	movl	$2, fvdef
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_104:                             # %sw.bb.147
	movl	typdef(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB71_106
	jmp	.LBB71_145
.LBB71_145:                             # %sw.bb.147
	movl	-200(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jne	.LBB71_112
	jmp	.LBB71_105
.LBB71_105:                             # %sw.bb.148
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_106:                             # %sw.bb.149
	movabsq	$.L.str.74, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB71_107
	jmp	.LBB71_108
.LBB71_107:                             # %land.lhs.true.152
	movq	-16(%rbp), %rax
	movzbl	3(%rax), %edi
	callq	endtoken
	testb	$1, %al
	jne	.LBB71_110
.LBB71_108:                             # %lor.lhs.false.156
	movabsq	$.L.str.141, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB71_109
	jmp	.LBB71_111
.LBB71_109:                             # %land.lhs.true.159
	movq	-16(%rbp), %rax
	movzbl	7(%rax), %edi
	callq	endtoken
	testb	$1, %al
	jne	.LBB71_110
	jmp	.LBB71_111
.LBB71_110:                             # %if.then.163
	movl	$9, fvdef
	movb	$0, -1(%rbp)
	jmp	.LBB71_129
.LBB71_111:                             # %if.end.164
	jmp	.LBB71_113
.LBB71_112:                             # %sw.default.165
	jmp	.LBB71_113
.LBB71_113:                             # %sw.epilog.166
	jmp	.LBB71_114
.LBB71_114:                             # %sw.bb.167
	cmpl	$10, -20(%rbp)
	jl	.LBB71_119
# BB#115:                               # %land.lhs.true.170
	movabsq	$.L.str.142, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rcx
	addq	$-10, %rcx
	movq	%rcx, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB71_116
	jmp	.LBB71_119
.LBB71_116:                             # %if.then.176
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	$4096, %ecx             # imm = 0x1000
	cmpl	$0, %ecx
	je	.LBB71_118
# BB#117:                               # %if.then.179
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	orl	$1, %ecx
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB71_118:                             # %if.end.182
	movl	$3, fvdef
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_119:                             # %if.end.183
	cmpl	$0, -36(%rbp)
	jle	.LBB71_124
# BB#120:                               # %land.lhs.true.186
	cmpl	$0, structdef
	jne	.LBB71_123
# BB#121:                               # %land.lhs.true.189
	cmpl	$0, cstack+16
	jle	.LBB71_123
# BB#122:                               # %land.lhs.true.192
	movl	-36(%rbp), %eax
	movl	cstack+16, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	cstack+8, %rsi
	movl	(%rsi,%rdx,4), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB71_124
.LBB71_123:                             # %if.then.198
	jmp	.LBB71_126
.LBB71_124:                             # %if.end.199
	movl	$4, fvdef
	movq	-48(%rbp), %rax
	movb	$1, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB71_129
.LBB71_125:                             # %sw.default.200
	jmp	.LBB71_126
.LBB71_126:                             # %sw.epilog.201
	jmp	.LBB71_128
.LBB71_127:                             # %sw.default.202
	jmp	.LBB71_128
.LBB71_128:                             # %sw.epilog.203
	movb	$0, -1(%rbp)
.LBB71_129:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	consider_token, .Lfunc_end71-consider_token
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI71_0:
	.quad	.LBB71_3
	.quad	.LBB71_6
	.quad	.LBB71_10
	.quad	.LBB71_14
.LJTI71_1:
	.quad	.LBB71_17
	.quad	.LBB71_22
	.quad	.LBB71_26
	.quad	.LBB71_33
	.quad	.LBB71_30
.LJTI71_2:
	.quad	.LBB71_35
	.quad	.LBB71_57
	.quad	.LBB71_38
	.quad	.LBB71_38
	.quad	.LBB71_48
	.quad	.LBB71_57
	.quad	.LBB71_48
.LJTI71_3:
	.quad	.LBB71_63
	.quad	.LBB71_69
	.quad	.LBB71_68
	.quad	.LBB71_86
	.quad	.LBB71_70
	.quad	.LBB71_86
	.quad	.LBB71_71
	.quad	.LBB71_72
	.quad	.LBB71_86
	.quad	.LBB71_75
	.quad	.LBB71_78
	.quad	.LBB71_83

	.text
	.align	16, 0x90
	.type	write_classname,@function
write_classname:                        # @write_classname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, cstack+16
	je	.LBB72_2
# BB#1:                                 # %lor.lhs.false
	movq	cstack, %rax
	cmpq	$0, (%rax)
	jne	.LBB72_3
.LBB72_2:                               # %if.then
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movb	$0, (%rax)
	jmp	.LBB72_4
.LBB72_3:                               # %if.else
	movq	cstack, %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	linebuffer_setlen
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	cstack, %rax
	movq	(%rax), %rsi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB72_4:                               # %if.end
	movl	$1, -20(%rbp)
.LBB72_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	cstack+16, %eax
	jge	.LBB72_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB72_5 Depth=1
	movslq	-20(%rbp), %rax
	movq	cstack, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB72_8
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB72_5 Depth=1
	jmp	.LBB72_9
.LBB72_8:                               # %if.end.18
                                        #   in Loop: Header=BB72_5 Depth=1
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	linebuffer_setlen
	movabsq	$.L.str.175, %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	sprintf
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB72_9:                               # %for.inc
                                        #   in Loop: Header=BB72_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB72_5
.LBB72_10:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	write_classname, .Lfunc_end72-write_classname
	.cfi_endproc

	.align	16, 0x90
	.type	linebuffer_setlen,@function
linebuffer_setlen:                      # @linebuffer_setlen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB73_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB73_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB73_1
.LBB73_3:                               # %while.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	linebuffer_setlen, .Lfunc_end73-linebuffer_setlen
	.cfi_endproc

	.align	16, 0x90
	.type	make_C_tag,@function
make_C_tag:                             # @make_C_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	testb	$1, token+16
	je	.LBB74_2
# BB#1:                                 # %if.then
	movq	token_name+16, %rdi
	movl	token_name+8, %esi
	movb	-1(%rbp), %al
	movq	token, %rcx
	movl	token+8, %edx
	addl	token+12, %edx
	addl	$1, %edx
	movl	token+20, %r9d
	movq	token+24, %r8
	andb	$1, %al
	movzbl	%al, %r10d
	movl	%edx, -8(%rbp)          # 4-byte Spill
	movl	%r10d, %edx
	movl	-8(%rbp), %r10d         # 4-byte Reload
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movl	%r10d, %r8d
	movq	-16(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	make_tag
	jmp	.LBB74_3
.LBB74_2:                               # %if.else
	jmp	.LBB74_3
.LBB74_3:                               # %if.end
	movb	$0, token+16
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	make_C_tag, .Lfunc_end74-make_C_tag
	.cfi_endproc

	.align	16, 0x90
	.type	popclass_above,@function
popclass_above:                         # @popclass_above
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	cstack+16, %edi
	subl	$1, %edi
	movl	%edi, -8(%rbp)
.LBB75_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -8(%rbp)
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jl	.LBB75_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB75_1 Depth=1
	movslq	-8(%rbp), %rax
	movq	cstack+8, %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-4(%rbp), %edx
	setge	%sil
	movb	%sil, -9(%rbp)          # 1-byte Spill
.LBB75_3:                               # %land.end
                                        #   in Loop: Header=BB75_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB75_4
	jmp	.LBB75_6
.LBB75_4:                               # %for.body
                                        #   in Loop: Header=BB75_1 Depth=1
	movslq	-8(%rbp), %rax
	movq	cstack, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free
	movl	-8(%rbp), %edx
	movl	%edx, cstack+16
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB75_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB75_1
.LBB75_6:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	popclass_above, .Lfunc_end75-popclass_above
	.cfi_endproc

	.align	16, 0x90
	.type	pushclass_above,@function
pushclass_above:                        # @pushclass_above
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edi
	callq	popclass_above
	movl	cstack+16, %edx
	movl	%edx, -24(%rbp)
	movl	-24(%rbp), %edx
	cmpl	cstack+20, %edx
	jl	.LBB76_2
# BB#1:                                 # %if.then
	movl	cstack+20, %eax
	shll	$1, %eax
	movl	%eax, cstack+20
	movl	%eax, -28(%rbp)
	movq	cstack, %rcx
	movslq	-28(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	%rax, cstack
	movq	cstack+8, %rax
	movslq	-28(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	%rax, cstack+8
.LBB76_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB76_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB76_5
.LBB76_4:                               # %cond.false
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	savenstr
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB76_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movslq	-24(%rbp), %rcx
	movq	cstack, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	-4(%rbp), %esi
	movslq	-24(%rbp), %rax
	movq	cstack+8, %rcx
	movl	%esi, (%rcx,%rax,4)
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movl	%esi, cstack+16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	pushclass_above, .Lfunc_end76-pushclass_above
	.cfi_endproc

	.align	16, 0x90
	.type	C_symtype,@function
C_symtype:                              # @C_symtype
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	in_word_set
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB77_3
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB77_4
# BB#2:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	andl	8(%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB77_4
.LBB77_3:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB77_5
.LBB77_4:                               # %if.end
	movq	-32(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB77_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	C_symtype, .Lfunc_end77-C_symtype
	.cfi_endproc

	.align	16, 0x90
	.type	in_word_set,@function
in_word_set:                            # @in_word_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$15, -20(%rbp)
	ja	.LBB78_10
# BB#1:                                 # %land.lhs.true
	cmpl	$2, -20(%rbp)
	jb	.LBB78_10
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	hash
	movl	%eax, -24(%rbp)
	cmpl	$34, -24(%rbp)
	jg	.LBB78_9
# BB#3:                                 # %land.lhs.true.3
	cmpl	$0, -24(%rbp)
	jl	.LBB78_9
# BB#4:                                 # %if.then.5
	movabsq	$in_word_set.wordlist, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB78_8
# BB#5:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB78_8
# BB#6:                                 # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB78_8
# BB#7:                                 # %if.then.19
	movabsq	$in_word_set.wordlist, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB78_11
.LBB78_8:                               # %if.end
	jmp	.LBB78_9
.LBB78_9:                               # %if.end.22
	jmp	.LBB78_10
.LBB78_10:                              # %if.end.23
	movq	$0, -8(%rbp)
.LBB78_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	in_word_set, .Lfunc_end78-in_word_set
	.cfi_endproc

	.align	16, 0x90
	.type	hash,@function
hash:                                   # @hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%esi, -16(%rbp)
	subl	$2, %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	je	.LBB79_2
	jmp	.LBB79_1
.LBB79_1:                               # %sw.default
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movsbl	hash.asso_values(,%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
.LBB79_2:                               # %sw.bb
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movsbl	hash.asso_values(,%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
# BB#3:                                 # %sw.epilog
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end79:
	.size	hash, .Lfunc_end79-hash
	.cfi_endproc

	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB80_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.176, %rdi
	movb	$0, %al
	callq	fatal
.LBB80_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	xrealloc, .Lfunc_end80-xrealloc
	.cfi_endproc

	.align	16, 0x90
	.type	erlang_attribute,@function
erlang_attribute:                       # @erlang_attribute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.194, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB81_1
	jmp	.LBB81_3
.LBB81_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movzbl	7(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB81_2
	jmp	.LBB81_3
.LBB81_2:                               # %land.lhs.true.2
	movq	-16(%rbp), %rax
	addq	$8, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB81_6
.LBB81_3:                               # %lor.lhs.false
	movabsq	$.L.str.195, %rsi
	movl	$7, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB81_4
	jmp	.LBB81_10
.LBB81_4:                               # %land.lhs.true.6
	movq	-16(%rbp), %rax
	movzbl	7(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB81_5
	jmp	.LBB81_10
.LBB81_5:                               # %land.lhs.true.9
	movq	-16(%rbp), %rax
	addq	$8, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB81_10
.LBB81_6:                               # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	cmpl	$40, %edx
	jne	.LBB81_10
# BB#7:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	skip_spaces
	movq	%rax, %rdi
	callq	erlang_atom
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB81_9
# BB#8:                                 # %if.then.20
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %r8
	addq	%r8, %rax
	movq	-8(%rbp), %r8
	subq	%r8, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB81_9:                               # %if.end
	jmp	.LBB81_10
.LBB81_10:                              # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	erlang_attribute, .Lfunc_end81-erlang_attribute
	.cfi_endproc

	.align	16, 0x90
	.type	erlang_func,@function
erlang_func:                            # @erlang_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	erlang_atom
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB82_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB82_8
.LBB82_2:                               # %if.end
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	skip_spaces
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -28(%rbp)
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	cmpl	$40, %esi
	jne	.LBB82_7
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB82_6
# BB#4:                                 # %lor.lhs.false
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movl	-36(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	jne	.LBB82_6
# BB#5:                                 # %lor.lhs.false.11
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-32(%rbp), %rdx
	callq	strneq
	testb	$1, %al
	jne	.LBB82_7
.LBB82_6:                               # %if.then.14
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movl	lineno, %r9d
	movq	linecharno, %rax
	movq	%rax, (%rsp)
	callq	make_tag
	movl	-32(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB82_8
.LBB82_7:                               # %if.end.15
	movl	$0, -4(%rbp)
.LBB82_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	erlang_func, .Lfunc_end82-erlang_func
	.cfi_endproc

	.align	16, 0x90
	.type	erlang_atom,@function
erlang_atom:                            # @erlang_atom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %rax
	movsbl	(%rax,%rdi), %edi
	callq	c_isalpha
	testb	$1, %al
	jne	.LBB83_2
# BB#1:                                 # %lor.lhs.false
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$95, %edx
	jne	.LBB83_8
.LBB83_2:                               # %if.then
	jmp	.LBB83_3
.LBB83_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
# BB#4:                                 # %do.cond
                                        #   in Loop: Header=BB83_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	c_isalnum
	movb	$1, %dl
	testb	$1, %al
	movb	%dl, -21(%rbp)          # 1-byte Spill
	jne	.LBB83_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB83_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$95, %edx
	sete	%sil
	movb	%sil, -21(%rbp)         # 1-byte Spill
.LBB83_6:                               # %lor.end
                                        #   in Loop: Header=BB83_3 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB83_3
# BB#7:                                 # %do.end
	jmp	.LBB83_19
.LBB83_8:                               # %if.else
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$39, %edx
	jne	.LBB83_18
# BB#9:                                 # %if.then.21
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB83_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$39, %edx
	je	.LBB83_17
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB83_10 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB83_14
# BB#12:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB83_10 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$92, %edx
	jne	.LBB83_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB83_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB83_15
.LBB83_14:                              # %if.then.45
	movl	$0, -4(%rbp)
	jmp	.LBB83_20
.LBB83_15:                              # %if.end
                                        #   in Loop: Header=BB83_10 Depth=1
	jmp	.LBB83_16
.LBB83_16:                              # %for.inc
                                        #   in Loop: Header=BB83_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB83_10
.LBB83_17:                              # %for.end
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB83_18:                              # %if.end.48
	jmp	.LBB83_19
.LBB83_19:                              # %if.end.49
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB83_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	erlang_atom, .Lfunc_end83-erlang_atom
	.cfi_endproc

	.align	16, 0x90
	.type	strncaseeq,@function
strncaseeq:                             # @strncaseeq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	c_strncasecmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	strncaseeq, .Lfunc_end84-strncaseeq
	.cfi_endproc

	.align	16, 0x90
	.type	get_tag,@function
get_tag:                                # @get_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$0, %eax
	je	.LBB85_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB85_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB85_3
	jmp	.LBB85_5
.LBB85_3:                               # %for.body
                                        #   in Loop: Header=BB85_2 Depth=1
	jmp	.LBB85_4
.LBB85_4:                               # %for.inc
                                        #   in Loop: Header=BB85_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB85_2
.LBB85_5:                               # %for.end
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-24(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB85_6:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB85_8
# BB#7:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %esi
	callq	savenstr
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB85_8:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	get_tag, .Lfunc_end85-get_tag
	.cfi_endproc

	.align	16, 0x90
	.type	skip_non_spaces,@function
skip_non_spaces:                        # @skip_non_spaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB86_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB86_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isspace
	xorb	$-1, %al
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB86_3:                               # %land.end
                                        #   in Loop: Header=BB86_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB86_4
	jmp	.LBB86_5
.LBB86_4:                               # %while.body
                                        #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB86_1
.LBB86_5:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	skip_non_spaces, .Lfunc_end86-skip_non_spaces
	.cfi_endproc

	.align	16, 0x90
	.type	F_takeprec,@function
F_takeprec:                             # @F_takeprec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	je	.LBB87_2
# BB#1:                                 # %if.then
	jmp	.LBB87_9
.LBB87_2:                               # %if.end
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	movq	dbp, %rdi
	callq	skip_spaces
	movabsq	$.L.str.220, %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, dbp
	movq	dbp, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB87_3
	jmp	.LBB87_4
.LBB87_3:                               # %if.then.4
	movq	dbp, %rax
	addq	$3, %rax
	movq	%rax, dbp
	jmp	.LBB87_9
.LBB87_4:                               # %if.end.5
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB87_6
# BB#5:                                 # %if.then.8
	movq	dbp, %rax
	addq	$-1, %rax
	movq	%rax, dbp
	jmp	.LBB87_9
.LBB87_6:                               # %if.end.10
	jmp	.LBB87_7
.LBB87_7:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
# BB#8:                                 # %do.cond
                                        #   in Loop: Header=BB87_7 Depth=1
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB87_7
.LBB87_9:                               # %do.end
	popq	%rbp
	retq
.Lfunc_end87:
	.size	F_takeprec, .Lfunc_end87-F_takeprec
	.cfi_endproc

	.align	16, 0x90
	.type	F_getit,@function
F_getit:                                # @F_getit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB88_4
# BB#1:                                 # %if.then
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	callq	readline
	movq	lb+16, %rsi
	movq	%rsi, dbp
	movq	dbp, %rsi
	movsbl	5(%rsi), %eax
	cmpl	$38, %eax
	je	.LBB88_3
# BB#2:                                 # %if.then.5
	jmp	.LBB88_15
.LBB88_3:                               # %if.end
	movq	dbp, %rax
	addq	$6, %rax
	movq	%rax, dbp
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
.LBB88_4:                               # %if.end.7
	movq	dbp, %rax
	movsbl	(%rax), %edi
	callq	c_isalpha
	testb	$1, %al
	jne	.LBB88_8
# BB#5:                                 # %land.lhs.true
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	je	.LBB88_8
# BB#6:                                 # %land.lhs.true.13
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$36, %ecx
	je	.LBB88_8
# BB#7:                                 # %if.then.17
	jmp	.LBB88_15
.LBB88_8:                               # %if.end.18
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB88_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB88_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB88_9 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edi
	callq	intoken
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB88_11:                              # %land.end
                                        #   in Loop: Header=BB88_9 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB88_12
	jmp	.LBB88_14
.LBB88_12:                              # %for.body
                                        #   in Loop: Header=BB88_9 Depth=1
	jmp	.LBB88_13
.LBB88_13:                              # %for.inc
                                        #   in Loop: Header=BB88_9 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB88_9
.LBB88_14:                              # %for.end
	movl	$1, %edx
	movq	dbp, %rdi
	movq	-16(%rbp), %rax
	movq	dbp, %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movq	lb+16, %rcx
	movq	-16(%rbp), %rax
	movq	lb+16, %r8
	subq	%r8, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	movl	lineno, %r10d
	movq	linecharno, %rax
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	callq	make_tag
.LBB88_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	F_getit, .Lfunc_end88-F_getit
	.cfi_endproc

	.align	16, 0x90
	.type	skip_name,@function
skip_name:                              # @skip_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB89_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edi
	callq	notinname
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB89_2
	jmp	.LBB89_3
.LBB89_2:                               # %while.body
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB89_1
.LBB89_3:                               # %while.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	skip_name, .Lfunc_end89-skip_name
	.cfi_endproc

	.align	16, 0x90
	.type	L_getit,@function
L_getit:                                # @L_getit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB90_2
# BB#1:                                 # %if.then
	movq	dbp, %rax
	addq	$1, %rax
	movq	%rax, dbp
	jmp	.LBB90_12
.LBB90_2:                               # %if.else
	movq	dbp, %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB90_11
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.237, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	dbp, %rcx
	addq	$1, %rcx
	movq	%rcx, dbp
	movq	dbp, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB90_4
	jmp	.LBB90_6
.LBB90_4:                               # %land.lhs.true
	movq	dbp, %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB90_5
	jmp	.LBB90_6
.LBB90_5:                               # %land.lhs.true.10
	movq	dbp, %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	cmpq	$0, %rax
	jne	.LBB90_10
.LBB90_6:                               # %land.lhs.true.13
	movabsq	$.L.str.238, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	dbp, %rdi
	callq	strneq
	testb	$1, %al
	jne	.LBB90_7
	jmp	.LBB90_9
.LBB90_7:                               # %land.lhs.true.16
	movq	dbp, %rax
	movzbl	5(%rax), %edi
	callq	notinname
	testb	$1, %al
	jne	.LBB90_8
	jmp	.LBB90_9
.LBB90_8:                               # %land.lhs.true.20
	movq	dbp, %rax
	addq	$6, %rax
	addq	$-1, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, dbp
	cmpq	$0, %rax
	jne	.LBB90_10
.LBB90_9:                               # %if.then.25
	movq	dbp, %rdi
	callq	skip_spaces
	movq	%rax, dbp
.LBB90_10:                              # %if.end
	jmp	.LBB90_11
.LBB90_11:                              # %if.end.27
	jmp	.LBB90_12
.LBB90_12:                              # %if.end.28
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	dbp, %rdi
	callq	get_tag
	popq	%rbp
	retq
.Lfunc_end90:
	.size	L_getit, .Lfunc_end90-L_getit
	.cfi_endproc

	.align	16, 0x90
	.type	prolog_skip_comment,@function
prolog_skip_comment:                    # @prolog_skip_comment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB91_1:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_2 Depth 2
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB91_2:                               # %for.cond
                                        #   Parent Loop BB91_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB91_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB91_2 Depth=2
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB91_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB91_2 Depth=2
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB91_6
# BB#5:                                 # %if.then
	jmp	.LBB91_10
.LBB91_6:                               # %if.end
                                        #   in Loop: Header=BB91_2 Depth=2
	jmp	.LBB91_7
.LBB91_7:                               # %for.inc
                                        #   in Loop: Header=BB91_2 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB91_2
.LBB91_8:                               # %for.end
                                        #   in Loop: Header=BB91_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	readline
# BB#9:                                 # %do.cond
                                        #   in Loop: Header=BB91_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	perhaps_more_input
	testb	$1, %al
	jne	.LBB91_1
.LBB91_10:                              # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	prolog_skip_comment, .Lfunc_end91-prolog_skip_comment
	.cfi_endproc

	.align	16, 0x90
	.type	prolog_pr,@function
prolog_pr:                              # @prolog_pr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	prolog_atom
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB92_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB92_13
.LBB92_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	-16(%rbp), %rdi
	subq	%rdi, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB92_8
# BB#3:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$40, %edx
	jne	.LBB92_5
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB92_8
.LBB92_5:                               # %lor.lhs.false.8
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$58, %edx
	jne	.LBB92_12
# BB#6:                                 # %land.lhs.true.13
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edx
	cmpl	$45, %edx
	jne	.LBB92_12
# BB#7:                                 # %land.lhs.true.19
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB92_12
.LBB92_8:                               # %land.lhs.true.22
	cmpq	$0, -24(%rbp)
	je	.LBB92_11
# BB#9:                                 # %lor.lhs.false.25
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB92_11
# BB#10:                                # %lor.lhs.false.29
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	strneq
	testb	$1, %al
	jne	.LBB92_12
.LBB92_11:                              # %if.then.31
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	%esi, %r8d
	movl	lineno, %r9d
	movq	linecharno, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	make_tag
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB92_13
.LBB92_12:                              # %if.else
	movq	$0, -8(%rbp)
.LBB92_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	prolog_pr, .Lfunc_end92-prolog_pr
	.cfi_endproc

	.align	16, 0x90
	.type	prolog_atom,@function
prolog_atom:                            # @prolog_atom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movsbl	(%rdi,%rsi), %edi
	callq	c_islower
	testb	$1, %al
	jne	.LBB93_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$95, %edx
	jne	.LBB93_8
.LBB93_2:                               # %if.then
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB93_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	c_isalnum
	movb	$1, %dl
	testb	$1, %al
	movb	%dl, -33(%rbp)          # 1-byte Spill
	jne	.LBB93_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB93_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$95, %edx
	sete	%sil
	movb	%sil, -33(%rbp)         # 1-byte Spill
.LBB93_5:                               # %lor.end
                                        #   in Loop: Header=BB93_3 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB93_6
	jmp	.LBB93_7
.LBB93_6:                               # %while.body
                                        #   in Loop: Header=BB93_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB93_3
.LBB93_7:                               # %while.end
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB93_26
.LBB93_8:                               # %if.else
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$39, %edx
	jne	.LBB93_25
# BB#9:                                 # %if.then.18
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB93_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$39, %edx
	jne	.LBB93_14
# BB#11:                                # %if.then.24
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$39, %edx
	je	.LBB93_13
# BB#12:                                # %if.then.30
	jmp	.LBB93_24
.LBB93_13:                              # %if.end
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB93_23
.LBB93_14:                              # %if.else.32
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB93_16
# BB#15:                                # %if.then.37
	movq	$0, -8(%rbp)
	jmp	.LBB93_26
.LBB93_16:                              # %if.else.38
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$92, %edx
	jne	.LBB93_20
# BB#17:                                # %if.then.43
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB93_19
# BB#18:                                # %if.then.48
	movq	$0, -8(%rbp)
	jmp	.LBB93_26
.LBB93_19:                              # %if.end.49
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB93_21
.LBB93_20:                              # %if.else.51
                                        #   in Loop: Header=BB93_10 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB93_21:                              # %if.end.53
                                        #   in Loop: Header=BB93_10 Depth=1
	jmp	.LBB93_22
.LBB93_22:                              # %if.end.54
                                        #   in Loop: Header=BB93_10 Depth=1
	jmp	.LBB93_23
.LBB93_23:                              # %if.end.55
                                        #   in Loop: Header=BB93_10 Depth=1
	jmp	.LBB93_10
.LBB93_24:                              # %for.end
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB93_26
.LBB93_25:                              # %if.else.57
	movq	$0, -8(%rbp)
.LBB93_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	prolog_atom, .Lfunc_end93-prolog_atom
	.cfi_endproc

	.align	16, 0x90
	.type	TEX_decode_env,@function
TEX_decode_env:                         # @TEX_decode_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB94_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB94_3
.LBB94_2:                               # %if.else
	movabsq	$.L.str.4, %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	movq	%rax, -24(%rbp)
.LBB94_3:                               # %if.end
	movl	$1, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB94_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$58, %esi
	movq	-32(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB94_8
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB94_4 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB94_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB94_4 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB94_7:                               # %if.end.6
                                        #   in Loop: Header=BB94_4 Depth=1
	jmp	.LBB94_4
.LBB94_8:                               # %for.end
	movslq	-40(%rbp), %rax
	imulq	$24, %rax, %rdi
	callq	xmalloc
	movq	%rax, TEX_toktab
	movl	$0, -36(%rbp)
.LBB94_9:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB94_18
# BB#10:                                # %for.body.11
                                        #   in Loop: Header=BB94_9 Depth=1
	movl	$58, %esi
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB94_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB94_9 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-48(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
.LBB94_12:                              # %if.end.16
                                        #   in Loop: Header=BB94_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$0, %rax
	jle	.LBB94_14
# BB#13:                                # %if.then.19
                                        #   in Loop: Header=BB94_9 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %esi
	callq	savenstr
	movslq	-36(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	TEX_toktab, %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	TEX_toktab, %rax
	movl	%edx, 8(%rax)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
.LBB94_14:                              # %if.end.33
                                        #   in Loop: Header=BB94_9 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB94_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB94_9 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB94_17
.LBB94_16:                              # %if.else.37
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	TEX_toktab, %rax
	movq	$0, 16(%rax)
	movslq	-36(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	TEX_toktab, %rax
	movl	$0, 8(%rax)
	jmp	.LBB94_18
.LBB94_17:                              # %if.end.44
                                        #   in Loop: Header=BB94_9 Depth=1
	jmp	.LBB94_9
.LBB94_18:                              # %for.end.45
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	TEX_decode_env, .Lfunc_end94-TEX_decode_env
	.cfi_endproc

	.align	16, 0x90
	.type	get_compressor_from_suffix,@function
get_compressor_from_suffix:             # @get_compressor_from_suffix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$47, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strrchr
	movl	$46, %esi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	strrchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB95_2
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB95_3
.LBB95_2:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB95_14
.LBB95_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB95_5
# BB#4:                                 # %if.then.4
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB95_5:                               # %if.end.5
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# BB#6:                                 # %do.body
	movabsq	$compressors, %rax
	movq	%rax, -32(%rbp)
.LBB95_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB95_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB95_7 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB95_9
	jmp	.LBB95_10
.LBB95_9:                               # %if.then.10
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB95_14
.LBB95_10:                              # %if.end.11
                                        #   in Loop: Header=BB95_7 Depth=1
	jmp	.LBB95_11
.LBB95_11:                              # %for.inc
                                        #   in Loop: Header=BB95_7 Depth=1
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB95_7
.LBB95_12:                              # %for.end
	jmp	.LBB95_13
.LBB95_13:                              # %do.end
	movq	$0, -8(%rbp)
.LBB95_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	get_compressor_from_suffix, .Lfunc_end95-get_compressor_from_suffix
	.cfi_endproc

	.align	16, 0x90
	.type	etags_mktmp,@function
etags_mktmp:                            # @etags_mktmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.330, %rdi
	callq	getenv
	movabsq	$.L.str.10, %rdi
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB96_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.331, %rax
	movq	%rax, -8(%rbp)
.LBB96_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-8(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB96_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.4, %rax
	movq	%rax, -16(%rbp)
.LBB96_4:                               # %if.end.4
	movabsq	$.L.str.332, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	concat
	movl	$524288, %esi           # imm = 0x80000
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	mkostemp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB96_6
# BB#5:                                 # %lor.lhs.false
	movl	-28(%rbp), %edi
	callq	close
	cmpl	$0, %eax
	je	.LBB96_7
.LBB96_6:                               # %if.then.12
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	free
	movl	-32(%rbp), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movq	$0, -24(%rbp)
.LBB96_7:                               # %if.end.15
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	etags_mktmp, .Lfunc_end96-etags_mktmp
	.cfi_endproc

	.align	16, 0x90
	.type	find_entries,@function
find_entries:                           # @find_entries
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	curfdp, %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB97_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB97_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB97_3:                               # %if.end
	cmpq	$0, -32(%rbp)
	jne	.LBB97_8
# BB#4:                                 # %if.then.5
	movl	$1, %esi
	movq	curfdp, %rax
	movq	8(%rax), %rdi
	callq	get_language_from_filename
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB97_7
# BB#5:                                 # %land.lhs.true.7
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB97_7
# BB#6:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	curfdp, %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB97_7:                               # %if.end.13
	jmp	.LBB97_8
.LBB97_8:                               # %if.end.14
	cmpq	$0, -32(%rbp)
	jne	.LBB97_22
# BB#9:                                 # %land.lhs.true.16
	movabsq	$lb, %rdi
	movq	-8(%rbp), %rsi
	movq	infilename, %rdx
	callq	readline_internal
	cmpq	$0, %rax
	jle	.LBB97_22
# BB#10:                                # %land.lhs.true.19
	cmpl	$2, lb+8
	jl	.LBB97_22
# BB#11:                                # %land.lhs.true.21
	movq	lb+16, %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	jne	.LBB97_22
# BB#12:                                # %land.lhs.true.24
	movq	lb+16, %rax
	movsbl	1(%rax), %ecx
	cmpl	$33, %ecx
	jne	.LBB97_22
# BB#13:                                # %if.then.29
	movl	$47, %esi
	movq	lb+16, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	strrchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB97_15
# BB#14:                                # %if.then.33
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB97_16
.LBB97_15:                              # %if.else
	movq	lb+16, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	skip_spaces
	movq	%rax, -40(%rbp)
.LBB97_16:                              # %if.end.37
	movq	-40(%rbp), %rdi
	callq	skip_non_spaces
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB97_21
# BB#17:                                # %if.then.42
	movq	-40(%rbp), %rdi
	callq	get_language_from_interpreter
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB97_20
# BB#18:                                # %land.lhs.true.46
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB97_20
# BB#19:                                # %if.then.50
	movq	-24(%rbp), %rax
	movq	curfdp, %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB97_20:                              # %if.end.53
	jmp	.LBB97_21
.LBB97_21:                              # %if.end.54
	jmp	.LBB97_22
.LBB97_22:                              # %if.end.55
	movq	-8(%rbp), %rdi
	callq	reset_input
	cmpq	$0, -32(%rbp)
	jne	.LBB97_27
# BB#23:                                # %if.then.58
	xorl	%esi, %esi
	movq	curfdp, %rax
	movq	8(%rax), %rdi
	callq	get_language_from_filename
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB97_26
# BB#24:                                # %land.lhs.true.63
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB97_26
# BB#25:                                # %if.then.67
	movq	-24(%rbp), %rax
	movq	curfdp, %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB97_26:                              # %if.end.70
	jmp	.LBB97_27
.LBB97_27:                              # %if.end.71
	cmpq	$0, -32(%rbp)
	jne	.LBB97_31
# BB#28:                                # %if.then.74
	movabsq	$.L.str.80, %rdi
	movq	last_node, %rax
	movq	%rax, -48(%rbp)
	callq	get_language_from_langname
	movq	curfdp, %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rdi
	callq	find_entries
	movq	-48(%rbp), %rax
	cmpq	last_node, %rax
	jne	.LBB97_30
# BB#29:                                # %if.then.79
	movq	-8(%rbp), %rdi
	callq	reset_input
	movabsq	$.L.str.75, %rdi
	movabsq	$.L.str.21, %rax
	movb	cplusplus, %cl
	testb	$1, %cl
	cmovneq	%rax, %rdi
	callq	get_language_from_langname
	movq	curfdp, %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rdi
	callq	find_entries
.LBB97_30:                              # %if.end.83
	jmp	.LBB97_43
.LBB97_31:                              # %if.end.84
	cmpl	$0, no_line_directive
	jne	.LBB97_42
# BB#32:                                # %land.lhs.true.86
	movq	curfdp, %rax
	cmpq	$0, 40(%rax)
	je	.LBB97_42
# BB#33:                                # %land.lhs.true.90
	movq	curfdp, %rax
	movq	40(%rax), %rax
	testb	$1, 48(%rax)
	je	.LBB97_42
# BB#34:                                # %if.then.94
	movabsq	$fdhead, %rax
	movq	%rax, -56(%rbp)
.LBB97_35:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB97_41
# BB#36:                                # %while.body
                                        #   in Loop: Header=BB97_35 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	curfdp, %rax
	je	.LBB97_39
# BB#37:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB97_35 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdi
	movq	curfdp, %rax
	movq	32(%rax), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB97_38
	jmp	.LBB97_39
.LBB97_38:                              # %if.then.103
                                        #   in Loop: Header=BB97_35 Depth=1
	movabsq	$nodehead, %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	invalidate_nodes
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-64(%rbp), %rdi
	callq	free_fdesc
	jmp	.LBB97_40
.LBB97_39:                              # %if.else.104
                                        #   in Loop: Header=BB97_35 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB97_40:                              # %if.end.106
                                        #   in Loop: Header=BB97_35 Depth=1
	jmp	.LBB97_35
.LBB97_41:                              # %while.end
	jmp	.LBB97_42
.LBB97_42:                              # %if.end.107
	movabsq	$filebuf, %rdi
	xorl	%esi, %esi
	callq	linebuffer_setlen
	movl	$0, lineno
	movq	$0, charno
	movq	$0, linecharno
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	callq	regex_tag_multiline
.LBB97_43:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	find_entries, .Lfunc_end97-find_entries
	.cfi_endproc

	.align	16, 0x90
	.type	get_language_from_filename,@function
get_language_from_filename:             # @get_language_from_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$47, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strrchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB98_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB98_2:                               # %if.end
	movabsq	$lang_names, %rax
	movq	%rax, -32(%rbp)
.LBB98_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_6 Depth 2
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB98_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB98_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB98_14
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB98_3 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB98_6:                               # %for.cond.6
                                        #   Parent Loop BB98_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB98_13
# BB#7:                                 # %for.body.8
                                        #   in Loop: Header=BB98_6 Depth=2
	cmpl	$0, -20(%rbp)
	je	.LBB98_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB98_6 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB98_10
	jmp	.LBB98_11
.LBB98_9:                               # %cond.false
                                        #   in Loop: Header=BB98_6 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcaseeq
	testb	$1, %al
	jne	.LBB98_10
	jmp	.LBB98_11
.LBB98_10:                              # %if.then.11
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB98_33
.LBB98_11:                              # %if.end.12
                                        #   in Loop: Header=BB98_6 Depth=2
	jmp	.LBB98_12
.LBB98_12:                              # %for.inc
                                        #   in Loop: Header=BB98_6 Depth=2
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB98_6
.LBB98_13:                              # %for.end
                                        #   in Loop: Header=BB98_3 Depth=1
	jmp	.LBB98_14
.LBB98_14:                              # %if.end.13
                                        #   in Loop: Header=BB98_3 Depth=1
	jmp	.LBB98_15
.LBB98_15:                              # %for.inc.14
                                        #   in Loop: Header=BB98_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB98_3
.LBB98_16:                              # %for.end.16
	movl	$46, %esi
	movq	-16(%rbp), %rdi
	callq	strrchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB98_18
# BB#17:                                # %if.then.19
	movq	$0, -8(%rbp)
	jmp	.LBB98_33
.LBB98_18:                              # %if.end.20
	movabsq	$lang_names, %rax
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	%rax, -32(%rbp)
.LBB98_19:                              # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB98_22 Depth 2
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB98_32
# BB#20:                                # %for.body.25
                                        #   in Loop: Header=BB98_19 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB98_30
# BB#21:                                # %if.then.27
                                        #   in Loop: Header=BB98_19 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB98_22:                              # %for.cond.29
                                        #   Parent Loop BB98_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB98_29
# BB#23:                                # %for.body.31
                                        #   in Loop: Header=BB98_22 Depth=2
	cmpl	$0, -20(%rbp)
	je	.LBB98_25
# BB#24:                                # %cond.true.33
                                        #   in Loop: Header=BB98_22 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB98_26
	jmp	.LBB98_27
.LBB98_25:                              # %cond.false.35
                                        #   in Loop: Header=BB98_22 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	strcaseeq
	testb	$1, %al
	jne	.LBB98_26
	jmp	.LBB98_27
.LBB98_26:                              # %if.then.37
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB98_33
.LBB98_27:                              # %if.end.38
                                        #   in Loop: Header=BB98_22 Depth=2
	jmp	.LBB98_28
.LBB98_28:                              # %for.inc.39
                                        #   in Loop: Header=BB98_22 Depth=2
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB98_22
.LBB98_29:                              # %for.end.41
                                        #   in Loop: Header=BB98_19 Depth=1
	jmp	.LBB98_30
.LBB98_30:                              # %if.end.42
                                        #   in Loop: Header=BB98_19 Depth=1
	jmp	.LBB98_31
.LBB98_31:                              # %for.inc.43
                                        #   in Loop: Header=BB98_19 Depth=1
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB98_19
.LBB98_32:                              # %for.end.45
	movq	$0, -8(%rbp)
.LBB98_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	get_language_from_filename, .Lfunc_end98-get_language_from_filename
	.cfi_endproc

	.align	16, 0x90
	.type	get_language_from_interpreter,@function
get_language_from_interpreter:          # @get_language_from_interpreter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB99_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB99_15
.LBB99_2:                               # %if.end
	movabsq	$lang_names, %rax
	movq	%rax, -24(%rbp)
.LBB99_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB99_6 Depth 2
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB99_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB99_3 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB99_12
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB99_3 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB99_6:                               # %for.cond.5
                                        #   Parent Loop BB99_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB99_11
# BB#7:                                 # %for.body.7
                                        #   in Loop: Header=BB99_6 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	streq
	testb	$1, %al
	jne	.LBB99_8
	jmp	.LBB99_9
.LBB99_8:                               # %if.then.8
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB99_15
.LBB99_9:                               # %if.end.9
                                        #   in Loop: Header=BB99_6 Depth=2
	jmp	.LBB99_10
.LBB99_10:                              # %for.inc
                                        #   in Loop: Header=BB99_6 Depth=2
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB99_6
.LBB99_11:                              # %for.end
                                        #   in Loop: Header=BB99_3 Depth=1
	jmp	.LBB99_12
.LBB99_12:                              # %if.end.10
                                        #   in Loop: Header=BB99_3 Depth=1
	jmp	.LBB99_13
.LBB99_13:                              # %for.inc.11
                                        #   in Loop: Header=BB99_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB99_3
.LBB99_14:                              # %for.end.13
	movq	$0, -8(%rbp)
.LBB99_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	get_language_from_interpreter, .Lfunc_end99-get_language_from_interpreter
	.cfi_endproc

	.align	16, 0x90
	.type	reset_input,@function
reset_input:                            # @reset_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	fseek
	cmpl	$0, %eax
	je	.LBB100_2
# BB#1:                                 # %if.then
	movq	infilename, %rdi
	callq	perror
.LBB100_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	reset_input, .Lfunc_end100-reset_input
	.cfi_endproc

	.align	16, 0x90
	.type	invalidate_nodes,@function
invalidate_nodes:                       # @invalidate_nodes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB101_2
# BB#1:                                 # %if.then
	jmp	.LBB101_5
.LBB101_2:                              # %if.end
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB101_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rdi
	callq	free_tree
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	invalidate_nodes
	jmp	.LBB101_5
.LBB101_4:                              # %if.else
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	invalidate_nodes
.LBB101_5:                              # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	invalidate_nodes, .Lfunc_end101-invalidate_nodes
	.cfi_endproc

	.align	16, 0x90
	.type	free_fdesc,@function
free_fdesc:                             # @free_fdesc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	free_fdesc, .Lfunc_end102-free_fdesc
	.cfi_endproc

	.align	16, 0x90
	.type	regex_tag_multiline,@function
regex_tag_multiline:                    # @regex_tag_multiline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp312:
	.cfi_offset %rbx, -24
	movq	filebuf+16, %rax
	movq	%rax, -16(%rbp)
	movq	p_head, %rax
	movq	%rax, -24(%rbp)
.LBB103_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB103_8 Depth 2
                                        #       Child Loop BB103_21 Depth 3
	cmpq	$0, -24(%rbp)
	je	.LBB103_35
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB103_1 Depth=1
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	testb	$1, 67(%rax)
	jne	.LBB103_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB103_1 Depth=1
	jmp	.LBB103_34
.LBB103_4:                              # %if.end
                                        #   in Loop: Header=BB103_1 Depth=1
	movl	$1, lineno
	movq	$0, charno
	movq	$0, linecharno
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB103_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB103_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	curfdp, %rcx
	cmpq	40(%rcx), %rax
	je	.LBB103_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB103_1 Depth=1
	jmp	.LBB103_34
.LBB103_7:                              # %if.end.6
                                        #   in Loop: Header=BB103_1 Depth=1
	jmp	.LBB103_8
.LBB103_8:                              # %while.cond
                                        #   Parent Loop BB103_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB103_21 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -36(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jl	.LBB103_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB103_8 Depth=2
	movl	-36(%rbp), %eax
	cmpl	filebuf+8, %eax
	setl	%cl
	movb	%cl, -37(%rbp)          # 1-byte Spill
.LBB103_10:                             # %land.end
                                        #   in Loop: Header=BB103_8 Depth=2
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB103_11
	jmp	.LBB103_33
.LBB103_11:                             # %while.body
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movslq	filebuf+8(%rip), %rcx
	movl	%ecx, %edx
	movq	charno(%rip), %r8
	movl	-36(%rbp), %r9d
	subl	%r9d, %edx
	movslq	%edx, %r10
	addq	$40, %rax
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r10, %r8
	movq	%rax, %r9
	callq	re_search
	movl	%eax, %r11d
	movl	%r11d, -36(%rbp)
	movl	%r11d, %ebx
	subl	$-2, %ebx
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	je	.LBB103_12
	jmp	.LBB103_36
.LBB103_36:                             # %while.body
                                        #   in Loop: Header=BB103_8 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB103_15
	jmp	.LBB103_16
.LBB103_12:                             # %sw.bb
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	-24(%rbp), %rax
	testb	$1, 64(%rax)
	jne	.LBB103_14
# BB#13:                                # %if.then.12
                                        #   in Loop: Header=BB103_8 Depth=2
	movabsq	$.L.str.116, %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	error
	movq	-24(%rbp), %rsi
	movb	$1, 64(%rsi)
.LBB103_14:                             # %if.end.14
                                        #   in Loop: Header=BB103_8 Depth=2
	jmp	.LBB103_32
.LBB103_15:                             # %sw.bb.15
                                        #   in Loop: Header=BB103_8 Depth=2
	jmp	.LBB103_32
.LBB103_16:                             # %sw.default
                                        #   in Loop: Header=BB103_8 Depth=2
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB103_20
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	-24(%rbp), %rax
	testb	$1, 64(%rax)
	jne	.LBB103_19
# BB#18:                                # %if.then.23
                                        #   in Loop: Header=BB103_8 Depth=2
	movabsq	$.L.str.117, %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movb	$0, %al
	callq	error
	movq	-24(%rbp), %rsi
	movb	$1, 64(%rsi)
.LBB103_19:                             # %if.end.26
                                        #   in Loop: Header=BB103_8 Depth=2
	movl	$-3, -36(%rbp)
	jmp	.LBB103_32
.LBB103_20:                             # %if.end.27
                                        #   in Loop: Header=BB103_8 Depth=2
	jmp	.LBB103_21
.LBB103_21:                             # %while.cond.28
                                        #   Parent Loop BB103_1 Depth=1
                                        #     Parent Loop BB103_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	charno, %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB103_25
# BB#22:                                # %while.body.34
                                        #   in Loop: Header=BB103_21 Depth=3
	movq	charno, %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, charno
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB103_24
# BB#23:                                # %if.then.39
                                        #   in Loop: Header=BB103_21 Depth=3
	movl	lineno, %eax
	addl	$1, %eax
	movl	%eax, lineno
	movq	charno, %rcx
	movq	%rcx, linecharno
.LBB103_24:                             # %if.end.41
                                        #   in Loop: Header=BB103_21 Depth=3
	jmp	.LBB103_21
.LBB103_25:                             # %while.end
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB103_27
# BB#26:                                # %if.then.47
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	$0, -32(%rbp)
	jmp	.LBB103_28
.LBB103_27:                             # %if.else
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdx
	callq	substitute
	movq	%rax, -32(%rbp)
.LBB103_28:                             # %if.end.51
                                        #   in Loop: Header=BB103_8 Depth=2
	movq	-24(%rbp), %rax
	testb	$1, 65(%rax)
	je	.LBB103_30
# BB#29:                                # %if.then.53
                                        #   in Loop: Header=BB103_8 Depth=2
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	linecharno, %rax
	movq	charno, %rcx
	subq	linecharno, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	movl	lineno, %r8d
	movq	linecharno, %r9
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	-56(%rbp), %ecx         # 4-byte Reload
	callq	pfnote
	jmp	.LBB103_31
.LBB103_30:                             # %if.else.56
                                        #   in Loop: Header=BB103_8 Depth=2
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	linecharno, %rax
	movq	charno, %rdi
	subq	linecharno, %rdi
	addq	$1, %rdi
	movl	%edi, %ecx
	movl	lineno, %r9d
	movq	linecharno, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-84(%rbp), %r8d         # 4-byte Reload
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	make_tag
.LBB103_31:                             # %if.end.63
                                        #   in Loop: Header=BB103_8 Depth=2
	jmp	.LBB103_32
.LBB103_32:                             # %sw.epilog
                                        #   in Loop: Header=BB103_8 Depth=2
	jmp	.LBB103_8
.LBB103_33:                             # %while.end.64
                                        #   in Loop: Header=BB103_1 Depth=1
	jmp	.LBB103_34
.LBB103_34:                             # %for.inc
                                        #   in Loop: Header=BB103_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB103_1
.LBB103_35:                             # %for.end
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end103:
	.size	regex_tag_multiline, .Lfunc_end103-regex_tag_multiline
	.cfi_endproc

	.align	16, 0x90
	.type	strcaseeq,@function
strcaseeq:                              # @strcaseeq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp313:
	.cfi_def_cfa_offset 16
.Ltmp314:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp315:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	c_strcasecmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	strcaseeq, .Lfunc_end104-strcaseeq
	.cfi_endproc

	.align	16, 0x90
	.type	total_size_of_entries,@function
total_size_of_entries:                  # @total_size_of_entries
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp316:
	.cfi_def_cfa_offset 16
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp318:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB105_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB105_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-8(%rbp), %rax
	testb	$1, 40(%rax)
	je	.LBB105_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	strlen
	addq	$1, %rax
	movslq	-12(%rbp), %rdi
	addq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB105_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	strlen
	addq	$1, %rax
	movslq	-12(%rbp), %rdi
	addq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -12(%rbp)
.LBB105_5:                              # %if.end
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	44(%rax), %rdi
	callq	number_len
	addl	$1, %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$-1, 48(%rdi)
	je	.LBB105_7
# BB#6:                                 # %if.then.18
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	number_len
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB105_7:                              # %if.end.22
                                        #   in Loop: Header=BB105_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB105_8:                              # %if.end.24
                                        #   in Loop: Header=BB105_1 Depth=1
	jmp	.LBB105_9
.LBB105_9:                              # %for.inc
                                        #   in Loop: Header=BB105_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB105_1
.LBB105_10:                             # %for.end
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	total_size_of_entries, .Lfunc_end105-total_size_of_entries
	.cfi_endproc

	.align	16, 0x90
	.type	number_len,@function
number_len:                             # @number_len
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
.Ltmp320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp321:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$1, -12(%rbp)
.LBB106_1:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	jle	.LBB106_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB106_1
.LBB106_3:                              # %while.end
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end106:
	.size	number_len, .Lfunc_end106-number_len
	.cfi_endproc

	.align	16, 0x90
	.type	add_regex,@function
add_regex:                              # @add_regex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
.Ltmp323:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp324:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -49(%rbp)
	movb	$1, -81(%rbp)
	movb	$0, -82(%rbp)
	movb	$0, -83(%rbp)
	movb	$0, -84(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	cmpq	$3, %rax
	jae	.LBB107_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.338, %rdi
	movb	$0, %al
	callq	error
	jmp	.LBB107_38
.LBB107_2:                              # %if.end
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -17(%rbp)
	movq	-8(%rbp), %rdi
	callq	scan_separators
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB107_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.339, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	error
	jmp	.LBB107_38
.LBB107_4:                              # %if.end.4
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	movsbl	-17(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB107_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.340, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	error
	jmp	.LBB107_38
.LBB107_6:                              # %if.end.10
	movq	-40(%rbp), %rdi
	callq	scan_separators
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB107_8
# BB#7:                                 # %if.then.14
	leaq	-49(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -40(%rbp)
	jmp	.LBB107_9
.LBB107_8:                              # %if.else
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB107_9:                              # %if.end.15
	jmp	.LBB107_10
.LBB107_10:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB107_21
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB107_10 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$78, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	je	.LBB107_12
	jmp	.LBB107_39
.LBB107_39:                             # %for.body
                                        #   in Loop: Header=BB107_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB107_15
	jmp	.LBB107_40
.LBB107_40:                             # %for.body
                                        #   in Loop: Header=BB107_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB107_17
	jmp	.LBB107_41
.LBB107_41:                             # %for.body
                                        #   in Loop: Header=BB107_10 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB107_16
	jmp	.LBB107_18
.LBB107_12:                             # %sw.bb
                                        #   in Loop: Header=BB107_10 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB107_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB107_10 Depth=1
	movabsq	$.L.str.341, %rdi
	movb	$0, %al
	callq	error
.LBB107_14:                             # %if.end.25
                                        #   in Loop: Header=BB107_10 Depth=1
	movb	$1, -81(%rbp)
	jmp	.LBB107_19
.LBB107_15:                             # %sw.bb.26
                                        #   in Loop: Header=BB107_10 Depth=1
	movb	$1, -82(%rbp)
	jmp	.LBB107_19
.LBB107_16:                             # %sw.bb.27
                                        #   in Loop: Header=BB107_10 Depth=1
	movb	$1, -84(%rbp)
.LBB107_17:                             # %sw.bb.28
                                        #   in Loop: Header=BB107_10 Depth=1
	movb	$1, -83(%rbp)
	movb	$1, need_filebuf
	jmp	.LBB107_19
.LBB107_18:                             # %sw.default
                                        #   in Loop: Header=BB107_10 Depth=1
	movabsq	$.L.str.342, %rdi
	movq	-48(%rbp), %rax
	movsbl	(%rax), %esi
	movb	$0, %al
	callq	error
.LBB107_19:                             # %sw.epilog
                                        #   in Loop: Header=BB107_10 Depth=1
	jmp	.LBB107_20
.LBB107_20:                             # %for.inc
                                        #   in Loop: Header=BB107_10 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB107_10
.LBB107_21:                             # %for.end
	movl	$64, %eax
	movl	%eax, %edi
	callq	xmalloc
	movabsq	$add_regex.zeropattern, %rdi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	testb	$1, -82(%rbp)
	je	.LBB107_27
# BB#22:                                # %if.then.32
	movl	$0, -88(%rbp)
.LBB107_23:                             # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -88(%rbp)         # imm = 0x100
	jge	.LBB107_26
# BB#24:                                # %for.body.36
                                        #   in Loop: Header=BB107_23 Depth=1
	movl	-88(%rbp), %edi
	callq	c_tolower
	movb	%al, %cl
	movslq	-88(%rbp), %rdx
	movb	%cl, add_regex.lc_trans(,%rdx)
# BB#25:                                # %for.inc.40
                                        #   in Loop: Header=BB107_23 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB107_23
.LBB107_26:                             # %for.end.41
	movabsq	$add_regex.lc_trans, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB107_27:                             # %if.end.42
	testb	$1, -83(%rbp)
	je	.LBB107_29
# BB#28:                                # %if.then.44
	movabsq	$.L.str.343, %rdi
	movabsq	$.L.str.4, %rdx
	movq	-8(%rbp), %rsi
	callq	concat
	movq	%rax, -32(%rbp)
	jmp	.LBB107_30
.LBB107_29:                             # %if.else.46
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB107_30:                             # %if.end.47
	testb	$1, -84(%rbp)
	je	.LBB107_32
# BB#31:                                # %if.then.49
	movl	$3146308, %eax          # imm = 0x300244
	movl	%eax, %edi
	callq	re_set_syntax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB107_33
.LBB107_32:                             # %if.else.51
	movl	$3146244, %eax          # imm = 0x300204
	movl	%eax, %edi
	callq	re_set_syntax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB107_33:                             # %if.end.53
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-72(%rbp), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	re_compile_pattern
	movq	%rax, -64(%rbp)
	testb	$1, -83(%rbp)
	je	.LBB107_35
# BB#34:                                # %if.then.57
	movq	-32(%rbp), %rdi
	callq	free
.LBB107_35:                             # %if.end.58
	cmpq	$0, -64(%rbp)
	je	.LBB107_37
# BB#36:                                # %if.then.61
	movabsq	$.L.str.344, %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	error
	jmp	.LBB107_38
.LBB107_37:                             # %if.end.62
	movl	$72, %eax
	movl	%eax, %edi
	movq	p_head, %rcx
	movq	%rcx, -80(%rbp)
	callq	xmalloc
	movq	%rax, p_head
	movq	-8(%rbp), %rdi
	callq	savestr
	movq	p_head, %rcx
	movq	%rax, 16(%rcx)
	movq	-80(%rbp), %rax
	movq	p_head, %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	p_head, %rcx
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	p_head, %rcx
	movq	%rax, 32(%rcx)
	movq	-40(%rbp), %rdi
	callq	savestr
	movq	p_head, %rcx
	movq	%rax, 24(%rcx)
	movq	p_head, %rax
	movb	$0, 64(%rax)
	movb	-81(%rbp), %dl
	movq	p_head, %rax
	andb	$1, %dl
	movb	%dl, 65(%rax)
	movb	-82(%rbp), %dl
	movq	p_head, %rax
	andb	$1, %dl
	movb	%dl, 66(%rax)
	movb	-83(%rbp), %dl
	movq	p_head, %rax
	andb	$1, %dl
	movb	%dl, 67(%rax)
.LBB107_38:                             # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	add_regex, .Lfunc_end107-add_regex
	.cfi_endproc

	.align	16, 0x90
	.type	scan_separators,@function
scan_separators:                        # @scan_separators
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
.Ltmp326:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp327:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	(%rdi), %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rdi
	addq	$1, %rdi
	movq	%rdi, -8(%rbp)
.LBB108_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB108_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB108_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB108_18
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	addl	$-97, %ecx
	movl	%ecx, %eax
	subl	$21, %ecx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	ja	.LBB108_13
# BB#30:                                # %if.then
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI108_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB108_4:                              # %sw.bb
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$7, (%rax)
	jmp	.LBB108_17
.LBB108_5:                              # %sw.bb.4
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$8, (%rax)
	jmp	.LBB108_17
.LBB108_6:                              # %sw.bb.6
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$127, (%rax)
	jmp	.LBB108_17
.LBB108_7:                              # %sw.bb.8
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$27, (%rax)
	jmp	.LBB108_17
.LBB108_8:                              # %sw.bb.10
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$12, (%rax)
	jmp	.LBB108_17
.LBB108_9:                              # %sw.bb.12
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$10, (%rax)
	jmp	.LBB108_17
.LBB108_10:                             # %sw.bb.14
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$13, (%rax)
	jmp	.LBB108_17
.LBB108_11:                             # %sw.bb.16
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$9, (%rax)
	jmp	.LBB108_17
.LBB108_12:                             # %sw.bb.18
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$11, (%rax)
	jmp	.LBB108_17
.LBB108_13:                             # %sw.default
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-9(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB108_15
# BB#14:                                # %if.then.24
                                        #   in Loop: Header=BB108_1 Depth=1
	movb	-9(%rbp), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB108_16
.LBB108_15:                             # %if.else
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	$92, (%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
.LBB108_16:                             # %if.end
                                        #   in Loop: Header=BB108_1 Depth=1
	jmp	.LBB108_17
.LBB108_17:                             # %sw.epilog
                                        #   in Loop: Header=BB108_1 Depth=1
	movb	$0, -25(%rbp)
	jmp	.LBB108_25
.LBB108_18:                             # %if.else.28
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB108_20
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB108_1 Depth=1
	movb	$1, -25(%rbp)
	jmp	.LBB108_24
.LBB108_20:                             # %if.else.33
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-9(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB108_22
# BB#21:                                # %if.then.38
	jmp	.LBB108_27
.LBB108_22:                             # %if.else.39
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
# BB#23:                                # %if.end.41
                                        #   in Loop: Header=BB108_1 Depth=1
	jmp	.LBB108_24
.LBB108_24:                             # %if.end.42
                                        #   in Loop: Header=BB108_1 Depth=1
	jmp	.LBB108_25
.LBB108_25:                             # %if.end.43
                                        #   in Loop: Header=BB108_1 Depth=1
	jmp	.LBB108_26
.LBB108_26:                             # %for.inc
                                        #   in Loop: Header=BB108_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB108_1
.LBB108_27:                             # %for.end
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movsbl	-9(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB108_29
# BB#28:                                # %if.then.49
	movq	$0, -8(%rbp)
.LBB108_29:                             # %if.end.50
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end108:
	.size	scan_separators, .Lfunc_end108-scan_separators
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI108_0:
	.quad	.LBB108_4
	.quad	.LBB108_5
	.quad	.LBB108_13
	.quad	.LBB108_6
	.quad	.LBB108_7
	.quad	.LBB108_8
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_9
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_13
	.quad	.LBB108_10
	.quad	.LBB108_13
	.quad	.LBB108_11
	.quad	.LBB108_13
	.quad	.LBB108_12

	.text
	.align	16, 0x90
	.type	verror,@function
verror:                                 # @verror
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp328:
	.cfi_def_cfa_offset 16
.Ltmp329:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp330:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.345, %rax
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
	movabsq	$.L.str.336, %rsi
	movq	stderr, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	verror, .Lfunc_end109-verror
	.cfi_endproc

	.type	pot_etags_version,@object # @pot_etags_version
	.data
	.globl	pot_etags_version
	.align	16
pot_etags_version:
	.asciz	"@(#) pot revision number is 17.38.1.4"
	.size	pot_etags_version, 38

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fth"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tok"
	.size	.L.str.1, 4

	.type	Forth_suffixes,@object  # @Forth_suffixes
	.data
	.globl	Forth_suffixes
	.align	16
Forth_suffixes:
	.quad	.L.str
	.quad	.L.str.1
	.quad	0
	.size	Forth_suffixes, 24

	.type	progname,@object        # @progname
	.local	progname
	.comm	progname,8,8
	.type	constantypedefs,@object # @constantypedefs
	.local	constantypedefs
	.comm	constantypedefs,1,1
	.type	typedefs_or_cplusplus,@object # @typedefs_or_cplusplus
	.local	typedefs_or_cplusplus
	.comm	typedefs_or_cplusplus,1,1
	.type	typedefs,@object        # @typedefs
	.local	typedefs
	.comm	typedefs,1,1
	.type	members,@object         # @members
	.local	members
	.comm	members,4,4
	.type	globals,@object         # @globals
	.local	globals
	.comm	globals,4,4
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"-ac:Cf:Il:o:Qr:RSVhH"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Di:"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	longopts,@object        # @longopts
	.data
	.align	16
longopts:
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	97                      # 0x61
	.zero	4
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	packages_only
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	67                      # 0x43
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	declarations
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	no_line_directive
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.quad	no_duplicates
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	73                      # 0x49
	.zero	4
	.quad	.L.str.27
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	108                     # 0x6c
	.zero	4
	.quad	.L.str.28
	.long	0                       # 0x0
	.zero	4
	.quad	members
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.29
	.long	0                       # 0x0
	.zero	4
	.quad	members
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	111                     # 0x6f
	.zero	4
	.quad	.L.str.31
	.long	0                       # 0x0
	.zero	4
	.quad	class_qualify
	.long	81                      # 0x51
	.zero	4
	.quad	.L.str.32
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	114                     # 0x72
	.zero	4
	.quad	.L.str.33
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	82                      # 0x52
	.zero	4
	.quad	.L.str.34
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	99                      # 0x63
	.zero	4
	.quad	.L.str.35
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	4097                    # 0x1001
	.zero	4
	.quad	.L.str.36
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	86                      # 0x56
	.zero	4
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.38
	.long	0                       # 0x0
	.zero	4
	.quad	globals
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.39
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	105                     # 0x69
	.zero	4
	.zero	32
	.size	longopts, 736

	.type	whatlen_max,@object     # @whatlen_max
	.local	whatlen_max
	.comm	whatlen_max,8,8
	.type	parsing_stdin,@object   # @parsing_stdin
	.local	parsing_stdin
	.comm	parsing_stdin,1,1
	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"cannot parse standard input more than once"
	.size	.L.str.5, 43

	.type	append_to_tagfile,@object # @append_to_tagfile
	.local	append_to_tagfile
	.comm	append_to_tagfile,1,1
	.type	cplusplus,@object       # @cplusplus
	.local	cplusplus
	.comm	cplusplus,1,1
	.type	tagfile,@object         # @tagfile
	.local	tagfile
	.comm	tagfile,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-o option may only be given once."
	.size	.L.str.6, 34

	.type	ignoreindent,@object    # @ignoreindent
	.local	ignoreindent
	.comm	ignoreindent,1,1
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"i"
	.size	.L.str.7, 2

	.type	class_qualify,@object   # @class_qualify
	.local	class_qualify
	.comm	class_qualify,4,4
	.type	searchar,@object        # @searchar
	.data
searchar:
	.byte	47                      # 0x2f
	.size	searchar, 1

	.type	update,@object          # @update
	.local	update
	.comm	update,1,1
	.type	vgrind_style,@object    # @vgrind_style
	.local	vgrind_style
	.comm	vgrind_style,1,1
	.type	cxref_style,@object     # @cxref_style
	.local	cxref_style
	.comm	cxref_style,1,1
	.type	no_warnings,@object     # @no_warnings
	.local	no_warnings
	.comm	no_warnings,1,1
	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"no input files specified."
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TAGS"
	.size	.L.str.9, 5

	.type	cwd,@object             # @cwd
	.local	cwd
	.comm	cwd,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/dev/"
	.size	.L.str.12, 6

	.type	tagfiledir,@object      # @tagfiledir
	.local	tagfiledir
	.comm	tagfiledir,8,8
	.type	lb,@object              # @lb
	.local	lb
	.comm	lb,24,8
	.type	filebuf,@object         # @filebuf
	.local	filebuf
	.comm	filebuf,24,8
	.type	token_name,@object      # @token_name
	.local	token_name
	.comm	token_name,24,8
	.type	tagf,@object            # @tagf
	.local	tagf
	.comm	tagf,8,8
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ab"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"wb"
	.size	.L.str.14, 3

	.type	main.lang,@object       # @main.lang
	.local	main.lang
	.comm	main.lang,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cannot parse standard input AND read file names from it"
	.size	.L.str.15, 56

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"internal error: arg_type"
	.size	.L.str.16, 25

	.type	nodehead,@object        # @nodehead
	.local	nodehead
	.comm	nodehead,8,8
	.type	fdhead,@object          # @fdhead
	.local	fdhead
	.comm	fdhead,8,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\f\n%s,0\n"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\f\n%s,include\n"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"append"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"packages-only"
	.size	.L.str.20, 14

	.type	packages_only,@object   # @packages_only
	.local	packages_only
	.comm	packages_only,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"c++"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"declarations"
	.size	.L.str.22, 13

	.type	declarations,@object    # @declarations
	.local	declarations
	.comm	declarations,4,4
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"no-line-directive"
	.size	.L.str.23, 18

	.type	no_line_directive,@object # @no_line_directive
	.local	no_line_directive
	.comm	no_line_directive,4,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"no-duplicates"
	.size	.L.str.24, 14

	.type	no_duplicates,@object   # @no_duplicates
	.local	no_duplicates
	.comm	no_duplicates,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"help"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ignore-indentation"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"language"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"members"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"no-members"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"output"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"class-qualify"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"regex"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"no-regex"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"ignore-case-regex"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"parse-stdin"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"version"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"no-defines"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"no-globals"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"include"
	.size	.L.str.39, 8

	.type	.Lprint_version.emacs_copyright,@object # @print_version.emacs_copyright
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lprint_version.emacs_copyright:
	.asciz	"Copyright (C) 2016 Free Software Foundation, Inc."
	.size	.Lprint_version.emacs_copyright, 50

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"%s (%s %s)\n"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"etags"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GNU Emacs"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"25.1"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"This program is distributed under the terms in ETAGS.README"
	.size	.L.str.44, 60

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Usage: %s [options] [[regex-option ...] file-name] ...\n\nThese are the options accepted by %s.\n"
	.size	.L.str.45, 95

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"You may use unambiguous abbreviations for the long option names."
	.size	.L.str.46, 65

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"  A - as file name means read names from stdin (one per line).\nAbsolute names are stored in the output file as they are.\nRelative ones are stored relative to the output file's directory.\n"
	.size	.L.str.47, 188

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"-a, --append\n        Append tag entries to existing tags file."
	.size	.L.str.48, 63

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"--packages-only\n        For Ada files, only generate tags for packages."
	.size	.L.str.49, 72

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"--declarations\n\tIn C and derived languages, create tags for function declarations,"
	.size	.L.str.50, 83

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\tand create tags for extern variables unless --no-globals is used."
	.size	.L.str.51, 67

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"-D, --no-defines\n        Don't create tag entries for C #define constants and enum constants.\n\tThis makes the tags file smaller."
	.size	.L.str.52, 129

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"-i FILE, --include=FILE\n        Include a note in tag file indicating that, when searching for\n        a tag, one should also consult the tags file FILE after\n        checking the current file."
	.size	.L.str.53, 194

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"-l LANG, --language=LANG\n        Force the following files to be considered as written in the\n\tnamed language up to the next --language=LANG option."
	.size	.L.str.54, 149

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"--no-globals\n\tDo not create tag entries for global variables in some\n\tlanguages.  This makes the tags file smaller."
	.size	.L.str.55, 116

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"--no-line-directive\n        Ignore #line preprocessor directives in C and derived languages."
	.size	.L.str.56, 93

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"--no-members\n\tDo not create tag entries for members of structures\n\tin some languages."
	.size	.L.str.57, 86

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"-Q, --class-qualify\n        Qualify tag names with their class name in C++, ObjC, Java, and Perl.\n        This produces tag names of the form \"class::member\" for C++,\n        \"class(category)\" for Objective C, and \"class.member\" for Java.\n        For Objective C, this also produces class methods qualified with\n        their arguments, as in \"foo:bar:baz:more\".\n        For Perl, this produces \"package::member\"."
	.size	.L.str.58, 414

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"-r REGEXP, --regex=REGEXP or --regex=@regexfile\n        Make a tag for each line matching a regular expression pattern\n\tin the following files.  {LANGUAGE}REGEXP uses REGEXP for LANGUAGE\n\tfiles only.  REGEXFILE is a file containing one REGEXP per line.\n\tREGEXP takes the form /TAGREGEXP/TAGNAME/MODS, where TAGNAME/ is\n\toptional.  The TAGREGEXP pattern is anchored (as if preceded by ^)."
	.size	.L.str.59, 388

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\tIf TAGNAME/ is present, the tags created are named.\n\tFor example Tcl named tags can be created with:\n\t  --regex=\"/proc[ \\t]+\\([^ \\t]+\\)/\\1/.\".\n\tMODS are optional one-letter modifiers: 'i' means to ignore case,\n\t'm' means to allow multi-line matches, 's' implies 'm' and\n\tcauses dot to match any character, including newline."
	.size	.L.str.60, 326

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"-R, --no-regex\n        Don't create tags from regexps for the following files."
	.size	.L.str.61, 79

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"-I, --ignore-indentation\n        In C and C++ do not assume that a closing brace in the first\n        column is the final brace of a function or structure definition."
	.size	.L.str.62, 167

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"-o FILE, --output=FILE\n        Write the tags to FILE."
	.size	.L.str.63, 55

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"--parse-stdin=NAME\n        Read from standard input and record tags as belonging to file NAME."
	.size	.L.str.64, 95

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"-V, --version\n        Print the version of the program.\n-h, --help\n        Print this help message.\n        Followed by one or more '--language' options prints detailed\n        help about tag generation for the specified languages."
	.size	.L.str.65, 232

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Report bugs to bug-gnu-emacs@gnu.org"
	.size	.L.str.66, 37

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"\nThese are the currently supported languages, along with the\ndefault file names and dot suffixes:"
	.size	.L.str.67, 98

	.type	lang_names,@object      # @lang_names
	.data
	.align	16
lang_names:
	.quad	.L.str.73
	.quad	Ada_help
	.quad	Ada_funcs
	.quad	Ada_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.74
	.quad	Asm_help
	.quad	Asm_labels
	.quad	Asm_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.75
	.quad	default_C_help
	.quad	default_C_entries
	.quad	default_C_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.21
	.quad	Cplusplus_help
	.quad	Cplusplus_entries
	.quad	Cplusplus_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.76
	.quad	no_lang_help
	.quad	Cstar_entries
	.quad	Cstar_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.77
	.quad	Cobol_help
	.quad	Cobol_paragraphs
	.quad	Cobol_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.78
	.quad	Erlang_help
	.quad	Erlang_functions
	.quad	Erlang_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.79
	.quad	Forth_help
	.quad	Forth_words
	.quad	Forth_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.80
	.quad	Fortran_help
	.quad	Fortran_functions
	.quad	Fortran_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.81
	.quad	Go_help
	.quad	Go_functions
	.quad	Go_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.82
	.quad	HTML_help
	.quad	HTML_labels
	.quad	HTML_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.83
	.quad	Cjava_help
	.quad	Cjava_entries
	.quad	Cjava_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.84
	.quad	Lisp_help
	.quad	Lisp_functions
	.quad	Lisp_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.85
	.quad	Lua_help
	.quad	Lua_functions
	.quad	Lua_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.86
	.quad	Makefile_help
	.quad	Makefile_targets
	.quad	0
	.quad	Makefile_filenames
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.87
	.quad	Objc_help
	.quad	plain_C_entries
	.quad	Objc_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.88
	.quad	Pascal_help
	.quad	Pascal_functions
	.quad	Pascal_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.89
	.quad	Perl_help
	.quad	Perl_functions
	.quad	Perl_suffixes
	.quad	0
	.quad	Perl_interpreters
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.90
	.quad	PHP_help
	.quad	PHP_functions
	.quad	PHP_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.91
	.quad	PS_help
	.quad	PS_functions
	.quad	PS_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.92
	.quad	no_lang_help
	.quad	plain_C_entries
	.quad	plain_C_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.93
	.quad	Prolog_help
	.quad	Prolog_functions
	.quad	Prolog_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.94
	.quad	Python_help
	.quad	Python_functions
	.quad	Python_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.95
	.quad	Ruby_help
	.quad	Ruby_functions
	.quad	Ruby_suffixes
	.quad	Ruby_filenames
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.96
	.quad	Scheme_help
	.quad	Scheme_functions
	.quad	Scheme_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.97
	.quad	TeX_help
	.quad	TeX_commands
	.quad	TeX_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.98
	.quad	Texinfo_help
	.quad	Texinfo_nodes
	.quad	Texinfo_suffixes
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.99
	.quad	Yacc_help
	.quad	Yacc_entries
	.quad	Yacc_suffixes
	.quad	0
	.quad	0
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.100
	.quad	auto_help
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.101
	.quad	none_help
	.quad	just_read_file
	.quad	0
	.quad	0
	.quad	0
	.byte	0                       # 0x0
	.zero	7
	.zero	56
	.size	lang_names, 1736

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"  %-*s"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	" %s"
	.size	.L.str.69, 4

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	" .%s"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"where 'auto' means use default language for files based on file\nname suffix, and 'none' means only do regexp processing on files.\nIf no language is specified and no matching suffix is found,\nthe first line of the file is read for a sharp-bang (#!) sequence\nfollowed by the name of an interpreter.  If no such sequence is found,\nFortran is tried first; if no tags are found, C is tried next.\nWhen parsing any C file, a \"class\" or \"template\" keyword\nswitches to C++."
	.size	.L.str.71, 465

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Compressed files are supported using gzip, bzip2, and xz.\n\nFor detailed help on a given language use, for example,\netags --help --lang=ada."
	.size	.L.str.72, 140

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"ada"
	.size	.L.str.73, 4

	.type	Ada_help,@object        # @Ada_help
	.section	.rodata,"a",@progbits
	.align	16
Ada_help:
	.asciz	"In Ada code, functions, procedures, packages, tasks and types are\ntags.  Use the '--packages-only' option to create tags for\npackages only.\nAda tag names have suffixes indicating the type of entity:\n\tEntity type:\tQualifier:\n\t------------\t----------\n\tfunction\t/f\n\tprocedure\t/p\n\tpackage spec\t/s\n\tpackage body\t/b\n\ttype\t\t/t\n\ttask\t\t/k\nThus, 'M-x find-tag <RET> bidule/b <RET>' will go directly to the\nbody of the package 'bidule', while 'M-x find-tag <RET> bidule <RET>'\nwill just search for any tag 'bidule'."
	.size	Ada_help, 505

	.type	Ada_suffixes,@object    # @Ada_suffixes
	.data
	.align	16
Ada_suffixes:
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.73
	.quad	0
	.size	Ada_suffixes, 32

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"asm"
	.size	.L.str.74, 4

	.type	Asm_help,@object        # @Asm_help
	.section	.rodata,"a",@progbits
	.align	16
Asm_help:
	.asciz	"In assembler code, labels appearing at the beginning of a line,\nfollowed by a colon, are tags."
	.size	Asm_help, 95

	.type	Asm_suffixes,@object    # @Asm_suffixes
	.data
	.align	16
Asm_suffixes:
	.quad	.L.str.124
	.quad	.L.str.74
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	0
	.size	Asm_suffixes, 80

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"c"
	.size	.L.str.75, 2

	.type	default_C_help,@object  # @default_C_help
	.section	.rodata,"a",@progbits
	.align	16
default_C_help:
	.asciz	"In C code, any C function or typedef is a tag, and so are\ndefinitions of 'struct', 'union' and 'enum'.  '#define' macro\ndefinitions and 'enum' constants are tags unless you specify\n'--no-defines'.  Global variables are tags unless you specify\n'--no-globals' and so are struct members unless you specify\n'--no-members'.  Use of '--no-globals', '--no-defines' and\n'--no-members' can make the tags table file much smaller.\nYou can tag function declarations and external variables by\nusing '--declarations'."
	.size	default_C_help, 504

	.type	default_C_suffixes,@object # @default_C_suffixes
	.data
	.align	16
default_C_suffixes:
	.quad	.L.str.75
	.quad	.L.str.178
	.quad	0
	.size	default_C_suffixes, 24

	.type	Cplusplus_help,@object  # @Cplusplus_help
	.section	.rodata,"a",@progbits
	.align	16
Cplusplus_help:
	.asciz	"In C++ code, all the tag constructs of C code are tagged.  (Use\n--help --lang=c --lang=c++ for full help.)\nIn addition to C tags, member functions are also recognized.  Member\nvariables are recognized unless you use the '--no-members' option.\nTags for variables and functions in classes are named 'CLASS::VARIABLE'\nand 'CLASS::FUNCTION'.  'operator' definitions have tag names like\n'operator+'."
	.size	Cplusplus_help, 395

	.type	Cplusplus_suffixes,@object # @Cplusplus_suffixes
	.data
	.align	16
Cplusplus_suffixes:
	.quad	.L.str.179
	.quad	.L.str.21
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	0
	.size	Cplusplus_suffixes, 104

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"c*"
	.size	.L.str.76, 3

	.type	no_lang_help,@object    # @no_lang_help
	.section	.rodata,"a",@progbits
	.align	16
no_lang_help:
	.asciz	"No detailed help available for this language."
	.size	no_lang_help, 46

	.type	Cstar_suffixes,@object  # @Cstar_suffixes
	.data
	.align	16
Cstar_suffixes:
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	0
	.size	Cstar_suffixes, 24

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"cobol"
	.size	.L.str.77, 6

	.type	Cobol_help,@object      # @Cobol_help
	.data
	.align	16
Cobol_help:
	.asciz	"In Cobol code, tags are paragraph names; that is, any word\nstarting in column 8 and followed by a period."
	.size	Cobol_help, 106

	.type	Cobol_suffixes,@object  # @Cobol_suffixes
	.align	16
Cobol_suffixes:
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	0
	.size	Cobol_suffixes, 24

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"erlang"
	.size	.L.str.78, 7

	.type	Erlang_help,@object     # @Erlang_help
	.section	.rodata,"a",@progbits
	.align	16
Erlang_help:
	.asciz	"In Erlang code, the tags are the functions, records and macros\ndefined in the file."
	.size	Erlang_help, 84

	.type	Erlang_suffixes,@object # @Erlang_suffixes
	.data
	.align	16
Erlang_suffixes:
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	0
	.size	Erlang_suffixes, 24

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"forth"
	.size	.L.str.79, 6

	.type	Forth_help,@object      # @Forth_help
	.section	.rodata,"a",@progbits
	.align	16
Forth_help:
	.asciz	"In Forth code, tags are words defined by ':',\nconstant, code, create, defer, value, variable, buffer:, field."
	.size	Forth_help, 110

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"fortran"
	.size	.L.str.80, 8

	.type	Fortran_help,@object    # @Fortran_help
	.section	.rodata,"a",@progbits
	.align	16
Fortran_help:
	.asciz	"In Fortran code, functions, subroutines and block data are tags."
	.size	Fortran_help, 65

	.type	Fortran_suffixes,@object # @Fortran_suffixes
	.data
	.align	16
Fortran_suffixes:
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.165
	.quad	0
	.size	Fortran_suffixes, 40

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"go"
	.size	.L.str.81, 3

	.type	Go_help,@object         # @Go_help
	.section	.rodata,"a",@progbits
	.align	16
Go_help:
	.asciz	"In Go code, functions, interfaces and packages are tags."
	.size	Go_help, 57

	.type	Go_suffixes,@object     # @Go_suffixes
	.data
	.align	16
Go_suffixes:
	.quad	.L.str.81
	.quad	0
	.size	Go_suffixes, 16

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"html"
	.size	.L.str.82, 5

	.type	HTML_help,@object       # @HTML_help
	.section	.rodata,"a",@progbits
	.align	16
HTML_help:
	.asciz	"In HTML input files, the tags are the 'title' and the 'h1', 'h2',\n'h3' headers.  Also, tags are 'name=' in anchors and all\noccurrences of 'id='."
	.size	HTML_help, 145

	.type	HTML_suffixes,@object   # @HTML_suffixes
	.data
	.align	16
HTML_suffixes:
	.quad	.L.str.231
	.quad	.L.str.82
	.quad	.L.str.232
	.quad	0
	.size	HTML_suffixes, 32

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"java"
	.size	.L.str.83, 5

	.type	Cjava_help,@object      # @Cjava_help
	.data
	.align	16
Cjava_help:
	.asciz	"In Java code, all the tags constructs of C and C++ code are\ntagged.  (Use --help --lang=c --lang=c++ --lang=java for full help.)"
	.size	Cjava_help, 129

	.type	Cjava_suffixes,@object  # @Cjava_suffixes
	.align	16
Cjava_suffixes:
	.quad	.L.str.83
	.quad	0
	.size	Cjava_suffixes, 16

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"lisp"
	.size	.L.str.84, 5

	.type	Lisp_help,@object       # @Lisp_help
	.section	.rodata,"a",@progbits
	.align	16
Lisp_help:
	.asciz	"In Lisp code, any function defined with 'defun', any variable\ndefined with 'defvar' or 'defconst', and in general the first\nargument of any expression that starts with '(def' in column zero\nis a tag.\nThe '--declarations' option tags \"(defvar foo)\" constructs too."
	.size	Lisp_help, 264

	.type	Lisp_suffixes,@object   # @Lisp_suffixes
	.data
	.align	16
Lisp_suffixes:
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.84
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	0
	.size	Lisp_suffixes, 72

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"lua"
	.size	.L.str.85, 4

	.type	Lua_help,@object        # @Lua_help
	.section	.rodata,"a",@progbits
	.align	16
Lua_help:
	.asciz	"In Lua scripts, all functions are tags."
	.size	Lua_help, 40

	.type	Lua_suffixes,@object    # @Lua_suffixes
	.data
	.align	16
Lua_suffixes:
	.quad	.L.str.85
	.quad	.L.str.247
	.quad	0
	.size	Lua_suffixes, 24

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"makefile"
	.size	.L.str.86, 9

	.type	Makefile_help,@object   # @Makefile_help
	.section	.rodata,"a",@progbits
	.align	16
Makefile_help:
	.asciz	"In makefiles, targets are tags; additionally, variables are tags\nunless you specify '--no-globals'."
	.size	Makefile_help, 100

	.type	Makefile_filenames,@object # @Makefile_filenames
	.data
	.align	16
Makefile_filenames:
	.quad	.L.str.248
	.quad	.L.str.86
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	0
	.size	Makefile_filenames, 48

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"objc"
	.size	.L.str.87, 5

	.type	Objc_help,@object       # @Objc_help
	.section	.rodata,"a",@progbits
	.align	16
Objc_help:
	.asciz	"In Objective C code, tags include Objective C definitions for classes,\nclass categories, methods and protocols.  Tags for variables and\nfunctions in classes are named 'CLASS::VARIABLE' and 'CLASS::FUNCTION'.\n(Use --help --lang=c --lang=objc --lang=java for full help.)"
	.size	Objc_help, 269

	.type	Objc_suffixes,@object   # @Objc_suffixes
	.data
	.align	16
Objc_suffixes:
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	0
	.size	Objc_suffixes, 24

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"pascal"
	.size	.L.str.88, 7

	.type	Pascal_help,@object     # @Pascal_help
	.section	.rodata,"a",@progbits
	.align	16
Pascal_help:
	.asciz	"In Pascal code, the tags are the functions and procedures defined\nin the file."
	.size	Pascal_help, 79

	.type	Pascal_suffixes,@object # @Pascal_suffixes
	.data
	.align	16
Pascal_suffixes:
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	0
	.size	Pascal_suffixes, 24

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"perl"
	.size	.L.str.89, 5

	.type	Perl_help,@object       # @Perl_help
	.section	.rodata,"a",@progbits
	.align	16
Perl_help:
	.asciz	"In Perl code, the tags are the packages, subroutines and variables\ndefined by the 'package', 'sub', 'my' and 'local' keywords.  Use\n'--globals' if you want to tag global variables.  Tags for\nsubroutines are named 'PACKAGE::SUB'.  The name for subroutines\ndefined in the default package is 'main::SUB'."
	.size	Perl_help, 302

	.type	Perl_suffixes,@object   # @Perl_suffixes
	.data
	.align	16
Perl_suffixes:
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	0
	.size	Perl_suffixes, 24

	.type	Perl_interpreters,@object # @Perl_interpreters
	.align	16
Perl_interpreters:
	.quad	.L.str.89
	.quad	.L.str.266
	.quad	0
	.size	Perl_interpreters, 24

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"php"
	.size	.L.str.90, 4

	.type	PHP_help,@object        # @PHP_help
	.section	.rodata,"a",@progbits
	.align	16
PHP_help:
	.asciz	"In PHP code, tags are functions, classes and defines.  Unless you use\nthe '--no-members' option, vars are tags too."
	.size	PHP_help, 116

	.type	PHP_suffixes,@object    # @PHP_suffixes
	.data
	.align	16
PHP_suffixes:
	.quad	.L.str.90
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	0
	.size	PHP_suffixes, 32

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"postscript"
	.size	.L.str.91, 11

	.type	PS_help,@object         # @PS_help
	.section	.rodata,"a",@progbits
	.align	16
PS_help:
	.asciz	"In PostScript code, the tags are the functions."
	.size	PS_help, 48

	.type	PS_suffixes,@object     # @PS_suffixes
	.data
	.align	16
PS_suffixes:
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	0
	.size	PS_suffixes, 24

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"proc"
	.size	.L.str.92, 5

	.type	plain_C_suffixes,@object # @plain_C_suffixes
	.data
	.align	16
plain_C_suffixes:
	.quad	.L.str.273
	.quad	0
	.size	plain_C_suffixes, 16

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"prolog"
	.size	.L.str.93, 7

	.type	Prolog_help,@object     # @Prolog_help
	.section	.rodata,"a",@progbits
	.align	16
Prolog_help:
	.asciz	"In Prolog code, tags are predicates and rules at the beginning of\nline."
	.size	Prolog_help, 72

	.type	Prolog_suffixes,@object # @Prolog_suffixes
	.data
	.align	16
Prolog_suffixes:
	.quad	.L.str.93
	.quad	0
	.size	Prolog_suffixes, 16

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"python"
	.size	.L.str.94, 7

	.type	Python_help,@object     # @Python_help
	.section	.rodata,"a",@progbits
	.align	16
Python_help:
	.asciz	"In Python code, 'def' or 'class' at the beginning of a line\ngenerate a tag."
	.size	Python_help, 76

	.type	Python_suffixes,@object # @Python_suffixes
	.data
	.align	16
Python_suffixes:
	.quad	.L.str.274
	.quad	0
	.size	Python_suffixes, 16

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"ruby"
	.size	.L.str.95, 5

	.type	Ruby_help,@object       # @Ruby_help
	.section	.rodata,"a",@progbits
	.align	16
Ruby_help:
	.asciz	"In Ruby code, 'def' or 'class' or 'module' at the beginning of\na line generate a tag.  Constants also generate a tag."
	.size	Ruby_help, 118

	.type	Ruby_suffixes,@object   # @Ruby_suffixes
	.data
	.align	16
Ruby_suffixes:
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.284
	.quad	0
	.size	Ruby_suffixes, 32

	.type	Ruby_filenames,@object  # @Ruby_filenames
	.align	16
Ruby_filenames:
	.quad	.L.str.285
	.quad	.L.str.286
	.quad	0
	.size	Ruby_filenames, 24

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"scheme"
	.size	.L.str.96, 7

	.type	Scheme_help,@object     # @Scheme_help
	.section	.rodata,"a",@progbits
	.align	16
Scheme_help:
	.asciz	"In Scheme code, tags include anything defined with 'def' or with a\nconstruct whose name starts with 'def'.  They also include\nvariables set with 'set!' at top level in the file."
	.size	Scheme_help, 178

	.type	Scheme_suffixes,@object # @Scheme_suffixes
	.data
	.align	16
Scheme_suffixes:
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.96
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	0
	.size	Scheme_suffixes, 80

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"tex"
	.size	.L.str.97, 4

	.type	TeX_help,@object        # @TeX_help
	.section	.rodata,"a",@progbits
	.align	16
TeX_help:
	.asciz	"In LaTeX text, the argument of any of the commands '\\chapter',\n'\\section', '\\subsection', '\\subsubsection', '\\eqno', '\\label',\n'\\ref', '\\cite', '\\bibitem', '\\part', '\\appendix', '\\entry',\n'\\index', '\\def', '\\newcommand', '\\renewcommand',\n'\\newenvironment' or '\\renewenvironment' is a tag.\n\nOther commands can be specified by setting the environment variable\n'TEXTAGS' to a colon-separated list like, for example,\n     TEXTAGS=\"mycommand:myothercommand\"."
	.size	TeX_help, 454

	.type	TeX_suffixes,@object    # @TeX_suffixes
	.data
	.align	16
TeX_suffixes:
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.97
	.quad	0
	.size	TeX_suffixes, 64

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"texinfo"
	.size	.L.str.98, 8

	.type	Texinfo_help,@object    # @Texinfo_help
	.section	.rodata,"a",@progbits
	.align	16
Texinfo_help:
	.asciz	"for texinfo files, lines starting with @node are tagged."
	.size	Texinfo_help, 57

	.type	Texinfo_suffixes,@object # @Texinfo_suffixes
	.data
	.align	16
Texinfo_suffixes:
	.quad	.L.str.308
	.quad	.L.str.98
	.quad	.L.str.309
	.quad	0
	.size	Texinfo_suffixes, 32

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"yacc"
	.size	.L.str.99, 5

	.type	Yacc_help,@object       # @Yacc_help
	.section	.rodata,"a",@progbits
	.align	16
Yacc_help:
	.asciz	"In Bison or Yacc input files, each rule defines as a tag the\nnonterminal it constructs.  The portions of the file that contain\nC code are parsed as C code (use --help --lang=c --lang=yacc\nfor full help)."
	.size	Yacc_help, 204

	.type	Yacc_suffixes,@object   # @Yacc_suffixes
	.data
	.align	16
Yacc_suffixes:
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.314
	.quad	0
	.size	Yacc_suffixes, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"auto"
	.size	.L.str.100, 5

	.type	auto_help,@object       # @auto_help
	.section	.rodata,"a",@progbits
	.align	16
auto_help:
	.asciz	"'auto' is not a real language, it indicates to use\na default language for files base on file name suffix and file contents."
	.size	auto_help, 124

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"none"
	.size	.L.str.101, 5

	.type	none_help,@object       # @none_help
	.section	.rodata,"a",@progbits
	.align	16
none_help:
	.asciz	"'none' is not a real language, it indicates to only do\nregexp processing on files."
	.size	none_help, 83

	.type	dbp,@object             # @dbp
	.local	dbp
	.comm	dbp,8,8
	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"function"
	.size	.L.str.102, 9

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"/f"
	.size	.L.str.103, 3

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"procedure"
	.size	.L.str.104, 10

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"/p"
	.size	.L.str.105, 3

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"package"
	.size	.L.str.106, 8

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"/s"
	.size	.L.str.107, 3

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"protected"
	.size	.L.str.108, 10

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"/t"
	.size	.L.str.109, 3

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"use"
	.size	.L.str.110, 4

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"task"
	.size	.L.str.111, 5

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"/k"
	.size	.L.str.112, 3

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"type"
	.size	.L.str.113, 5

	.type	charno,@object          # @charno
	.local	charno
	.comm	charno,8,8
	.type	linecharno,@object      # @linecharno
	.local	linecharno
	.comm	linecharno,8,8
	.type	infilename,@object      # @infilename
	.local	infilename
	.comm	infilename,8,8
	.type	lineno,@object          # @lineno
	.local	lineno
	.comm	lineno,4,4
	.type	readline.discard_until_line_directive,@object # @readline.discard_until_line_directive
	.local	readline.discard_until_line_directive
	.comm	readline.discard_until_line_directive,1,1
	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"#line "
	.size	.L.str.114, 7

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"#line %u \"%n"
	.size	.L.str.115, 13

	.type	curfdp,@object          # @curfdp
	.local	curfdp
	.comm	curfdp,8,8
	.type	p_head,@object          # @p_head
	.local	p_head
	.comm	p_head,8,8
	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"regexp stack overflow while matching \"%s\""
	.size	.L.str.116, 42

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"regexp matches the empty string: \"%s\""
	.size	.L.str.117, 38

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"../"
	.size	.L.str.118, 4

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"pattern error in \"%s\""
	.size	.L.str.119, 22

	.type	last_node,@object       # @last_node
	.local	last_node
	.comm	last_node,8,8
	.type	notinname.table,@object # @notinname.table
	.section	.rodata,"a",@progbits
	.align	16
notinname.table:
	.asciz	"\001\000\000\000\000\000\000\000\000\001\001\000\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\001\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	notinname.table, 256

	.type	begtoken.table,@object  # @begtoken.table
	.align	16
begtoken.table:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\000\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	begtoken.table, 256

	.type	intoken.table,@object   # @intoken.table
	.align	16
intoken.table:
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\000\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	intoken.table, 256

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"body"
	.size	.L.str.120, 5

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"/b"
	.size	.L.str.121, 3

	.type	endtoken.table,@object  # @endtoken.table
	.section	.rodata,"a",@progbits
	.align	16
endtoken.table:
	.asciz	"\001\000\000\000\000\000\000\000\000\001\001\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\000\000\000\001\001\001\001\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	endtoken.table, 256

	.type	.L.str.122,@object      # @.str.122
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.122:
	.asciz	"ads"
	.size	.L.str.122, 4

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"adb"
	.size	.L.str.123, 4

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"a"
	.size	.L.str.124, 2

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"def"
	.size	.L.str.125, 4

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"inc"
	.size	.L.str.126, 4

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"ins"
	.size	.L.str.127, 4

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"s"
	.size	.L.str.128, 2

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"sa"
	.size	.L.str.129, 3

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"S"
	.size	.L.str.130, 2

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"src"
	.size	.L.str.131, 4

	.type	lbs,@object             # @lbs
	.local	lbs
	.comm	lbs,64,16
	.type	cstack,@object          # @cstack
	.local	cstack
	.comm	cstack,24,8
	.type	fvdef,@object           # @fvdef
	.local	fvdef
	.comm	fvdef,4,4
	.type	fvextern,@object        # @fvextern
	.local	fvextern
	.comm	fvextern,1,1
	.type	typdef,@object          # @typdef
	.local	typdef
	.comm	typdef,4,4
	.type	structdef,@object       # @structdef
	.local	structdef
	.comm	structdef,4,4
	.type	definedef,@object       # @definedef
	.local	definedef
	.comm	definedef,4,4
	.type	objdef,@object          # @objdef
	.local	objdef
	.comm	objdef,4,4
	.type	token,@object           # @token
	.local	token
	.comm	token,32,8
	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"."
	.size	.L.str.132, 2

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"::"
	.size	.L.str.133, 3

	.type	inattribute,@object     # @inattribute
	.local	inattribute
	.comm	inattribute,1,1
	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"#if"
	.size	.L.str.134, 4

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"#el"
	.size	.L.str.135, 4

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"%s%.*s"
	.size	.L.str.136, 7

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"%.*s"
	.size	.L.str.137, 5

	.type	objtag,@object          # @objtag
	.data
	.align	8
objtag:
	.quad	.L.str.177
	.size	objtag, 8

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"%s(%.*s)"
	.size	.L.str.138, 9

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	":"
	.size	.L.str.139, 2

	.type	consider_token.structtype,@object # @consider_token.structtype
	.local	consider_token.structtype
	.comm	consider_token.structtype,4,4
	.type	consider_token.structbracelev,@object # @consider_token.structbracelev
	.local	consider_token.structbracelev
	.comm	consider_token.structbracelev,4,4
	.type	consider_token.toktype,@object # @consider_token.toktype
	.local	consider_token.toktype
	.comm	consider_token.toktype,4,4
	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"internal error: definedef value."
	.size	.L.str.140, 33

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"__asm__"
	.size	.L.str.141, 8

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"::operator"
	.size	.L.str.142, 11

	.type	in_word_set.wordlist,@object # @in_word_set.wordlist
	.data
	.align	16
in_word_set.wordlist:
	.quad	.L.str.4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.143
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	.L.str.144
	.long	0                       # 0x0
	.long	6                       # 0x6
	.quad	.L.str.145
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	.L.str.146
	.long	0                       # 0x0
	.long	11                      # 0xb
	.quad	.L.str.147
	.long	0                       # 0x0
	.long	14                      # 0xe
	.quad	.L.str.148
	.long	4                       # 0x4
	.long	5                       # 0x5
	.quad	.L.str.149
	.long	0                       # 0x0
	.long	10                      # 0xa
	.quad	.L.str.150
	.long	1                       # 0x1
	.long	8                       # 0x8
	.quad	.L.str.151
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.152
	.long	4                       # 0x4
	.long	7                       # 0x7
	.quad	.L.str.153
	.long	1                       # 0x1
	.long	5                       # 0x5
	.quad	.L.str.154
	.long	0                       # 0x0
	.long	15                      # 0xf
	.quad	.L.str.155
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	.L.str.156
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	.L.str.157
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.158
	.long	4                       # 0x4
	.long	11                      # 0xb
	.quad	.L.str.159
	.long	0                       # 0x0
	.long	12                      # 0xc
	.quad	.L.str.160
	.long	4                       # 0x4
	.long	7                       # 0x7
	.quad	.L.str.161
	.long	0                       # 0x0
	.long	11                      # 0xb
	.quad	.L.str.162
	.long	3                       # 0x3
	.long	11                      # 0xb
	.quad	.L.str.163
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	.L.str.164
	.long	0                       # 0x0
	.long	13                      # 0xd
	.quad	.L.str.165
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	.L.str.166
	.long	1                       # 0x1
	.long	11                      # 0xb
	.quad	.L.str.167
	.long	0                       # 0x0
	.long	9                       # 0x9
	.quad	.L.str.168
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	.L.str.169
	.long	0                       # 0x0
	.long	14                      # 0xe
	.quad	.L.str.106
	.long	4                       # 0x4
	.long	5                       # 0x5
	.quad	.L.str.170
	.long	0                       # 0x0
	.long	6                       # 0x6
	.quad	.L.str.171
	.long	0                       # 0x0
	.long	4                       # 0x4
	.quad	.L.str.172
	.long	0                       # 0x0
	.long	4                       # 0x4
	.quad	.L.str.173
	.long	0                       # 0x0
	.long	4                       # 0x4
	.quad	.L.str.174
	.long	0                       # 0x0
	.long	4                       # 0x4
	.size	in_word_set.wordlist, 560

	.type	.L.str.143,@object      # @.str.143
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.143:
	.asciz	"if"
	.size	.L.str.143, 3

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"GTY"
	.size	.L.str.144, 4

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"@end"
	.size	.L.str.145, 5

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"union"
	.size	.L.str.146, 6

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"define"
	.size	.L.str.147, 7

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"import"
	.size	.L.str.148, 7

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"template"
	.size	.L.str.149, 9

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"operator"
	.size	.L.str.150, 9

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"@interface"
	.size	.L.str.151, 11

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"implements"
	.size	.L.str.152, 11

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"friend"
	.size	.L.str.153, 7

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"typedef"
	.size	.L.str.154, 8

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"return"
	.size	.L.str.155, 7

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"@implementation"
	.size	.L.str.156, 16

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"@protocol"
	.size	.L.str.157, 10

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"interface"
	.size	.L.str.158, 10

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"extern"
	.size	.L.str.159, 7

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"extends"
	.size	.L.str.160, 8

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"struct"
	.size	.L.str.161, 7

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"domain"
	.size	.L.str.162, 7

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"switch"
	.size	.L.str.163, 7

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"enum"
	.size	.L.str.164, 5

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"for"
	.size	.L.str.165, 4

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"namespace"
	.size	.L.str.166, 10

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"class"
	.size	.L.str.167, 6

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"while"
	.size	.L.str.168, 6

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"undef"
	.size	.L.str.169, 6

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"__attribute__"
	.size	.L.str.170, 14

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"SYSCALL"
	.size	.L.str.171, 8

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"ENTRY"
	.size	.L.str.172, 6

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"PSEUDO"
	.size	.L.str.173, 7

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"DEFUN"
	.size	.L.str.174, 6

	.type	hash.asso_values,@object # @hash.asso_values
	.section	.rodata,"a",@progbits
	.align	16
hash.asso_values:
	.ascii	"#####################################################################\003\032#######\033####\030\000####\000#####\001#\020#\006\027\000\000#\026\000##\005\000\000\017\001#\006#\b\023#\020\004\005######################################################################################################################################"
	.size	hash.asso_values, 256

	.type	.L.str.175,@object      # @.str.175
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.175:
	.asciz	"%s%s"
	.size	.L.str.175, 5

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"virtual memory exhausted"
	.size	.L.str.176, 25

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"<uninited>"
	.size	.L.str.177, 11

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"h"
	.size	.L.str.178, 2

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"C"
	.size	.L.str.179, 2

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"cc"
	.size	.L.str.180, 3

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"cpp"
	.size	.L.str.181, 4

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"cxx"
	.size	.L.str.182, 4

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"H"
	.size	.L.str.183, 2

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"h++"
	.size	.L.str.184, 4

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"hh"
	.size	.L.str.185, 3

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"hpp"
	.size	.L.str.186, 4

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"hxx"
	.size	.L.str.187, 4

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"M"
	.size	.L.str.188, 2

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"pdb"
	.size	.L.str.189, 4

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"cs"
	.size	.L.str.190, 3

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"hs"
	.size	.L.str.191, 3

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"COB"
	.size	.L.str.192, 4

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"cob"
	.size	.L.str.193, 4

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"-define"
	.size	.L.str.194, 8

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"-record"
	.size	.L.str.195, 8

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"erl"
	.size	.L.str.196, 4

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"hrl"
	.size	.L.str.197, 4

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"constant"
	.size	.L.str.198, 9

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"code"
	.size	.L.str.199, 5

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"create"
	.size	.L.str.200, 7

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"defer"
	.size	.L.str.201, 6

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"value"
	.size	.L.str.202, 6

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"variable"
	.size	.L.str.203, 9

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"buffer:"
	.size	.L.str.204, 8

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"field"
	.size	.L.str.205, 6

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"recursive"
	.size	.L.str.206, 10

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"pure"
	.size	.L.str.207, 5

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"elemental"
	.size	.L.str.208, 10

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"integer"
	.size	.L.str.209, 8

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"real"
	.size	.L.str.210, 5

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"logical"
	.size	.L.str.211, 8

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"complex"
	.size	.L.str.212, 8

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"character"
	.size	.L.str.213, 10

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"double"
	.size	.L.str.214, 7

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"precision"
	.size	.L.str.215, 10

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"subroutine"
	.size	.L.str.216, 11

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"entry"
	.size	.L.str.217, 6

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"blockdata"
	.size	.L.str.218, 10

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"block data"
	.size	.L.str.219, 11

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"(*)"
	.size	.L.str.220, 4

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"F"
	.size	.L.str.221, 2

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"f"
	.size	.L.str.222, 2

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"f90"
	.size	.L.str.223, 4

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"func"
	.size	.L.str.224, 5

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"name="
	.size	.L.str.225, 6

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"id="
	.size	.L.str.226, 4

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"<title>"
	.size	.L.str.227, 8

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"<h1>"
	.size	.L.str.228, 5

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"<h2>"
	.size	.L.str.229, 5

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"<h3>"
	.size	.L.str.230, 5

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"htm"
	.size	.L.str.231, 4

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"shtml"
	.size	.L.str.232, 6

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"defvar"
	.size	.L.str.233, 7

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"cl-"
	.size	.L.str.234, 4

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"CL-"
	.size	.L.str.235, 4

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"DEF"
	.size	.L.str.236, 4

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"quote"
	.size	.L.str.237, 6

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"QUOTE"
	.size	.L.str.238, 6

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"cl"
	.size	.L.str.239, 3

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"clisp"
	.size	.L.str.240, 6

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"el"
	.size	.L.str.241, 3

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"l"
	.size	.L.str.242, 2

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"LSP"
	.size	.L.str.243, 4

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"lsp"
	.size	.L.str.244, 4

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"ml"
	.size	.L.str.245, 3

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"local"
	.size	.L.str.246, 6

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"LUA"
	.size	.L.str.247, 4

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"Makefile"
	.size	.L.str.248, 9

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"GNUMakefile"
	.size	.L.str.249, 12

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"Makefile.in"
	.size	.L.str.250, 12

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"Makefile.am"
	.size	.L.str.251, 12

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"lm"
	.size	.L.str.252, 3

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"m"
	.size	.L.str.253, 2

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"forward"
	.size	.L.str.254, 8

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"rocedure"
	.size	.L.str.255, 9

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"unction"
	.size	.L.str.256, 8

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"p"
	.size	.L.str.257, 2

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"pas"
	.size	.L.str.258, 4

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"main"
	.size	.L.str.259, 5

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"sub"
	.size	.L.str.260, 4

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"use constant"
	.size	.L.str.261, 13

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"use constant::defer"
	.size	.L.str.262, 20

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"my"
	.size	.L.str.263, 3

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"pl"
	.size	.L.str.264, 3

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"pm"
	.size	.L.str.265, 3

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"@PERL@"
	.size	.L.str.266, 7

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"var"
	.size	.L.str.267, 4

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"php3"
	.size	.L.str.268, 5

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"php4"
	.size	.L.str.269, 5

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"defineps"
	.size	.L.str.270, 9

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"ps"
	.size	.L.str.271, 3

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"psw"
	.size	.L.str.272, 4

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"pc"
	.size	.L.str.273, 3

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"py"
	.size	.L.str.274, 3

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"module"
	.size	.L.str.275, 7

	.type	Ruby_functions.self_name,@object # @Ruby_functions.self_name
	.section	.rodata,"a",@progbits
Ruby_functions.self_name:
	.asciz	"self."
	.size	Ruby_functions.self_name, 6

	.type	.L.str.276,@object      # @.str.276
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.276:
	.asciz	"<<"
	.size	.L.str.276, 3

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"attr_reader"
	.size	.L.str.277, 12

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"attr_writer"
	.size	.L.str.278, 12

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"attr_accessor"
	.size	.L.str.279, 14

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"alias_method"
	.size	.L.str.280, 13

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"="
	.size	.L.str.281, 2

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"rb"
	.size	.L.str.282, 3

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"ru"
	.size	.L.str.283, 3

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"rbw"
	.size	.L.str.284, 4

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"Rakefile"
	.size	.L.str.285, 9

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"Thorfile"
	.size	.L.str.286, 9

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"(def"
	.size	.L.str.287, 5

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"(DEF"
	.size	.L.str.288, 5

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"(SET!"
	.size	.L.str.289, 6

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"(set!"
	.size	.L.str.290, 6

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"oak"
	.size	.L.str.291, 4

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"sch"
	.size	.L.str.292, 4

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"SCM"
	.size	.L.str.293, 4

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"scm"
	.size	.L.str.294, 4

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"SM"
	.size	.L.str.295, 3

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"sm"
	.size	.L.str.296, 3

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"ss"
	.size	.L.str.297, 3

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"t"
	.size	.L.str.298, 2

	.type	TEX_toktab,@object      # @TEX_toktab
	.local	TEX_toktab
	.comm	TEX_toktab,8,8
	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"TEXTAGS"
	.size	.L.str.299, 8

	.type	TEX_defenv,@object      # @TEX_defenv
	.data
	.align	8
TEX_defenv:
	.quad	.L.str.300
	.size	TEX_defenv, 8

	.type	.L.str.300,@object      # @.str.300
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.300:
	.asciz	":chapter:section:subsection:subsubsection:eqno:label:ref:cite:bibitem:part:appendix:entry:index:def:newcommand:renewcommand:newenvironment:renewenvironment"
	.size	.L.str.300, 156

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"bib"
	.size	.L.str.301, 4

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"clo"
	.size	.L.str.302, 4

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"cls"
	.size	.L.str.303, 4

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"ltx"
	.size	.L.str.304, 4

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"sty"
	.size	.L.str.305, 4

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"TeX"
	.size	.L.str.306, 4

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"@node"
	.size	.L.str.307, 6

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"texi"
	.size	.L.str.308, 5

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"txi"
	.size	.L.str.309, 4

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"y"
	.size	.L.str.310, 2

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"y++"
	.size	.L.str.311, 4

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"ym"
	.size	.L.str.312, 3

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"yxx"
	.size	.L.str.313, 4

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"yy"
	.size	.L.str.314, 3

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"empty language name"
	.size	.L.str.315, 20

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"unknown language \"%s\""
	.size	.L.str.316, 22

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"skipping inclusion of %s in self."
	.size	.L.str.317, 34

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"r"
	.size	.L.str.318, 2

	.type	compressors,@object     # @compressors
	.data
	.align	16
compressors:
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.323
	.quad	.L.str.322
	.quad	.L.str.324
	.quad	.L.str.322
	.quad	.L.str.325
	.quad	.L.str.322
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.328
	.quad	.L.str.329
	.zero	16
	.size	compressors, 112

	.type	.L.str.319,@object      # @.str.319
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.319:
	.asciz	" '"
	.size	.L.str.319, 3

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"' > "
	.size	.L.str.320, 5

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"z"
	.size	.L.str.321, 2

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"gzip -d -c"
	.size	.L.str.322, 11

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"Z"
	.size	.L.str.323, 2

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"gz"
	.size	.L.str.324, 3

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"GZ"
	.size	.L.str.325, 3

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"bz2"
	.size	.L.str.326, 4

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"bzip2 -d -c"
	.size	.L.str.327, 12

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"xz"
	.size	.L.str.328, 3

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"xz -d -c"
	.size	.L.str.329, 9

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"TMPDIR"
	.size	.L.str.330, 7

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"/tmp"
	.size	.L.str.331, 5

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"etXXXXXX"
	.size	.L.str.332, 9

	.type	process_file.emptyfdesc,@object # @process_file.emptyfdesc
	.section	.rodata,"a",@progbits
	.align	8
process_file.emptyfdesc:
	.zero	64
	.size	process_file.emptyfdesc, 64

	.type	put_entries.fdp,@object # @put_entries.fdp
	.local	put_entries.fdp
	.comm	put_entries.fdp,8,8
	.type	.L.str.333,@object      # @.str.333
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.333:
	.asciz	"\f\n%s,%d\n"
	.size	.L.str.333, 9

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"%d,"
	.size	.L.str.334, 4

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"%ld"
	.size	.L.str.335, 4

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"\n"
	.size	.L.str.336, 2

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"unterminated language name in regex: %s"
	.size	.L.str.337, 40

	.type	add_regex.zeropattern,@object # @add_regex.zeropattern
	.local	add_regex.zeropattern
	.comm	add_regex.zeropattern,64,8
	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"null regexp"
	.size	.L.str.338, 12

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"%s: unterminated regexp"
	.size	.L.str.339, 24

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"null name for regexp \"%s\""
	.size	.L.str.340, 26

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"forcing explicit tag name but no name, ignoring"
	.size	.L.str.341, 48

	.type	need_filebuf,@object    # @need_filebuf
	.local	need_filebuf
	.comm	need_filebuf,1,1
	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"invalid regexp modifier '%c', ignoring"
	.size	.L.str.342, 39

	.type	add_regex.lc_trans,@object # @add_regex.lc_trans
	.local	add_regex.lc_trans
	.comm	add_regex.lc_trans,256,16
	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"^"
	.size	.L.str.343, 2

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"%s while compiling pattern"
	.size	.L.str.344, 27

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"%s: "
	.size	.L.str.345, 5

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"\tTry '%s --help' for a complete list of options.\n"
	.size	.L.str.346, 50

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"getcwd"
	.size	.L.str.347, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
