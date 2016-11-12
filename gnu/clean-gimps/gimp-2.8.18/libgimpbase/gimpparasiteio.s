	.text
	.file	"gimpparasiteio.bc"
	.globl	gimp_pixpipe_params_init
	.align	16, 0x90
	.type	gimp_pixpipe_params_init,@function
gimp_pixpipe_params_init:               # @gimp_pixpipe_params_init
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixpipe_params_init(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	leaq	.L.str.2(%rip), %rax
	movq	-8(%rbp), %rcx
	movl	$100, (%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 4(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 20(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 24(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 8(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 12(%rcx)
	movq	-8(%rbp), %rcx
	movl	$1, 16(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$0, -12(%rbp)
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB0_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	leaq	.L.str.3(%rip), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_6
.LBB0_9:                                # %for.end
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
	movl	$1, -12(%rbp)
.LBB0_10:                               # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB0_13
# BB#11:                                # %for.body.5
                                        #   in Loop: Header=BB0_10 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, 44(%rcx,%rax,4)
# BB#12:                                # %for.inc.9
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_10
.LBB0_13:                               # %for.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pixpipe_params_init, .Lfunc_end0-gimp_pixpipe_params_init
	.cfi_endproc

	.globl	gimp_pixpipe_params_parse
	.align	16, 0x90
	.type	gimp_pixpipe_params_parse,@function
gimp_pixpipe_params_parse:              # @gimp_pixpipe_params_parse
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixpipe_params_parse(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_81
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixpipe_params_parse(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_81
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	movq	-8(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	.L.str.5(%rip), %rsi
	movq	-40(%rbp), %rdi
	callq	strtok@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB1_80
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$58, %esi
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	strchr@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.10
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB1_14:                               # %if.end.11
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#15:                                # %if.then.14
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.16
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, 4(%rdi)
.LBB1_17:                               # %if.end.18
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_77
.LBB1_18:                               # %if.else.19
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#19:                                # %if.then.22
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.24
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB1_21:                               # %if.end.27
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_76
.LBB1_22:                               # %if.else.28
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_32
# BB#23:                                # %if.then.31
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_31
# BB#24:                                # %if.then.33
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$4, 8(%rdi)
	jle	.LBB1_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$4, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB1_30
.LBB1_26:                               # %cond.false
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jge	.LBB1_28
# BB#27:                                # %cond.true.40
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false.41
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB1_29:                               # %cond.end
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB1_30:                               # %cond.end.43
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB1_31:                               # %if.end.46
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_75
.LBB1_32:                               # %if.else.47
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.9(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_36
# BB#33:                                # %if.then.50
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_35
# BB#34:                                # %if.then.52
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, 12(%rdi)
.LBB1_35:                               # %if.end.55
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_74
.LBB1_36:                               # %if.else.56
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_40
# BB#37:                                # %if.then.59
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.61
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, 16(%rdi)
.LBB1_39:                               # %if.end.64
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_73
.LBB1_40:                               # %if.else.65
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_44
# BB#41:                                # %if.then.68
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_43
# BB#42:                                # %if.then.70
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, 20(%rdi)
.LBB1_43:                               # %if.end.73
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_72
.LBB1_44:                               # %if.else.74
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_48
# BB#45:                                # %if.then.77
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_47
# BB#46:                                # %if.then.79
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movq	-16(%rbp), %rdi
	movl	%eax, 24(%rdi)
.LBB1_47:                               # %if.end.82
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_71
.LBB1_48:                               # %if.else.83
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_52
# BB#49:                                # %if.then.86
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_51
# BB#50:                                # %if.then.88
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	movl	$1, 40(%rax)
.LBB1_51:                               # %if.end.91
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_70
.LBB1_52:                               # %if.else.92
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	.L.str.14(%rip), %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_60
# BB#53:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_60
# BB#54:                                # %if.then.96
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_59
# BB#55:                                # %if.then.98
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jl	.LBB1_58
# BB#56:                                # %land.lhs.true.102
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB1_58
# BB#57:                                # %if.then.105
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movslq	-52(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, 44(%rcx,%rdi,4)
.LBB1_58:                               # %if.end.108
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_59
.LBB1_59:                               # %if.end.109
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_69
.LBB1_60:                               # %if.else.110
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	.L.str.15(%rip), %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB1_68
# BB#61:                                # %land.lhs.true.113
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_68
# BB#62:                                # %if.then.115
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_67
# BB#63:                                # %if.then.117
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movq	%rax, %rdi
	callq	atoi@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jl	.LBB1_66
# BB#64:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB1_66
# BB#65:                                # %if.then.124
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movslq	-52(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx,%rdi,8)
	movq	-16(%rbp), %rax
	movl	$1, 96(%rax)
.LBB1_66:                               # %if.end.129
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_67
.LBB1_67:                               # %if.end.130
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_68
.LBB1_68:                               # %if.end.131
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_69
.LBB1_69:                               # %if.end.132
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_70
.LBB1_70:                               # %if.end.133
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_71
.LBB1_71:                               # %if.end.134
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_72
.LBB1_72:                               # %if.end.135
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_73
.LBB1_73:                               # %if.end.136
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_74
.LBB1_74:                               # %if.end.137
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_75
.LBB1_75:                               # %if.end.138
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_76
.LBB1_76:                               # %if.end.139
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_77
.LBB1_77:                               # %if.end.140
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_79
# BB#78:                                # %if.then.142
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-48(%rbp), %rax
	movb	$58, (%rax)
.LBB1_79:                               # %if.end.143
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_11
.LBB1_80:                               # %while.end
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
.LBB1_81:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pixpipe_params_parse, .Lfunc_end1-gimp_pixpipe_params_parse
	.cfi_endproc

	.globl	gimp_pixpipe_params_build
	.align	16, 0x90
	.type	gimp_pixpipe_params_build,@function
gimp_pixpipe_params_build:              # @gimp_pixpipe_params_build
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixpipe_params_build(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB2_10
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-24(%rbp), %rax
	movl	(%rax), %r9d
	movq	-24(%rbp), %rax
	movl	8(%rax), %r10d
	movq	-24(%rbp), %rax
	movl	12(%rax), %r11d
	movq	-24(%rbp), %rax
	movl	16(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_string_printf@PLT
	movl	$0, -36(%rbp)
.LBB2_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB2_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB2_6 Depth=1
	leaq	.L.str.17(%rip), %rsi
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %edx
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	44(%rcx,%rax,4), %ecx
	movb	$0, %al
	callq	g_string_append_printf@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %edx
	movslq	-36(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	64(%r9,%r8,8), %rcx
	movb	$0, %al
	callq	g_string_append_printf@PLT
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_6
.LBB2_9:                                # %for.end
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -16(%rbp)
.LBB2_10:                               # %return
	movq	-16(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pixpipe_params_build, .Lfunc_end2-gimp_pixpipe_params_build
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpBase"
	.size	.L.str, 12

	.type	.L__func__.gimp_pixpipe_params_init,@object # @__func__.gimp_pixpipe_params_init
.L__func__.gimp_pixpipe_params_init:
	.asciz	"gimp_pixpipe_params_init"
	.size	.L__func__.gimp_pixpipe_params_init, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"params != NULL"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"constant"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"random"
	.size	.L.str.3, 7

	.type	.L__func__.gimp_pixpipe_params_parse,@object # @__func__.gimp_pixpipe_params_parse
.L__func__.gimp_pixpipe_params_parse:
	.asciz	"gimp_pixpipe_params_parse"
	.size	.L__func__.gimp_pixpipe_params_parse, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"string != NULL"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" \r\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ncells"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"step"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dim"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"cols"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"rows"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cellwidth"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cellheight"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"placement"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"rank"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"sel"
	.size	.L.str.15, 4

	.type	.L__func__.gimp_pixpipe_params_build,@object # @__func__.gimp_pixpipe_params_build
.L__func__.gimp_pixpipe_params_build:
	.asciz	"gimp_pixpipe_params_build"
	.size	.L__func__.gimp_pixpipe_params_build, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ncells:%d cellwidth:%d cellheight:%d step:%d dim:%d cols:%d rows:%d placement:%s"
	.size	.L.str.16, 81

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" rank%d:%d"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" sel%d:%s"
	.size	.L.str.18, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
