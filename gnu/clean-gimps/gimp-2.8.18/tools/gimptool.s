	.text
	.file	"gimptool.bc"
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
	cmpl	$1, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	usage
.LBB0_2:                                # %if.end
	movl	$0, -20(%rbp)
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	-8(%rbp), %eax
	jge	.LBB0_22
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.1, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_8
# BB#6:                                 # %lor.lhs.false.7
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %lor.lhs.false.12
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.3, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_9
.LBB0_8:                                # %if.then.17
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, dry_run
	jmp	.LBB0_21
.LBB0_9:                                # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.4, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_11
# BB#10:                                # %if.then.22
	xorl	%edi, %edi
	callq	usage
.LBB0_11:                               # %if.else.23
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str.5, %rsi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_13
# BB#12:                                # %if.then.27
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$9, %rax
	movq	%rax, prefix
	jmp	.LBB0_19
.LBB0_13:                               # %if.else.30
                                        #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str.6, %rsi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.35
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$14, %rax
	movq	%rax, exec_prefix
	jmp	.LBB0_18
.LBB0_15:                               # %if.else.39
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.7, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_17
# BB#16:                                # %if.then.44
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$1, msvc_syntax
.LBB0_17:                               # %if.end.45
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.46
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.47
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.48
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.49
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_22:                               # %while.end
	cmpl	$0, msvc_syntax
	je	.LBB0_24
# BB#23:                                # %if.then.51
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$0, msvc_syntax
.LBB0_24:                               # %if.end.52
	callq	find_out_env_flags
	movl	$0, -20(%rbp)
.LBB0_25:                               # %while.cond.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	-8(%rbp), %eax
	jge	.LBB0_130
# BB#26:                                # %while.body.56
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$0, -24(%rbp)
.LBB0_27:                               # %for.cond
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-24(%rbp), %rax
	cmpq	$15, %rax
	jae	.LBB0_32
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB0_27 Depth=2
	movabsq	$.L.str.9, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$dirs, %rcx
	movslq	-20(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	(%r8,%rsi,8), %rsi
	movslq	-24(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rcx
	movq	(%rcx), %rcx
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_30
# BB#29:                                # %if.then.67
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_32
.LBB0_30:                               # %if.end.68
                                        #   in Loop: Header=BB0_27 Depth=2
	jmp	.LBB0_31
.LBB0_31:                               # %for.inc
                                        #   in Loop: Header=BB0_27 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_27
.LBB0_32:                               # %for.end
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-24(%rbp), %rax
	cmpq	$15, %rax
	jae	.LBB0_34
# BB#33:                                # %if.then.73
                                        #   in Loop: Header=BB0_25 Depth=1
	movabsq	$dirs, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rdi
	callq	expand_and_munge
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	jmp	.LBB0_129
.LBB0_34:                               # %if.else.77
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.11, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_36
# BB#35:                                # %lor.lhs.false.83
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_37
.LBB0_36:                               # %if.then.89
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$1, silent
	jmp	.LBB0_128
.LBB0_37:                               # %if.else.90
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.13, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_39
# BB#38:                                # %if.then.96
	movabsq	$.L.str.14, %rdi
	movl	$2, %esi
	movl	$8, %edx
	movl	$18, %ecx
	movb	$0, %al
	callq	g_print
	xorl	%edi, %edi
	callq	exit
.LBB0_39:                               # %if.else.97
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_43
# BB#40:                                # %lor.lhs.false.103
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.1, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_43
# BB#41:                                # %lor.lhs.false.109
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.2, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_43
# BB#42:                                # %lor.lhs.false.115
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.3, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_44
.LBB0_43:                               # %if.then.121
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_126
.LBB0_44:                               # %if.else.122
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.15, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_46
# BB#45:                                # %if.then.128
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_includedir
	jmp	.LBB0_125
.LBB0_46:                               # %if.else.129
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.16, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_48
# BB#47:                                # %if.then.135
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_cflags
	jmp	.LBB0_124
.LBB0_48:                               # %if.else.136
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.17, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_50
# BB#49:                                # %if.then.142
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_cflags_noui
	jmp	.LBB0_123
.LBB0_50:                               # %if.else.143
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.18, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_52
# BB#51:                                # %if.then.149
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_cflags_nogimpui
	jmp	.LBB0_122
.LBB0_52:                               # %if.else.150
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.19, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_54
# BB#53:                                # %if.then.156
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_libs
	jmp	.LBB0_121
.LBB0_54:                               # %if.else.157
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.20, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_56
# BB#55:                                # %if.then.163
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_libs_noui
	jmp	.LBB0_120
.LBB0_56:                               # %if.else.164
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.21, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_58
# BB#57:                                # %if.then.170
                                        #   in Loop: Header=BB0_25 Depth=1
	callq	do_libs_nogimpui
	jmp	.LBB0_119
.LBB0_58:                               # %if.else.171
                                        #   in Loop: Header=BB0_25 Depth=1
	movabsq	$.L.str.5, %rsi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_60
# BB#59:                                # %if.then.176
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_118
.LBB0_60:                               # %if.else.177
                                        #   in Loop: Header=BB0_25 Depth=1
	movabsq	$.L.str.6, %rsi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_62
# BB#61:                                # %if.then.182
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_117
.LBB0_62:                               # %if.else.183
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.7, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_64
# BB#63:                                # %if.then.189
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_116
.LBB0_64:                               # %if.else.190
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.22, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_66
# BB#65:                                # %if.then.196
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_build
	jmp	.LBB0_115
.LBB0_66:                               # %if.else.200
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.23, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_68
# BB#67:                                # %if.then.206
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_build_noui
	jmp	.LBB0_114
.LBB0_68:                               # %if.else.210
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.24, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_70
# BB#69:                                # %if.then.216
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_build_nogimpui
	jmp	.LBB0_113
.LBB0_70:                               # %if.else.220
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.25, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_72
# BB#71:                                # %if.then.226
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install
	jmp	.LBB0_112
.LBB0_72:                               # %if.else.230
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.26, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_74
# BB#73:                                # %if.then.236
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_noui
	jmp	.LBB0_111
.LBB0_74:                               # %if.else.240
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.27, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_76
# BB#75:                                # %if.then.246
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_nogimpui
	jmp	.LBB0_110
.LBB0_76:                               # %if.else.250
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.28, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_78
# BB#77:                                # %if.then.256
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_admin
	jmp	.LBB0_109
.LBB0_78:                               # %if.else.260
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.29, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_80
# BB#79:                                # %if.then.266
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_admin_noui
	jmp	.LBB0_108
.LBB0_80:                               # %if.else.270
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.30, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_82
# BB#81:                                # %if.then.276
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_admin_nogimpui
	jmp	.LBB0_107
.LBB0_82:                               # %if.else.280
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.31, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_84
# BB#83:                                # %if.then.286
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_bin
	jmp	.LBB0_106
.LBB0_84:                               # %if.else.290
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.32, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_86
# BB#85:                                # %if.then.296
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_admin_bin
	jmp	.LBB0_105
.LBB0_86:                               # %if.else.300
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.33, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_88
# BB#87:                                # %if.then.306
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_uninstall_bin
	jmp	.LBB0_104
.LBB0_88:                               # %if.else.310
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.34, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_90
# BB#89:                                # %if.then.316
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_uninstall_admin_bin
	jmp	.LBB0_103
.LBB0_90:                               # %if.else.320
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.35, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_92
# BB#91:                                # %if.then.326
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_script
	jmp	.LBB0_102
.LBB0_92:                               # %if.else.330
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.36, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_94
# BB#93:                                # %if.then.336
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_install_admin_script
	jmp	.LBB0_101
.LBB0_94:                               # %if.else.340
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.37, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_96
# BB#95:                                # %if.then.346
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_uninstall_script
	jmp	.LBB0_100
.LBB0_96:                               # %if.else.350
                                        #   in Loop: Header=BB0_25 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	$.L.str.38, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_98
# BB#97:                                # %if.then.356
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	do_uninstall_admin_script
	jmp	.LBB0_99
.LBB0_98:                               # %if.else.360
	movabsq	$.L.str.39, %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, %edi
	callq	usage
.LBB0_99:                               # %if.end.363
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_100
.LBB0_100:                              # %if.end.364
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_101
.LBB0_101:                              # %if.end.365
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_102
.LBB0_102:                              # %if.end.366
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_103
.LBB0_103:                              # %if.end.367
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_104
.LBB0_104:                              # %if.end.368
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_105
.LBB0_105:                              # %if.end.369
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_106
.LBB0_106:                              # %if.end.370
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_107
.LBB0_107:                              # %if.end.371
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_108
.LBB0_108:                              # %if.end.372
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_109
.LBB0_109:                              # %if.end.373
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_110
.LBB0_110:                              # %if.end.374
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_111
.LBB0_111:                              # %if.end.375
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_112
.LBB0_112:                              # %if.end.376
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_113
.LBB0_113:                              # %if.end.377
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_114
.LBB0_114:                              # %if.end.378
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_115
.LBB0_115:                              # %if.end.379
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_116
.LBB0_116:                              # %if.end.380
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_117
.LBB0_117:                              # %if.end.381
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_118
.LBB0_118:                              # %if.end.382
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_119
.LBB0_119:                              # %if.end.383
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_120
.LBB0_120:                              # %if.end.384
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_121
.LBB0_121:                              # %if.end.385
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_122
.LBB0_122:                              # %if.end.386
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_123
.LBB0_123:                              # %if.end.387
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_124
.LBB0_124:                              # %if.end.388
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_125
.LBB0_125:                              # %if.end.389
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_126
.LBB0_126:                              # %if.end.390
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_127
.LBB0_127:                              # %if.end.391
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_128
.LBB0_128:                              # %if.end.392
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_129
.LBB0_129:                              # %if.end.393
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_25
.LBB0_130:                              # %while.end.394
	xorl	%edi, %edi
	callq	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
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
	movabsq	$.L.str.40, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_print
	movl	-4(%rbp), %edi
	callq	exit
.Lfunc_end1:
	.size	usage, .Lfunc_end1-usage
	.cfi_endproc

	.align	16, 0x90
	.type	find_out_env_flags,@function
find_out_env_flags:                     # @find_out_env_flags
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
	movabsq	$.L.str.41, %rdi
	callq	getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, env_cc
	jmp	.LBB2_7
.LBB2_3:                                # %if.else
	cmpl	$0, msvc_syntax
	je	.LBB2_5
# BB#4:                                 # %if.then.3
	movabsq	$.L.str.42, %rax
	movq	%rax, env_cc
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.4
	movabsq	$.L.str.43, %rax
	movq	%rax, env_cc
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.5
	movabsq	$.L.str.44, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	env_cc, %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#8:                                 # %land.lhs.true.9
	movabsq	$.L.str.45, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	env_cc, %rdi
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	je	.LBB2_10
# BB#9:                                 # %if.then.13
	movl	$1, msvc_syntax
.LBB2_10:                               # %if.end.14
	movabsq	$.L.str.46, %rdi
	callq	getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB2_12
# BB#11:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	%rax, env_cflags
	jmp	.LBB2_13
.LBB2_12:                               # %if.else.19
	movabsq	$.L.str.47, %rax
	movq	%rax, env_cflags
.LBB2_13:                               # %if.end.20
	movabsq	$.L.str.48, %rdi
	callq	getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB2_15
# BB#14:                                # %if.then.24
	movq	-8(%rbp), %rax
	movq	%rax, env_ldflags
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.25
	movabsq	$.L.str.47, %rax
	movq	%rax, env_ldflags
.LBB2_16:                               # %if.end.26
	movabsq	$.L.str.49, %rdi
	callq	getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB2_19
# BB#17:                                # %land.lhs.true.30
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_19
# BB#18:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	%rax, env_libs
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.35
	movabsq	$.L.str.47, %rax
	movq	%rax, env_libs
.LBB2_20:                               # %if.end.36
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	find_out_env_flags, .Lfunc_end2-find_out_env_flags
	.cfi_endproc

	.align	16, 0x90
	.type	expand_and_munge,@function
expand_and_munge:                       # @expand_and_munge
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
	movabsq	$.L.str.78, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	starts_with_dir
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.51, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$9, %rcx
	movq	%rcx, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -16(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.else
	movabsq	$.L.str.79, %rsi
	movq	-8(%rbp), %rdi
	callq	starts_with_dir
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.51, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$14, %rcx
	movq	%rcx, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -16(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.else.8
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.10
	movabsq	$.L.str.51, %rsi
	movq	-16(%rbp), %rdi
	callq	starts_with_dir
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.13
	movl	$47, %edi
	callq	get_exec_prefix
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-16(%rbp), %rcx
	addq	$10, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -16(%rbp)
.LBB3_8:                                # %if.end.17
	movabsq	$.L.str.51, %rsi
	movq	-16(%rbp), %rdi
	callq	starts_with_dir
	cmpl	$0, %eax
	je	.LBB3_10
# BB#9:                                 # %if.then.20
	movl	$47, %edi
	callq	get_runtime_prefix
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-16(%rbp), %rcx
	addq	$10, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -16(%rbp)
.LBB3_10:                               # %if.end.24
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	expand_and_munge, .Lfunc_end3-expand_and_munge
	.cfi_endproc

	.align	16, 0x90
	.type	do_includedir,@function
do_includedir:                          # @do_includedir
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
	callq	get_includedir
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end4:
	.size	do_includedir, .Lfunc_end4-do_includedir
	.cfi_endproc

	.align	16, 0x90
	.type	do_cflags,@function
do_cflags:                              # @do_cflags
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
	callq	get_cflags
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end5:
	.size	do_cflags, .Lfunc_end5-do_cflags
	.cfi_endproc

	.align	16, 0x90
	.type	do_cflags_noui,@function
do_cflags_noui:                         # @do_cflags_noui
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
	callq	get_cflags_noui
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end6:
	.size	do_cflags_noui, .Lfunc_end6-do_cflags_noui
	.cfi_endproc

	.align	16, 0x90
	.type	do_cflags_nogimpui,@function
do_cflags_nogimpui:                     # @do_cflags_nogimpui
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
	callq	get_cflags_nogimpui
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end7:
	.size	do_cflags_nogimpui, .Lfunc_end7-do_cflags_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	do_libs,@function
do_libs:                                # @do_libs
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
	callq	get_libs
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end8:
	.size	do_libs, .Lfunc_end8-do_libs
	.cfi_endproc

	.align	16, 0x90
	.type	do_libs_noui,@function
do_libs_noui:                           # @do_libs_noui
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
	callq	get_libs_noui
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end9:
	.size	do_libs_noui, .Lfunc_end9-do_libs_noui
	.cfi_endproc

	.align	16, 0x90
	.type	do_libs_nogimpui,@function
do_libs_nogimpui:                       # @do_libs_nogimpui
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
	callq	get_libs_nogimpui
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
	popq	%rbp
	retq
.Lfunc_end10:
	.size	do_libs_nogimpui, .Lfunc_end10-do_libs_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	do_build,@function
do_build:                               # @do_build
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
	callq	get_cflags
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	do_build_2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	do_build, .Lfunc_end11-do_build
	.cfi_endproc

	.align	16, 0x90
	.type	do_build_noui,@function
do_build_noui:                          # @do_build_noui
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
	callq	get_cflags_noui
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs_noui
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	do_build_2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	do_build_noui, .Lfunc_end12-do_build_noui
	.cfi_endproc

	.align	16, 0x90
	.type	do_build_nogimpui,@function
do_build_nogimpui:                      # @do_build_nogimpui
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
	movq	-8(%rbp), %rdi
	callq	do_build
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	do_build_nogimpui, .Lfunc_end13-do_build_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	do_install,@function
do_install:                             # @do_install
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	get_cflags
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	get_user_plugin_dir
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	do_build_2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	do_install, .Lfunc_end14-do_install
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_noui,@function
do_install_noui:                        # @do_install_noui
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
	callq	get_cflags_noui
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs_noui
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	get_user_plugin_dir
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	do_build_2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	do_install_noui, .Lfunc_end15-do_install_noui
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_nogimpui,@function
do_install_nogimpui:                    # @do_install_nogimpui
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
	callq	do_install
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	do_install_nogimpui, .Lfunc_end16-do_install_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_admin,@function
do_install_admin:                       # @do_install_admin
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
	movq	%rdi, -8(%rbp)
	callq	get_cflags
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs
	movl	$1, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	get_sys_plugin_dir
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	do_build_2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	do_install_admin, .Lfunc_end17-do_install_admin
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_admin_noui,@function
do_install_admin_noui:                  # @do_install_admin_noui
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	get_cflags_noui
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs_noui
	movl	$1, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	get_sys_plugin_dir
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	do_build_2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	do_install_admin_noui, .Lfunc_end18-do_install_admin_noui
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_admin_nogimpui,@function
do_install_admin_nogimpui:              # @do_install_admin_nogimpui
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	get_cflags
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	get_libs
	movl	$1, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	get_sys_plugin_dir
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	do_build_2
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	do_install_admin_nogimpui, .Lfunc_end19-do_install_admin_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_bin,@function
do_install_bin:                         # @do_install_bin
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
	movq	%rdi, -8(%rbp)
	callq	get_user_plugin_dir
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_install_bin_2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	do_install_bin, .Lfunc_end20-do_install_bin
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_admin_bin,@function
do_install_admin_bin:                   # @do_install_admin_bin
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	get_sys_plugin_dir
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_install_bin_2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	do_install_admin_bin, .Lfunc_end21-do_install_admin_bin
	.cfi_endproc

	.align	16, 0x90
	.type	do_uninstall_bin,@function
do_uninstall_bin:                       # @do_uninstall_bin
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	get_user_plugin_dir
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	maybe_append_exe
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	do_uninstall
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	do_uninstall_bin, .Lfunc_end22-do_uninstall_bin
	.cfi_endproc

	.align	16, 0x90
	.type	do_uninstall_admin_bin,@function
do_uninstall_admin_bin:                 # @do_uninstall_admin_bin
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	get_sys_plugin_dir
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	maybe_append_exe
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	do_uninstall
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	do_uninstall_admin_bin, .Lfunc_end23-do_uninstall_admin_bin
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_script,@function
do_install_script:                      # @do_install_script
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
	movq	%rdi, -8(%rbp)
	callq	get_user_script_dir
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_install_bin_2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	do_install_script, .Lfunc_end24-do_install_script
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_admin_script,@function
do_install_admin_script:                # @do_install_admin_script
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	get_sys_script_dir
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_install_bin_2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	do_install_admin_script, .Lfunc_end25-do_install_admin_script
	.cfi_endproc

	.align	16, 0x90
	.type	do_uninstall_script,@function
do_uninstall_script:                    # @do_uninstall_script
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
	movq	%rdi, -8(%rbp)
	callq	get_user_script_dir
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_uninstall
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	do_uninstall_script, .Lfunc_end26-do_uninstall_script
	.cfi_endproc

	.align	16, 0x90
	.type	do_uninstall_admin_script,@function
do_uninstall_admin_script:              # @do_uninstall_admin_script
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
	movq	%rdi, -8(%rbp)
	callq	get_sys_script_dir
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_uninstall
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	do_uninstall_admin_script, .Lfunc_end27-do_uninstall_admin_script
	.cfi_endproc

	.align	16, 0x90
	.type	starts_with_dir,@function
starts_with_dir:                        # @starts_with_dir
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
	subq	$32, %rsp
	movabsq	$.L.str.80, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_str_has_prefix
	movb	$1, %r8b
	cmpl	$0, %eax
	movb	%r8b, -25(%rbp)         # 1-byte Spill
	jne	.LBB28_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB28_2:                               # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	starts_with_dir, .Lfunc_end28-starts_with_dir
	.cfi_endproc

	.align	16, 0x90
	.type	get_exec_prefix,@function
get_exec_prefix:                        # @get_exec_prefix
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
	movb	%dil, %al
	movabsq	$.L.str.51, %rcx
	movb	%al, -1(%rbp)
	movq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	get_exec_prefix, .Lfunc_end29-get_exec_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	get_runtime_prefix,@function
get_runtime_prefix:                     # @get_runtime_prefix
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
	subq	$16, %rsp
	movb	%dil, %al
	movabsq	$.L.str.81, %rdi
	movb	%al, -1(%rbp)
	callq	pkg_config
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	get_runtime_prefix, .Lfunc_end30-get_runtime_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	pkg_config,@function
pkg_config:                             # @pkg_config
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
	subq	$16, %rsp
	movabsq	$.L.str.82, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	one_line_output
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pkg_config, .Lfunc_end31-pkg_config
	.cfi_endproc

	.align	16, 0x90
	.type	one_line_output,@function
one_line_output:                        # @one_line_output
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
	subq	$4144, %rsp             # imm = 0x1030
	movabsq	$.L.str.83, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.84, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	popen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.85, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, %edi
	callq	exit
.LBB32_2:                               # %if.end
	movl	$4096, %esi             # imm = 0x1000
	leaq	-4128(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB32_4
# BB#3:                                 # %if.then.4
	movb	$0, -4128(%rbp)
.LBB32_4:                               # %if.end.5
	leaq	-4128(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB32_7
# BB#5:                                 # %land.lhs.true
	leaq	-4128(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movsbl	-4128(%rbp,%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB32_7
# BB#6:                                 # %if.then.14
	leaq	-4128(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movb	$0, -4128(%rbp,%rax)
.LBB32_7:                               # %if.end.19
	leaq	-4128(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB32_10
# BB#8:                                 # %land.lhs.true.24
	leaq	-4128(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movsbl	-4128(%rbp,%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB32_10
# BB#9:                                 # %if.then.32
	leaq	-4128(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movb	$0, -4128(%rbp,%rax)
.LBB32_10:                              # %if.end.37
	movq	-32(%rbp), %rdi
	callq	pclose
	leaq	-4128(%rbp), %rdi
	movl	%eax, -4132(%rbp)       # 4-byte Spill
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB32_12
# BB#11:                                # %if.then.43
	movabsq	$.L.str.86, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, %edi
	callq	exit
.LBB32_12:                              # %if.end.44
	leaq	-4128(%rbp), %rdi
	callq	g_strdup
	addq	$4144, %rsp             # imm = 0x1030
	popq	%rbp
	retq
.Lfunc_end32:
	.size	one_line_output, .Lfunc_end32-one_line_output
	.cfi_endproc

	.align	16, 0x90
	.type	get_includedir,@function
get_includedir:                         # @get_includedir
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
	movabsq	$.L.str.87, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end33:
	.size	get_includedir, .Lfunc_end33-get_includedir
	.cfi_endproc

	.align	16, 0x90
	.type	get_cflags,@function
get_cflags:                             # @get_cflags
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
	movabsq	$.L.str.88, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end34:
	.size	get_cflags, .Lfunc_end34-get_cflags
	.cfi_endproc

	.align	16, 0x90
	.type	get_cflags_noui,@function
get_cflags_noui:                        # @get_cflags_noui
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
	movabsq	$.L.str.89, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end35:
	.size	get_cflags_noui, .Lfunc_end35-get_cflags_noui
	.cfi_endproc

	.align	16, 0x90
	.type	get_cflags_nogimpui,@function
get_cflags_nogimpui:                    # @get_cflags_nogimpui
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
	movabsq	$.L.str.90, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end36:
	.size	get_cflags_nogimpui, .Lfunc_end36-get_cflags_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	get_libs,@function
get_libs:                               # @get_libs
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
	movabsq	$.L.str.91, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end37:
	.size	get_libs, .Lfunc_end37-get_libs
	.cfi_endproc

	.align	16, 0x90
	.type	get_libs_noui,@function
get_libs_noui:                          # @get_libs_noui
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
	movabsq	$.L.str.92, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end38:
	.size	get_libs_noui, .Lfunc_end38-get_libs_noui
	.cfi_endproc

	.align	16, 0x90
	.type	get_libs_nogimpui,@function
get_libs_nogimpui:                      # @get_libs_nogimpui
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
	movabsq	$.L.str.93, %rdi
	callq	pkg_config
	popq	%rbp
	retq
.Lfunc_end39:
	.size	get_libs_nogimpui, .Lfunc_end39-get_libs_nogimpui
	.cfi_endproc

	.align	16, 0x90
	.type	do_build_2,@function
do_build_2:                             # @do_build_2
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
.Ltmp123:
	.cfi_offset %rbx, -40
.Ltmp124:
	.cfi_offset %r14, -32
.Ltmp125:
	.cfi_offset %r15, -24
	movabsq	$.L.str.47, %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rax, -96(%rbp)
	movq	%rax, -104(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.80, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -72(%rbp)
	jmp	.LBB40_3
.LBB40_2:                               # %if.else
	movabsq	$.L.str.47, %rax
	movq	%rax, -72(%rbp)
.LBB40_3:                               # %if.end
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movl	$46, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	strrchr
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB40_7
# BB#4:                                 # %lor.lhs.false
	movq	-112(%rbp), %rdi
	movl	$.L.str.94, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB40_8
# BB#5:                                 # %lor.lhs.false.6
	movq	-112(%rbp), %rdi
	movl	$.L.str.95, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB40_8
# BB#6:                                 # %lor.lhs.false.9
	movq	-112(%rbp), %rdi
	movl	$.L.str.96, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB40_8
.LBB40_7:                               # %if.then.12
	movabsq	$.L.str.97, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, %edi
	callq	exit
.LBB40_8:                               # %if.end.13
	movl	$47, %esi
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rdi
	callq	strrchr
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB40_10
# BB#9:                                 # %if.then.16
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.17
	movq	-120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -120(%rbp)
.LBB40_11:                              # %if.end.18
	movabsq	$.L.str.47, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -88(%rbp)
	cmpl	$0, msvc_syntax
	je	.LBB40_13
# BB#12:                                # %if.then.20
	movabsq	$.L.str.100, %rax
	movabsq	$.L.str.99, %rcx
	movabsq	$.L.str.98, %rdx
	movq	%rdx, -80(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%rax, -104(%rbp)
	jmp	.LBB40_14
.LBB40_13:                              # %if.else.21
	movabsq	$.L.str.101, %rax
	movq	%rax, -80(%rbp)
.LBB40_14:                              # %if.end.22
	movq	env_cc, %rsi
	movq	env_cflags, %rdx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%r8, -152(%rbp)         # 8-byte Spill
	callq	g_shell_quote
	movabsq	$.L.str.102, %rdi
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	env_ldflags, %rsi
	movq	-104(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	env_libs, %r10
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r10, 40(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	maybe_run
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	do_build_2, .Lfunc_end40-do_build_2
	.cfi_endproc

	.align	16, 0x90
	.type	maybe_run,@function
maybe_run:                              # @maybe_run
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, silent
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.10, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_print
.LBB41_2:                               # %if.end
	cmpl	$0, dry_run
	jne	.LBB41_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	callq	system
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB41_4:                               # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	maybe_run, .Lfunc_end41-maybe_run
	.cfi_endproc

	.align	16, 0x90
	.type	get_user_plugin_dir,@function
get_user_plugin_dir:                    # @get_user_plugin_dir
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
	callq	gimp_directory
	movabsq	$.L.str.103, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	popq	%rbp
	retq
.Lfunc_end42:
	.size	get_user_plugin_dir, .Lfunc_end42-get_user_plugin_dir
	.cfi_endproc

	.align	16, 0x90
	.type	get_sys_plugin_dir,@function
get_sys_plugin_dir:                     # @get_sys_plugin_dir
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
	subq	$16, %rsp
	movabsq	$.L.str.69, %rsi
	movabsq	$.L.str.104, %rdx
	movabsq	$.L.str.105, %rcx
	movabsq	$.L.str.103, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movabsq	$.L.str.80, %r10
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	cmovneq	%r10, %r10
	movq	%r10, %rdi
	movb	$0, %al
	callq	g_build_path
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	get_sys_plugin_dir, .Lfunc_end43-get_sys_plugin_dir
	.cfi_endproc

	.align	16, 0x90
	.type	do_install_bin_2,@function
do_install_bin_2:                       # @do_install_bin_2
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
	movl	$493, %eax              # imm = 0x1ED
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	g_mkdir_with_parents
	movq	-16(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	g_shell_quote
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_shell_quote
	movabsq	$.L.str.106, %rdi
	movabsq	$.L.str.83, %rcx
	xorl	%esi, %esi
	movl	%esi, %r9d
	movq	%rcx, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, %rdi
	callq	maybe_run
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	do_install_bin_2, .Lfunc_end44-do_install_bin_2
	.cfi_endproc

	.align	16, 0x90
	.type	do_uninstall,@function
do_uninstall:                           # @do_uninstall
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
	subq	$16, %rsp
	movabsq	$.L.str.80, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, %rdi
	callq	g_shell_quote
	movabsq	$.L.str.107, %rdi
	movabsq	$.L.str.83, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, %rdi
	callq	maybe_run
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	do_uninstall, .Lfunc_end45-do_uninstall
	.cfi_endproc

	.align	16, 0x90
	.type	maybe_append_exe,@function
maybe_append_exe:                       # @maybe_append_exe
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end46:
	.size	maybe_append_exe, .Lfunc_end46-maybe_append_exe
	.cfi_endproc

	.align	16, 0x90
	.type	get_user_script_dir,@function
get_user_script_dir:                    # @get_user_script_dir
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
	callq	gimp_directory
	movabsq	$.L.str.108, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	popq	%rbp
	retq
.Lfunc_end47:
	.size	get_user_script_dir, .Lfunc_end47-get_user_script_dir
	.cfi_endproc

	.align	16, 0x90
	.type	get_sys_script_dir,@function
get_sys_script_dir:                     # @get_sys_script_dir
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
	movl	$47, %edi
	callq	get_runtime_prefix
	movabsq	$.L.str.109, %rsi
	movabsq	$.L.str.104, %rdx
	movabsq	$.L.str.105, %rcx
	movabsq	$.L.str.108, %r8
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	popq	%rbp
	retq
.Lfunc_end48:
	.size	get_sys_script_dir, .Lfunc_end48-get_sys_script_dir
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-n"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"--just-print"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"--dry-run"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"--recon"
	.size	.L.str.3, 8

	.type	dry_run,@object         # @dry_run
	.local	dry_run
	.comm	dry_run,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"--help"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"--prefix="
	.size	.L.str.5, 10

	.type	prefix,@object          # @prefix
	.local	prefix
	.comm	prefix,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"--exec-prefix="
	.size	.L.str.6, 15

	.type	exec_prefix,@object     # @exec_prefix
	.local	exec_prefix
	.comm	exec_prefix,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"--msvc-syntax"
	.size	.L.str.7, 14

	.type	msvc_syntax,@object     # @msvc_syntax
	.local	msvc_syntax
	.comm	msvc_syntax,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Ignoring --msvc-syntax\n"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"--"
	.size	.L.str.9, 3

	.type	dirs,@object            # @dirs
	.data
	.align	16
dirs:
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.51
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.60
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.size	dirs, 240

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%s\n"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"--quiet"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"--silent"
	.size	.L.str.12, 9

	.type	silent,@object          # @silent
	.local	silent
	.comm	silent,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"--version"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d.%d.%d\n"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"--includedir"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"--cflags"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"--cflags-noui"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"--cflags-nogimpui"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"--libs"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"--libs-noui"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"--libs-nogimpui"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"--build"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"--build-noui"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"--build-nogimpui"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"--install"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"--install-noui"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"--install-nogimpui"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"--install-admin"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"--install-admin-noui"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"--install-admin-nogimpui"
	.size	.L.str.30, 25

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"--install-bin"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"--install-admin-bin"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"--uninstall-bin"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"--uninstall-admin-bin"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"--install-script"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"--install-admin-script"
	.size	.L.str.36, 23

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"--uninstall-script"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"--uninstall-admin-script"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Unrecognized switch %s\n"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Usage: gimptool-2.0 [OPTION]...\n\nGeneral options:\n  --help                  print this message\n  --quiet, --silent       don't echo build commands\n  --version               print the version of GIMP associated with this script\n  -n, --just-print, --dry-run, --recon\n                          don't actually run any commands; just print them\nDeveloper options:\n  --cflags                print the compiler flags that are necessary to\n                          compile a plug-in\n  --libs                  print the linker flags that are necessary to link a\n                          plug-in\n  --prefix=PREFIX         use PREFIX instead of the installation prefix that\n                          GIMP was built when computing the output for --cflags\n                          and --libs\n  --exec-prefix=PREFIX    use PREFIX instead of the installation exec prefix\n                          that GIMP was built when computing the output for\n                          --cflags and --libs\n  --msvc-syntax           print flags in MSVC syntax\n\nInstallation directory options:\n  --prefix --exec-prefix --bindir --sbindir --libexecdir --datadir --sysconfdir\n  --sharedstatedir --localstatedir --libdir --infodir --mandir --includedir\n  --gimpplugindir --gimpdatadir\n\nThe --cflags and --libs options can be appended with -noui to get appropriate\nsettings for plug-ins which do not use GTK+.\n\nUser options:\n  --build plug-in.c               build a plug-in from a source file\n  --install plug-in.c             same as --build, but installs the built\n                                  plug-in as well\n  --install-bin plug-in           install a compiled plug-in\n  --install-script script.scm     install a script-fu script\n\n  --uninstall-bin plug-in         remove a plug-in again\n  --uninstall-script plug-in      remove a script-fu script\n\nThe --install and --uninstall options have \"admin\" counterparts (with\nprefix --install-admin instead of --install) that can be used instead to\ninstall/uninstall a plug-in or script in the machine directory instead of a\nuser directory.\n\nFor plug-ins which do not use GTK+, the --build and --install options can be\nappended with -noui for appropriate settings. For plug-ins that use GTK+ but\nnot libgimpui, append -nogimpui.\n"
	.size	.L.str.40, 2253

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"CC"
	.size	.L.str.41, 3

	.type	env_cc,@object          # @env_cc
	.local	env_cc
	.comm	env_cc,8,8
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"cl -MD"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/home/juneyoung.lee/llvm-prototypes/llvm-install-3.7.0/bin/clang"
	.size	.L.str.43, 65

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"cl"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"clang"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"CFLAGS"
	.size	.L.str.46, 7

	.type	env_cflags,@object      # @env_cflags
	.local	env_cflags
	.comm	env_cflags,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.zero	1
	.size	.L.str.47, 1

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"LDFLAGS"
	.size	.L.str.48, 8

	.type	env_ldflags,@object     # @env_ldflags
	.local	env_ldflags
	.comm	env_ldflags,8,8
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"LIBS"
	.size	.L.str.49, 5

	.type	env_libs,@object        # @env_libs
	.local	env_libs
	.comm	env_libs,8,8
	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"prefix"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/usr/local"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"exec-prefix"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"bindir"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"/usr/local/bin"
	.size	.L.str.54, 15

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"sbindir"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"/usr/local/sbin"
	.size	.L.str.56, 16

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"libexecdir"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"/usr/local/libexec"
	.size	.L.str.58, 19

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"datadir"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"/usr/local/share"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"datarootdir"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"sysconfdir"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"/usr/local/etc"
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"sharedstatedir"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/usr/local/com"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"localstatedir"
	.size	.L.str.66, 14

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/usr/local/var"
	.size	.L.str.67, 15

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"libdir"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/usr/local/lib"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"infodir"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/usr/local/share/info"
	.size	.L.str.71, 22

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"mandir"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"/usr/local/share/man"
	.size	.L.str.73, 21

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimpplugindir"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/usr/local/lib/gimp/2.0"
	.size	.L.str.75, 24

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimpdatadir"
	.size	.L.str.76, 12

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/usr/local/share/gimp/2.0"
	.size	.L.str.77, 26

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"${prefix}"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"${exec_prefix}"
	.size	.L.str.79, 15

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"/"
	.size	.L.str.80, 2

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"--variable=prefix gimp-2.0"
	.size	.L.str.81, 27

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"pkg-config"
	.size	.L.str.82, 11

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	" "
	.size	.L.str.83, 2

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"r"
	.size	.L.str.84, 2

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Cannot run '%s'\n"
	.size	.L.str.85, 17

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"No output from '%s'\n"
	.size	.L.str.86, 21

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"--variable=includedir gimp-2.0"
	.size	.L.str.87, 31

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"--cflags gimpui-2.0"
	.size	.L.str.88, 20

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"--cflags gimp-2.0"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"--cflags gimp-2.0 gtk+-2.0"
	.size	.L.str.90, 27

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"--libs gimpui-2.0"
	.size	.L.str.91, 18

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"--libs gimp-2.0"
	.size	.L.str.92, 16

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"--libs gimp-2.0 gtk+-2.0"
	.size	.L.str.93, 25

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	".c"
	.size	.L.str.94, 3

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	".cc"
	.size	.L.str.95, 4

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	".cpp"
	.size	.L.str.96, 5

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"plug-in source %s is not a C or C++ file?\n"
	.size	.L.str.97, 43

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"-Fe"
	.size	.L.str.98, 4

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	" -link"
	.size	.L.str.99, 7

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	" -subsystem:windows"
	.size	.L.str.100, 20

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"-o "
	.size	.L.str.101, 4

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"%s %s %s %s%s %s%s %s%s %s %s"
	.size	.L.str.102, 30

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"plug-ins"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"2.0"
	.size	.L.str.105, 4

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"cp"
	.size	.L.str.106, 3

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"rm -f"
	.size	.L.str.107, 6

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"scripts"
	.size	.L.str.108, 8

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"share"
	.size	.L.str.109, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
