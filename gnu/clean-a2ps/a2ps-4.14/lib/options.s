	.text
	.file	"options.bc"
	.globl	a2ps_get_bool
	.align	16, 0x90
	.type	a2ps_get_bool,@function
a2ps_get_bool:                          # @a2ps_get_bool
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
	movabsq	$bool_args, %rdx
	movabsq	$bool_types, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movb	bool_types(,%rcx), %r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	a2ps_get_bool, .Lfunc_end0-a2ps_get_bool
	.cfi_endproc

	.globl	a2ps_handle_options
	.align	16, 0x90
	.type	a2ps_handle_options,@function
a2ps_handle_options:                    # @a2ps_handle_options
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, optind
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str, %rdx
	movabsq	$long_options, %rcx
	leaq	-48(%rbp), %r8
	movl	$0, -48(%rbp)
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	getopt_long
	movl	%eax, -52(%rbp)
	cmpl	$63, -52(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movq	stderr, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	program_invocation_name, %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	exit
.LBB1_3:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rsp, %rax
	addq	$-32, %rax
	movq	%rax, %rsp
	movq	%rax, -64(%rbp)
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, (%rax)
	movq	optarg, %rax
	movq	-64(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB1_6:                                # %if.end.7
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$-1, -52(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.9
	jmp	.LBB1_9
.LBB1_8:                                # %if.end.10
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_9:                                # %while.end
	movl	optind, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
.LBB1_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpl	$-1, (%rax)
	je	.LBB1_278
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, optarg
	cmpq	$0, handle_option_hook
	je	.LBB1_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	handle_option_hook, %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edi
	movq	optarg, %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB1_14
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_277
.LBB1_14:                               # %if.end.19
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-49, %ecx
	movl	%ecx, %eax
	subl	$117, %ecx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	ja	.LBB1_276
# BB#279:                               # %if.end.19
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_15:                               # %sw.bb
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$1, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_16:                               # %sw.bb.21
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$2, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_17:                               # %sw.bb.28
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$3, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_18:                               # %sw.bb.35
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$2, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_19:                               # %sw.bb.42
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$5, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_20:                               # %sw.bb.49
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$3, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_21:                               # %sw.bb.56
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$7, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_22:                               # %sw.bb.63
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$4, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_23:                               # %sw.bb.70
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$3, 132(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$80, 360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 140(%rax)
	jmp	.LBB1_276
.LBB1_24:                               # %sw.bb.77
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	optarg, %rsi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	user_option_get
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	a2ps_handle_string_options
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB1_276
.LBB1_25:                               # %sw.bb.80
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	callq	a2ps_page_range_set_string
	jmp	.LBB1_276
.LBB1_26:                               # %sw.bb.81
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.2, %rdi
	movq	optarg, %rsi
	callq	file_align_argmatch
	movq	-8(%rbp), %rsi
	movl	%eax, 316(%rsi)
	jmp	.LBB1_276
.LBB1_27:                               # %sw.bb.83
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_28
.LBB1_28:                               # %do.body
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -72(%rbp)
# BB#29:                                # %do.body.84
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 432(%rax)
	je	.LBB1_31
# BB#30:                                # %if.then.86
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	432(%rax), %rdi
	callq	free
.LBB1_31:                               # %if.end.88
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_32
.LBB1_32:                               # %do.end
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB1_35
# BB#33:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_35
# BB#34:                                # %cond.true
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-72(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_36
.LBB1_35:                               # %cond.false
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB1_36
.LBB1_36:                               # %cond.end
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 432(%rcx)
# BB#37:                                # %do.end.94
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_38:                               # %sw.bb.95
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_39
.LBB1_39:                               # %do.body.96
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 432(%rax)
	je	.LBB1_41
# BB#40:                                # %if.then.99
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	432(%rax), %rdi
	callq	free
.LBB1_41:                               # %if.end.101
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_42
.LBB1_42:                               # %do.end.102
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_43
.LBB1_43:                               # %do.body.103
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB1_45
# BB#44:                                # %if.then.105
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	464(%rax), %rdi
	callq	free
.LBB1_45:                               # %if.end.107
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_46
.LBB1_46:                               # %do.end.108
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_47
.LBB1_47:                               # %do.body.109
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB1_49
# BB#48:                                # %if.then.111
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdi
	callq	free
.LBB1_49:                               # %if.end.113
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_50
.LBB1_50:                               # %do.end.114
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_51
.LBB1_51:                               # %do.body.115
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB1_53
# BB#52:                                # %if.then.117
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdi
	callq	free
.LBB1_53:                               # %if.end.119
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_54
.LBB1_54:                               # %do.end.120
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_55
.LBB1_55:                               # %do.body.121
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB1_57
# BB#56:                                # %if.then.123
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	448(%rax), %rdi
	callq	free
.LBB1_57:                               # %if.end.125
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_58
.LBB1_58:                               # %do.end.126
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_59
.LBB1_59:                               # %do.body.127
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB1_61
# BB#60:                                # %if.then.129
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	free
.LBB1_61:                               # %if.end.131
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_62
.LBB1_62:                               # %do.end.132
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_63
.LBB1_63:                               # %do.body.133
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB1_65
# BB#64:                                # %if.then.135
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	free
.LBB1_65:                               # %if.end.137
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_66
.LBB1_66:                               # %do.end.138
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_67
.LBB1_67:                               # %do.body.139
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB1_69
# BB#68:                                # %if.then.141
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdi
	callq	free
.LBB1_69:                               # %if.end.143
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_70
.LBB1_70:                               # %do.end.144
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	$0, 432(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 464(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 472(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 480(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 448(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 440(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 488(%rax)
	jmp	.LBB1_276
.LBB1_71:                               # %sw.bb.153
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movb	$0, 296(%rax)
	jmp	.LBB1_276
.LBB1_72:                               # %sw.bb.154
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.3, %rdi
	movq	optarg, %rsi
	callq	a2ps_get_bool
	movl	$1, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	cmpl	$0, %ecx
	setne	%al
	movq	-8(%rbp), %rsi
	andb	$1, %al
	movb	%al, 296(%rsi)
	jmp	.LBB1_276
.LBB1_73:                               # %sw.bb.160
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$5, 300(%rax)
	jmp	.LBB1_276
.LBB1_74:                               # %sw.bb.161
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, optarg
	je	.LBB1_76
# BB#75:                                # %cond.true.163
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.4, %rdi
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	get_integer_in_range
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB1_77
.LBB1_76:                               # %cond.false.165
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB1_77
.LBB1_77:                               # %cond.end.166
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 300(%rcx)
	jmp	.LBB1_276
.LBB1_78:                               # %sw.bb.169
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rcx
	movq	272(%rcx), %rdi
	callq	a2ps_printers_flag_output_set
	jmp	.LBB1_276
.LBB1_79:                               # %sw.bb.170
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	optarg, %rax
	movq	optarg, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	strcspn
	movq	-264(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_81
# BB#80:                                # %if.then.173
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB1_81:                               # %if.end.174
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_83
# BB#82:                                # %if.then.176
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	movq	-80(%rbp), %rdx
	callq	setpagedevice
	jmp	.LBB1_84
.LBB1_83:                               # %if.else.177
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	callq	delpagedevice
.LBB1_84:                               # %if.end.178
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_85:                               # %sw.bb.179
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$64, %esi
	movq	optarg, %rdi
	callq	strchr
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB1_87
# BB#86:                                # %if.then.182
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB1_88
.LBB1_87:                               # %if.else.184
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -88(%rbp)
.LBB1_88:                               # %if.end.185
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.6, %rdi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.7, %rdx
	movl	$2, %ecx
	movq	-88(%rbp), %rsi
	movss	%xmm0, -268(%rbp)       # 4-byte Spill
	movss	-268(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	get_length
	movq	-8(%rbp), %rdx
	movss	%xmm0, 364(%rdx)
	movq	-8(%rbp), %rdx
	movl	$0, 360(%rdx)
	movq	-8(%rbp), %rdx
	movl	$0, 356(%rdx)
	jmp	.LBB1_276
.LBB1_89:                               # %sw.bb.189
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$1, 308(%rax)
	jmp	.LBB1_276
.LBB1_90:                               # %sw.bb.190
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.8, %rdi
	movq	optarg, %rsi
	callq	a2ps_get_bool
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 308(%rsi)
	jmp	.LBB1_276
.LBB1_91:                               # %sw.bb.194
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$1, 320(%rax)
	jmp	.LBB1_276
.LBB1_92:                               # %sw.bb.195
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	optarg, %rsi
	callq	a2ps_get_bool
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 320(%rsi)
	jmp	.LBB1_276
.LBB1_93:                               # %sw.bb.199
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$1, 176(%rax)
	jmp	.LBB1_276
.LBB1_94:                               # %sw.bb.200
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$0, 176(%rax)
	jmp	.LBB1_276
.LBB1_95:                               # %sw.bb.202
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.10, %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 360(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 356(%rsi)
	jmp	.LBB1_276
.LBB1_96:                               # %sw.bb.206
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.11, %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 356(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 360(%rsi)
	jmp	.LBB1_276
.LBB1_97:                               # %sw.bb.210
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$66, 356(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 360(%rax)
	jmp	.LBB1_276
.LBB1_98:                               # %sw.bb.213
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_99
.LBB1_99:                               # %do.body.214
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -96(%rbp)
# BB#100:                               # %do.body.216
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB1_102
# BB#101:                               # %if.then.218
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	free
.LBB1_102:                              # %if.end.220
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_103
.LBB1_103:                              # %do.end.221
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_106
# BB#104:                               # %lor.lhs.false.224
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-96(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_106
# BB#105:                               # %cond.true.228
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-96(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB1_107
.LBB1_106:                              # %cond.false.230
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB1_107
.LBB1_107:                              # %cond.end.231
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 344(%rcx)
# BB#108:                               # %do.end.234
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_109:                              # %sw.bb.235
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.12, %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 148(%rsi)
	jmp	.LBB1_276
.LBB1_110:                              # %sw.bb.237
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	optarg, %rsi
	callq	a2ps_printers_flag_output_set
	jmp	.LBB1_276
.LBB1_111:                              # %sw.bb.239
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	optarg, %rsi
	callq	a2ps_printers_flag_output_set
	jmp	.LBB1_276
.LBB1_112:                              # %sw.bb.241
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.13, %rdi
	callq	getenv
	cmpq	$0, %rax
	jne	.LBB1_114
# BB#113:                               # %if.then.244
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$0, msg_verbosity
.LBB1_114:                              # %if.end.245
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_115:                              # %sw.bb.246
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	jmp	.LBB1_276
.LBB1_116:                              # %sw.bb.248
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	jmp	.LBB1_276
.LBB1_117:                              # %sw.bb.250
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg(%rip), %rsi
	movq	argmatch_die(%rip), %rax
	subq	$16, %rsp
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movl	$.L.str.14, %edx
	movl	%edx, %edi
	movl	$duplex_args, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$duplex_types, %r8d
	movl	%r8d, %ecx
	movl	$4, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	callq	__xargmatch_internal
	addq	$16, %rsp
	movslq	%eax, %rcx
	movl	duplex_types(,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 128(%rcx)
	movq	-8(%rbp), %rcx
	movl	128(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB1_118
	jmp	.LBB1_280
.LBB1_280:                              # %sw.bb.250
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB1_119
	jmp	.LBB1_281
.LBB1_281:                              # %sw.bb.250
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB1_120
	jmp	.LBB1_121
.LBB1_118:                              # %sw.bb.253
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	callq	delpagedevice
	jmp	.LBB1_121
.LBB1_119:                              # %sw.bb.254
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movq	-8(%rbp), %rdi
	callq	setpagedevice
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movq	-8(%rbp), %rdi
	callq	setpagedevice
	jmp	.LBB1_121
.LBB1_120:                              # %sw.bb.255
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movq	-8(%rbp), %rdi
	callq	setpagedevice
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.16, %rdx
	movq	-8(%rbp), %rdi
	callq	setpagedevice
.LBB1_121:                              # %sw.epilog
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_122:                              # %sw.bb.256
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$58, %esi
	movq	optarg, %rdi
	callq	strchr
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB1_124
# BB#123:                               # %lor.lhs.false.261
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB1_125
.LBB1_124:                              # %if.then.265
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	callq	delstatusdict
	jmp	.LBB1_129
.LBB1_125:                              # %if.else.266
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-104(%rbp), %rax
	movb	$0, (%rax)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB1_127
# BB#126:                               # %if.then.271
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdx
	callq	setstatusdict
	jmp	.LBB1_128
.LBB1_127:                              # %if.else.273
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	movq	-104(%rbp), %rdx
	callq	setstatusdict
.LBB1_128:                              # %if.end.274
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_129
.LBB1_129:                              # %if.end.275
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_130:                              # %sw.bb.276
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_131
.LBB1_131:                              # %do.body.277
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -112(%rbp)
# BB#132:                               # %do.body.279
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 424(%rax)
	je	.LBB1_134
# BB#133:                               # %if.then.281
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	424(%rax), %rdi
	callq	free
.LBB1_134:                              # %if.end.283
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_135
.LBB1_135:                              # %do.end.284
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB1_138
# BB#136:                               # %lor.lhs.false.287
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_138
# BB#137:                               # %cond.true.291
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-112(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_139
.LBB1_138:                              # %cond.false.293
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB1_139
.LBB1_139:                              # %cond.end.294
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 424(%rcx)
# BB#140:                               # %do.end.297
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_141:                              # %sw.bb.298
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.19, %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 352(%rsi)
	jmp	.LBB1_276
.LBB1_142:                              # %sw.bb.300
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_143
.LBB1_143:                              # %do.body.301
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -120(%rbp)
# BB#144:                               # %do.body.303
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 488(%rax)
	je	.LBB1_146
# BB#145:                               # %if.then.306
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	488(%rax), %rdi
	callq	free
.LBB1_146:                              # %if.end.308
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_147
.LBB1_147:                              # %do.end.309
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB1_150
# BB#148:                               # %lor.lhs.false.312
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_150
# BB#149:                               # %cond.true.316
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-120(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB1_151
.LBB1_150:                              # %cond.false.318
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB1_151
.LBB1_151:                              # %cond.end.319
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 488(%rcx)
# BB#152:                               # %do.end.322
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_153:                              # %sw.bb.323
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.13, %rdi
	callq	getenv
	cmpq	$0, %rax
	jne	.LBB1_159
# BB#154:                               # %if.then.326
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, optarg
	je	.LBB1_157
# BB#155:                               # %lor.lhs.false.329
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_157
# BB#156:                               # %if.then.333
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.20, %rdi
	movq	optarg, %rsi
	callq	msg_verbosity_argmatch
	movl	%eax, msg_verbosity
	jmp	.LBB1_158
.LBB1_157:                              # %if.else.335
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	$3, msg_verbosity
.LBB1_158:                              # %if.end.336
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_159
.LBB1_159:                              # %if.end.337
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_160:                              # %sw.bb.338
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_161
.LBB1_161:                              # %do.body.339
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB1_163
# BB#162:                               # %if.then.341
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	callq	free
.LBB1_163:                              # %if.end.343
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_164
.LBB1_164:                              # %do.end.344
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rdi
	callq	xstrdup
	movq	-8(%rbp), %rdi
	movq	%rax, 376(%rdi)
	jmp	.LBB1_276
.LBB1_165:                              # %sw.bb.347
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.21, %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 132(%rsi)
	jmp	.LBB1_276
.LBB1_166:                              # %sw.bb.350
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.22, %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %r8d
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 136(%rsi)
	jmp	.LBB1_276
.LBB1_167:                              # %sw.bb.353
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_168
.LBB1_168:                              # %do.body.354
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -128(%rbp)
# BB#169:                               # %do.body.356
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB1_171
# BB#170:                               # %if.then.358
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	free
.LBB1_171:                              # %if.end.360
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_172
.LBB1_172:                              # %do.end.361
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB1_175
# BB#173:                               # %lor.lhs.false.364
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-128(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_175
# BB#174:                               # %cond.true.368
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-128(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB1_176
.LBB1_175:                              # %cond.false.370
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB1_176
.LBB1_176:                              # %cond.end.371
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 328(%rcx)
# BB#177:                               # %do.end.374
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_178:                              # %sw.bb.375
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.23, %rdi
	movabsq	$non_printable_args, %rdx
	movabsq	$non_printable_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	optarg, %rsi
	movq	argmatch_die, %r10
	subq	$16, %rsp
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	addq	$16, %rsp
	movslq	%eax, %rcx
	movl	non_printable_types(,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 304(%rcx)
	jmp	.LBB1_276
.LBB1_179:                              # %sw.bb.379
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.24, %rdi
	movq	optarg, %rsi
	callq	a2ps_get_bool
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 312(%rsi)
	jmp	.LBB1_276
.LBB1_180:                              # %sw.bb.382
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	optarg, %rax
	movq	optarg, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	strcspn
	movq	-328(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_182
# BB#181:                               # %if.then.387
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -136(%rbp)
	movb	$0, (%rax)
	jmp	.LBB1_183
.LBB1_182:                              # %if.else.389
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	$0, -136(%rbp)
.LBB1_183:                              # %if.end.390
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB1_187
# BB#184:                               # %if.then.392
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	movq	-136(%rbp), %rdx
	callq	macro_meta_sequence_add
	testb	$1, %al
	jne	.LBB1_186
# BB#185:                               # %if.then.394
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	optarg, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB1_186:                              # %if.end.397
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_188
.LBB1_187:                              # %if.else.398
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rdi
	movq	optarg, %rsi
	callq	macro_meta_sequence_delete
.LBB1_188:                              # %if.end.399
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_189:                              # %sw.bb.400
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_190
.LBB1_190:                              # %do.body.401
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -144(%rbp)
# BB#191:                               # %do.body.403
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB1_193
# BB#192:                               # %if.then.406
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	448(%rax), %rdi
	callq	free
.LBB1_193:                              # %if.end.408
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_194
.LBB1_194:                              # %do.end.409
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB1_197
# BB#195:                               # %lor.lhs.false.412
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_197
# BB#196:                               # %cond.true.416
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-144(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB1_198
.LBB1_197:                              # %cond.false.418
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB1_198
.LBB1_198:                              # %cond.end.419
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 448(%rcx)
# BB#199:                               # %do.end.422
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_200:                              # %sw.bb.423
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_201
.LBB1_201:                              # %do.body.424
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -152(%rbp)
# BB#202:                               # %do.body.426
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 456(%rax)
	je	.LBB1_204
# BB#203:                               # %if.then.429
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	free
.LBB1_204:                              # %if.end.431
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_205
.LBB1_205:                              # %do.end.432
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB1_208
# BB#206:                               # %lor.lhs.false.435
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_208
# BB#207:                               # %cond.true.439
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-152(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB1_209
.LBB1_208:                              # %cond.false.441
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB1_209
.LBB1_209:                              # %cond.end.442
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 456(%rcx)
# BB#210:                               # %do.end.445
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_211:                              # %sw.bb.446
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_212
.LBB1_212:                              # %do.body.447
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -160(%rbp)
# BB#213:                               # %do.body.449
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 440(%rax)
	je	.LBB1_215
# BB#214:                               # %if.then.452
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdi
	callq	free
.LBB1_215:                              # %if.end.454
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_216
.LBB1_216:                              # %do.end.455
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -160(%rbp)
	je	.LBB1_219
# BB#217:                               # %lor.lhs.false.458
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-160(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_219
# BB#218:                               # %cond.true.462
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-160(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB1_220
.LBB1_219:                              # %cond.false.464
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB1_220
.LBB1_220:                              # %cond.end.465
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 440(%rcx)
# BB#221:                               # %do.end.468
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_222:                              # %sw.bb.469
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_223
.LBB1_223:                              # %do.body.470
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -168(%rbp)
# BB#224:                               # %do.body.472
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 464(%rax)
	je	.LBB1_226
# BB#225:                               # %if.then.475
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	464(%rax), %rdi
	callq	free
.LBB1_226:                              # %if.end.477
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_227
.LBB1_227:                              # %do.end.478
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -168(%rbp)
	je	.LBB1_230
# BB#228:                               # %lor.lhs.false.481
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_230
# BB#229:                               # %cond.true.485
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-168(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB1_231
.LBB1_230:                              # %cond.false.487
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB1_231
.LBB1_231:                              # %cond.end.488
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 464(%rcx)
# BB#232:                               # %do.end.491
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_233:                              # %sw.bb.492
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_234
.LBB1_234:                              # %do.body.493
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -176(%rbp)
# BB#235:                               # %do.body.495
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 472(%rax)
	je	.LBB1_237
# BB#236:                               # %if.then.498
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdi
	callq	free
.LBB1_237:                              # %if.end.500
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_238
.LBB1_238:                              # %do.end.501
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB1_241
# BB#239:                               # %lor.lhs.false.504
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_241
# BB#240:                               # %cond.true.508
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-176(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB1_242
.LBB1_241:                              # %cond.false.510
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB1_242
.LBB1_242:                              # %cond.end.511
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 472(%rcx)
# BB#243:                               # %do.end.514
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_244:                              # %sw.bb.515
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_245
.LBB1_245:                              # %do.body.516
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -184(%rbp)
# BB#246:                               # %do.body.518
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 480(%rax)
	je	.LBB1_248
# BB#247:                               # %if.then.521
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdi
	callq	free
.LBB1_248:                              # %if.end.523
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_249
.LBB1_249:                              # %do.end.524
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -184(%rbp)
	je	.LBB1_252
# BB#250:                               # %lor.lhs.false.527
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_252
# BB#251:                               # %cond.true.531
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-184(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB1_253
.LBB1_252:                              # %cond.false.533
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB1_253
.LBB1_253:                              # %cond.end.534
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 480(%rcx)
# BB#254:                               # %do.end.537
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_255:                              # %sw.bb.538
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movb	$1, 324(%rax)
	jmp	.LBB1_276
.LBB1_256:                              # %sw.bb.539
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, optarg
	je	.LBB1_258
# BB#257:                               # %if.then.541
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.26, %rdi
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	optarg, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	get_integer_in_range
	movq	-8(%rbp), %rsi
	movl	%eax, 152(%rsi)
	jmp	.LBB1_259
.LBB1_258:                              # %if.else.543
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movl	$12, 152(%rax)
.LBB1_259:                              # %if.end.545
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_260:                              # %sw.bb.546
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.27, %rdi
	movq	optarg, %rsi
	callq	madir_argmatch
	movq	-8(%rbp), %rsi
	movl	%eax, 140(%rsi)
	jmp	.LBB1_276
.LBB1_261:                              # %sw.bb.549
                                        #   in Loop: Header=BB1_10 Depth=1
	movabsq	$.L.str.28, %rdi
	movq	optarg, %rsi
	callq	get_version
	movq	-8(%rbp), %rsi
	movl	%eax, 104(%rsi)
	jmp	.LBB1_276
.LBB1_262:                              # %sw.bb.551
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rdi
	callq	xstrdup
	movq	%rax, simple_backup_suffix
	jmp	.LBB1_276
.LBB1_263:                              # %sw.bb.553
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	movq	optarg, %rsi
	callq	a2ps_printers_request_ppdkey_set
	jmp	.LBB1_276
.LBB1_264:                              # %sw.bb.555
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_265
.LBB1_265:                              # %do.body.556
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	optarg, %rax
	movq	%rax, -192(%rbp)
# BB#266:                               # %do.body.558
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB1_268
# BB#267:                               # %if.then.560
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	callq	free
.LBB1_268:                              # %if.end.562
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_269
.LBB1_269:                              # %do.end.563
                                        #   in Loop: Header=BB1_10 Depth=1
	cmpq	$0, -192(%rbp)
	je	.LBB1_272
# BB#270:                               # %lor.lhs.false.566
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_272
# BB#271:                               # %cond.true.570
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-192(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB1_273
.LBB1_272:                              # %cond.false.572
                                        #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB1_273
.LBB1_273:                              # %cond.end.573
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 264(%rcx)
# BB#274:                               # %do.end.576
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_276
.LBB1_275:                              # %sw.bb.577
	callq	abort
.LBB1_276:                              # %sw.epilog.578
                                        #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_277
.LBB1_277:                              # %for.inc
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB1_10
.LBB1_278:                              # %for.end
	movl	-44(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	a2ps_handle_options, .Lfunc_end1-a2ps_handle_options
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_15
	.quad	.LBB1_16
	.quad	.LBB1_17
	.quad	.LBB1_18
	.quad	.LBB1_19
	.quad	.LBB1_20
	.quad	.LBB1_21
	.quad	.LBB1_22
	.quad	.LBB1_23
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_24
	.quad	.LBB1_276
	.quad	.LBB1_275
	.quad	.LBB1_276
	.quad	.LBB1_26
	.quad	.LBB1_38
	.quad	.LBB1_73
	.quad	.LBB1_180
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_94
	.quad	.LBB1_96
	.quad	.LBB1_98
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_111
	.quad	.LBB1_276
	.quad	.LBB1_116
	.quad	.LBB1_79
	.quad	.LBB1_141
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_160
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_25
	.quad	.LBB1_27
	.quad	.LBB1_71
	.quad	.LBB1_78
	.quad	.LBB1_276
	.quad	.LBB1_85
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_89
	.quad	.LBB1_91
	.quad	.LBB1_93
	.quad	.LBB1_95
	.quad	.LBB1_97
	.quad	.LBB1_109
	.quad	.LBB1_110
	.quad	.LBB1_276
	.quad	.LBB1_112
	.quad	.LBB1_115
	.quad	.LBB1_117
	.quad	.LBB1_130
	.quad	.LBB1_142
	.quad	.LBB1_153
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_165
	.quad	.LBB1_166
	.quad	.LBB1_167
	.quad	.LBB1_178
	.quad	.LBB1_179
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_189
	.quad	.LBB1_200
	.quad	.LBB1_222
	.quad	.LBB1_233
	.quad	.LBB1_244
	.quad	.LBB1_276
	.quad	.LBB1_255
	.quad	.LBB1_256
	.quad	.LBB1_276
	.quad	.LBB1_211
	.quad	.LBB1_276
	.quad	.LBB1_72
	.quad	.LBB1_74
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_90
	.quad	.LBB1_92
	.quad	.LBB1_260
	.quad	.LBB1_261
	.quad	.LBB1_262
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_276
	.quad	.LBB1_263
	.quad	.LBB1_122
	.quad	.LBB1_276
	.quad	.LBB1_264

	.text
	.globl	a2ps_handle_string_options
	.align	16, 0x90
	.type	a2ps_handle_string_options,@function
a2ps_handle_string_options:             # @a2ps_handle_string_options
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_13
.LBB2_2:                                # %if.end
	jmp	.LBB2_3
.LBB2_3:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB2_5
# BB#4:                                 # %if.then.1
	movabsq	$.L.str.29, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB2_5:                                # %if.end.2
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	leaq	-28(%rbp), %rsi
	movl	$1, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	buildargv_argc
	movq	%rax, -40(%rbp)
	movq	program_name, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	msg_verbosity, %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	je	.LBB2_12
# BB#7:                                 # %if.then.6
	movl	$0, -48(%rbp)
.LBB2_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB2_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB2_8 Depth=1
	movabsq	$.L.str.30, %rsi
	movq	stderr, %rdi
	movl	-48(%rbp), %edx
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_8
.LBB2_11:                               # %for.end
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.10
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	a2ps_handle_options
	movl	$1, %esi
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	freeargv_from
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	a2ps_handle_string_options, .Lfunc_end2-a2ps_handle_string_options
	.cfi_endproc

	.type	handle_option_hook,@object # @handle_option_hook
	.bss
	.globl	handle_option_hook
	.align	8
handle_option_hook:
	.quad	0
	.size	handle_option_hook, 8

	.type	bool_args,@object       # @bool_args
	.section	.rodata,"a",@progbits
	.align	16
bool_args:
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	0
	.size	bool_args, 56

	.type	bool_types,@object      # @bool_types
bool_types:
	.asciz	"\001\001\001\000\000"
	.size	bool_types, 6

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"123456789=:A:a:b::BcCdD:E::f:gGhijkKl:L:mM:n:o:P:qrRs:S:t::T:u::v::VX:Z"
	.size	.L.str, 72

	.type	long_options,@object    # @long_options
	.section	.rodata,"a",@progbits
	.align	16
long_options:
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.38
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	138                     # 0x8a
	.zero	4
	.quad	.L.str.39
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	145                     # 0x91
	.zero	4
	.quad	.L.str.40
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	86                      # 0x56
	.zero	4
	.quad	.L.str.41
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	139                     # 0x8b
	.zero	4
	.quad	.L.str.42
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	161                     # 0xa1
	.zero	4
	.quad	.L.str.43
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	162                     # 0xa2
	.zero	4
	.quad	.L.str.44
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	162                     # 0xa2
	.zero	4
	.quad	.L.str.45
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	162                     # 0xa2
	.zero	4
	.quad	.L.str.46
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.47
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.48
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.49
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	61                      # 0x3d
	.zero	4
	.quad	.L.str.50
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	69                      # 0x45
	.zero	4
	.quad	.L.str.51
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	163                     # 0xa3
	.zero	4
	.quad	.L.str.52
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	134                     # 0x86
	.zero	4
	.quad	.L.str.53
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	134                     # 0x86
	.zero	4
	.quad	.L.str.54
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	115                     # 0x73
	.zero	4
	.quad	.L.str.55
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	164                     # 0xa4
	.zero	4
	.quad	.L.str.56
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	83                      # 0x53
	.zero	4
	.quad	.L.str.57
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	132                     # 0x84
	.zero	4
	.quad	.L.str.58
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	133                     # 0x85
	.zero	4
	.quad	.L.str.59
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	65                      # 0x41
	.zero	4
	.quad	.L.str.60
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	65                      # 0x41
	.zero	4
	.quad	.L.str.61
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	98                      # 0x62
	.zero	4
	.quad	.L.str.62
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	66                      # 0x42
	.zero	4
	.quad	.L.str.63
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	151                     # 0x97
	.zero	4
	.quad	.L.str.64
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.65
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	102                     # 0x66
	.zero	4
	.quad	.L.str.66
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	154                     # 0x9a
	.zero	4
	.quad	.L.str.67
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	173                     # 0xad
	.zero	4
	.quad	.L.str.68
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	155                     # 0x9b
	.zero	4
	.quad	.L.str.69
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	169                     # 0xa9
	.zero	4
	.quad	.L.str.70
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	156                     # 0x9c
	.zero	4
	.quad	.L.str.71
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	107                     # 0x6b
	.zero	4
	.quad	.L.str.72
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	75                      # 0x4b
	.zero	4
	.quad	.L.str.73
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	76                      # 0x4c
	.zero	4
	.quad	.L.str.74
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	108                     # 0x6c
	.zero	4
	.quad	.L.str.75
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	109                     # 0x6d
	.zero	4
	.quad	.L.str.76
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	77                      # 0x4d
	.zero	4
	.quad	.L.str.77
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	77                      # 0x4d
	.zero	4
	.quad	.L.str.78
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	110                     # 0x6e
	.zero	4
	.quad	.L.str.79
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	111                     # 0x6f
	.zero	4
	.quad	.L.str.80
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.81
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	113                     # 0x71
	.zero	4
	.quad	.L.str.82
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	113                     # 0x71
	.zero	4
	.quad	.L.str.83
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	114                     # 0x72
	.zero	4
	.quad	.L.str.84
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	82                      # 0x52
	.zero	4
	.quad	.L.str.85
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	116                     # 0x74
	.zero	4
	.quad	.L.str.86
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	84                      # 0x54
	.zero	4
	.quad	.L.str.87
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	117                     # 0x75
	.zero	4
	.quad	.L.str.88
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	118                     # 0x76
	.zero	4
	.quad	.L.str.89
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	88                      # 0x58
	.zero	4
	.quad	.L.str.90
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	135                     # 0x87
	.zero	4
	.quad	.L.str.91
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	136                     # 0x88
	.zero	4
	.quad	.L.str.92
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	149                     # 0x95
	.zero	4
	.quad	.L.str.93
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	140                     # 0x8c
	.zero	4
	.quad	.L.str.94
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	141                     # 0x8d
	.zero	4
	.quad	.L.str.95
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	142                     # 0x8e
	.zero	4
	.quad	.L.str.96
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	143                     # 0x8f
	.zero	4
	.quad	.L.str.97
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	144                     # 0x90
	.zero	4
	.quad	.L.str.98
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	166                     # 0xa6
	.zero	4
	.quad	.L.str.99
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	147                     # 0x93
	.zero	4
	.quad	.L.str.100
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	148                     # 0x94
	.zero	4
	.quad	.L.str.101
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	157                     # 0x9d
	.zero	4
	.quad	.L.str.102
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	158                     # 0x9e
	.zero	4
	.quad	.L.str.103
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	159                     # 0x9f
	.zero	4
	.quad	.L.str.104
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	146                     # 0x92
	.zero	4
	.quad	.L.str.105
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.106
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.107
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	167                     # 0xa7
	.zero	4
	.quad	.L.str.108
	.long	2                       # 0x2
	.zero	4
	.quad	0
	.long	97                      # 0x61
	.zero	4
	.quad	.L.str.109
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	137                     # 0x89
	.zero	4
	.quad	.L.str.110
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	150                     # 0x96
	.zero	4
	.zero	32
	.size	long_options, 2400

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Try `%s --help' for more information.\n"
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"--file-align"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"--truncate-lines"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"--line-numbers"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" \t:="
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"--font-size"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pt"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"--interpret"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"--border"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"--chars-per-line"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"--lines-per-page"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"--copies"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"A2PS_VERBOSITY"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"--sides"
	.size	.L.str.14, 8

	.type	duplex_args,@object     # @duplex_args
	.section	.rodata,"a",@progbits
	.align	16
duplex_args:
	.quad	.L.str.111
	.quad	.L.str.33
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	0
	.size	duplex_args, 56

	.type	duplex_types,@object    # @duplex_types
	.align	16
duplex_types:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.size	duplex_types, 24

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Duplex"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"true"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Tumble"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"false"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"--tabsize"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"--verbose"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"--columns"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"--rows"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"--non-printable"
	.size	.L.str.23, 16

	.type	non_printable_args,@object # @non_printable_args
	.section	.rodata,"a",@progbits
	.align	16
non_printable_args:
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	0
	.size	non_printable_args, 72

	.type	non_printable_types,@object # @non_printable_types
	.align	16
non_printable_types:
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	non_printable_types, 32

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"--print-anyway"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"invalid variable identifier `%s'"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"--margin"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"--major"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"--version-control"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"handle_string_options(%s)"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"   %3d = `%s'\n"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"yes"
	.size	.L.str.31, 4

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"on"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"1"
	.size	.L.str.33, 2

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"no"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"off"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"0"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"help"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"guess"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"list"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"version"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"list-options"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"list-media"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"list-style-sheets"
	.size	.L.str.43, 18

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"help-languages"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"help-pretty-print"
	.size	.L.str.45, 18

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"macro-meta-sequence"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"variable"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"define"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"user-option"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"pretty-print"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ppd"
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"prologue"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"include"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"sides"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"statusdict"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"setpagedevice"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"columns"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"rows"
	.size	.L.str.58, 5

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"compact"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"file-align"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"header"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"no-header"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"truncate-lines"
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"line-numbers"
	.size	.L.str.64, 13

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"font-size"
	.size	.L.str.65, 10

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"graphic-symbols"
	.size	.L.str.66, 16

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"highlight-level"
	.size	.L.str.67, 16

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"interpret"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"end-of-line"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"borders"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"page-prefeed"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"no-page-prefeed"
	.size	.L.str.72, 16

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"lines-per-page"
	.size	.L.str.73, 15

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"chars-per-line"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"catman"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"medium"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"media"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"copies"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"output"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"printer"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"quiet"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"silent"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"landscape"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"portrait"
	.size	.L.str.84, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"title"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"tabsize"
	.size	.L.str.86, 8

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"underlay"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"verbose"
	.size	.L.str.88, 8

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"encoding"
	.size	.L.str.89, 9

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"non-printable-format"
	.size	.L.str.90, 21

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"print-anyway"
	.size	.L.str.91, 13

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"center-title"
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"left-title"
	.size	.L.str.93, 11

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"right-title"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"left-footer"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"footer"
	.size	.L.str.96, 7

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"right-footer"
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"stdin"
	.size	.L.str.98, 6

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"margin"
	.size	.L.str.99, 7

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"strip-level"
	.size	.L.str.100, 12

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"major"
	.size	.L.str.101, 6

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"version-control"
	.size	.L.str.102, 16

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"suffix"
	.size	.L.str.103, 7

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"debug"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"delegate"
	.size	.L.str.105, 9

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"pass-through"
	.size	.L.str.106, 13

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"toc"
	.size	.L.str.107, 4

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"pages"
	.size	.L.str.108, 6

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"which"
	.size	.L.str.109, 6

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"glob"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"simplex"
	.size	.L.str.111, 8

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"none"
	.size	.L.str.112, 5

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"duplex"
	.size	.L.str.113, 7

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"2"
	.size	.L.str.114, 2

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"tumble"
	.size	.L.str.115, 7

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"octal"
	.size	.L.str.116, 6

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"hexa"
	.size	.L.str.117, 5

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"emacs"
	.size	.L.str.118, 6

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"questionmark"
	.size	.L.str.119, 13

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"space"
	.size	.L.str.120, 6

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"white"
	.size	.L.str.121, 6

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"blank"
	.size	.L.str.122, 6

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"caret"
	.size	.L.str.123, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
