	.text
	.file	"hexl.bc"
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
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	(%rsi), %rax
	movq	%rax, progname
	movl	-8(%rbp), %edi
	addl	$-1, %edi
	movl	%edi, -8(%rbp)
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB0_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx), %eax
	cmpl	$45, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB0_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -105(%rbp)         # 1-byte Spill
.LBB0_4:                                # %land.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_40
.LBB0_5:                                # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_7
# BB#6:                                 # %if.then
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_40
.LBB0_7:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.1, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.2, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_10
.LBB0_9:                                # %if.then.12
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, un_flag
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_38
.LBB0_10:                               # %if.else.15
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$16, base
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_37
.LBB0_12:                               # %if.else.21
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.4, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, iso_flag
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_36
.LBB0_14:                               # %if.else.27
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$8, base
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_35
.LBB0_16:                               # %if.else.33
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.6, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_18
# BB#17:                                # %if.then.36
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, endian
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_34
.LBB0_18:                               # %if.else.39
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.7, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_20
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$0, endian
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_33
.LBB0_20:                               # %if.else.45
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then.48
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, group_by
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_32
.LBB0_22:                               # %if.else.51
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_24
# BB#23:                                # %if.then.54
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, group_by
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_31
.LBB0_24:                               # %if.else.57
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then.60
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$3, group_by
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_30
.LBB0_26:                               # %if.else.63
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_28
# BB#27:                                # %if.then.66
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$7, group_by
	movb	$0, endian
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.69
	movabsq	$.L.str.12, %rsi
	movq	stderr, %rdi
	movq	progname, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	usage
.LBB0_29:                               # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               # %if.end.71
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.72
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.73
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.74
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.75
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.76
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.77
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.78
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               # %if.end.79
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_39
.LBB0_39:                               # %if.end.80
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_40:                               # %while.end
	jmp	.LBB0_41
.LBB0_41:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_85 Depth 2
                                        #       Child Loop BB0_86 Depth 3
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_43
# BB#42:                                # %if.then.83
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	stdin, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_49
.LBB0_43:                               # %if.else.84
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	$.L.str.13, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_45
# BB#44:                                # %if.then.88
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	stdin, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_48
.LBB0_45:                               # %if.else.89
                                        #   in Loop: Header=BB0_41 Depth=1
	movabsq	$.L.str.14, %rsi
	movq	-64(%rbp), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_47
# BB#46:                                # %if.then.93
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-64(%rbp), %rdi
	callq	perror
	jmp	.LBB0_119
.LBB0_47:                               # %if.end.94
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_48
.LBB0_48:                               # %if.end.95
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_49
.LBB0_49:                               # %if.end.96
                                        #   in Loop: Header=BB0_41 Depth=1
	testb	$1, un_flag
	je	.LBB0_84
# BB#50:                                # %if.then.98
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	stdout, %rdi
	callq	fileno
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	set_binary_mode
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB0_51:                               # %for.cond
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_70 Depth 3
	movl	$1, %eax
	movl	%eax, %esi
	movl	$10, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movl	$0, -72(%rbp)
	movq	-56(%rbp), %rcx
	callq	fread
	cmpq	$10, %rax
	je	.LBB0_53
# BB#52:                                # %if.then.104
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_83
.LBB0_53:                               # %if.end.105
                                        #   in Loop: Header=BB0_51 Depth=2
	movl	$0, -68(%rbp)
.LBB0_54:                               # %for.cond.106
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$16, -68(%rbp)
	jge	.LBB0_68
# BB#55:                                # %for.body
                                        #   in Loop: Header=BB0_54 Depth=3
	movq	-56(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -72(%rbp)
	cmpl	$32, %eax
	je	.LBB0_57
# BB#56:                                # %lor.lhs.false.112
                                        #   in Loop: Header=BB0_54 Depth=3
	cmpl	$-1, -72(%rbp)
	jne	.LBB0_58
.LBB0_57:                               # %if.then.115
                                        #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_68
.LBB0_58:                               # %if.end.116
                                        #   in Loop: Header=BB0_54 Depth=3
	movq	-56(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -76(%rbp)
	movslq	-72(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movzwl	(%rax,%rdi,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	je	.LBB0_60
# BB#59:                                # %cond.true
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-72(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB0_61
.LBB0_60:                               # %cond.false
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-72(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB0_61:                               # %cond.end
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-132(%rbp), %eax        # 4-byte Reload
	shll	$4, %eax
	movslq	-76(%rbp), %rcx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	je	.LBB0_63
# BB#62:                                # %cond.true.129
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-76(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB0_64
.LBB0_63:                               # %cond.false.131
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-76(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB0_64:                               # %cond.end.134
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %edi
	callq	putchar
	movl	-68(%rbp), %ecx
	andl	group_by, %ecx
	cmpl	group_by, %ecx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jne	.LBB0_66
# BB#65:                                # %if.then.141
                                        #   in Loop: Header=BB0_54 Depth=3
	movq	-56(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB0_66:                               # %if.end.143
                                        #   in Loop: Header=BB0_54 Depth=3
	jmp	.LBB0_67
.LBB0_67:                               # %for.inc
                                        #   in Loop: Header=BB0_54 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_54
.LBB0_68:                               # %for.end
                                        #   in Loop: Header=BB0_51 Depth=2
	cmpl	$32, -72(%rbp)
	jne	.LBB0_77
# BB#69:                                # %if.then.146
                                        #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_70
.LBB0_70:                               # %while.cond.147
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -72(%rbp)
	cmpl	$10, %eax
	movb	%dl, -157(%rbp)         # 1-byte Spill
	je	.LBB0_72
# BB#71:                                # %land.rhs.151
                                        #   in Loop: Header=BB0_70 Depth=3
	cmpl	$-1, -72(%rbp)
	setne	%al
	movb	%al, -157(%rbp)         # 1-byte Spill
.LBB0_72:                               # %land.end.154
                                        #   in Loop: Header=BB0_70 Depth=3
	movb	-157(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_73
	jmp	.LBB0_74
.LBB0_73:                               # %while.body.155
                                        #   in Loop: Header=BB0_70 Depth=3
	jmp	.LBB0_70
.LBB0_74:                               # %while.end.156
                                        #   in Loop: Header=BB0_51 Depth=2
	cmpl	$-1, -72(%rbp)
	jne	.LBB0_76
# BB#75:                                # %if.then.159
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_83
.LBB0_76:                               # %if.end.160
                                        #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_82
.LBB0_77:                               # %if.else.161
                                        #   in Loop: Header=BB0_51 Depth=2
	cmpl	$16, -68(%rbp)
	jge	.LBB0_79
# BB#78:                                # %if.then.164
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_83
.LBB0_79:                               # %if.end.165
                                        #   in Loop: Header=BB0_51 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movl	$18, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movq	-56(%rbp), %rcx
	callq	fread
	cmpq	$18, %rax
	je	.LBB0_81
# BB#80:                                # %if.then.170
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_83
.LBB0_81:                               # %if.end.171
                                        #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_82
.LBB0_82:                               # %if.end.172
                                        #   in Loop: Header=BB0_51 Depth=2
	jmp	.LBB0_51
.LBB0_83:                               # %for.end.173
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_116
.LBB0_84:                               # %if.else.174
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rdi
	callq	fileno
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	set_binary_mode
	movq	$0, -24(%rbp)
	movb	$32, -48(%rbp)
	movb	$0, -31(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB0_85:                               # %for.cond.179
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
.LBB0_86:                               # %for.cond.182
                                        #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$16, -100(%rbp)
	jge	.LBB0_110
# BB#87:                                # %for.body.185
                                        #   in Loop: Header=BB0_86 Depth=3
	movq	-56(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -104(%rbp)
	cmpl	$-1, %eax
	jne	.LBB0_91
# BB#88:                                # %if.then.189
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$0, -100(%rbp)
	jne	.LBB0_90
# BB#89:                                # %if.then.191
                                        #   in Loop: Header=BB0_85 Depth=2
	jmp	.LBB0_110
.LBB0_90:                               # %if.end.192
                                        #   in Loop: Header=BB0_86 Depth=3
	movabsq	$.L.str.15, %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movb	$0, -48(%rbp,%rsi)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB0_106
.LBB0_91:                               # %if.else.197
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$0, -100(%rbp)
	jne	.LBB0_93
# BB#92:                                # %if.then.199
                                        #   in Loop: Header=BB0_86 Depth=3
	movabsq	$.L.str.16, %rdi
	movq	-24(%rbp), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB0_93:                               # %if.end.202
                                        #   in Loop: Header=BB0_86 Depth=3
	testb	$1, iso_flag
	je	.LBB0_100
# BB#94:                                # %if.then.204
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$32, -104(%rbp)
	jl	.LBB0_97
# BB#95:                                # %lor.lhs.false.207
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$127, -104(%rbp)
	jl	.LBB0_98
# BB#96:                                # %land.lhs.true.210
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$160, -104(%rbp)
	jge	.LBB0_98
.LBB0_97:                               # %cond.true.213
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	$46, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB0_99
.LBB0_98:                               # %cond.false.214
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	-104(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB0_99:                               # %cond.end.215
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	-176(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%cl, -48(%rbp,%rdx)
	jmp	.LBB0_105
.LBB0_100:                              # %if.else.221
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$32, -104(%rbp)
	jl	.LBB0_102
# BB#101:                               # %lor.lhs.false.224
                                        #   in Loop: Header=BB0_86 Depth=3
	cmpl	$127, -104(%rbp)
	jl	.LBB0_103
.LBB0_102:                              # %cond.true.227
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	$46, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB0_104
.LBB0_103:                              # %cond.false.228
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	-104(%rbp), %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB0_104:                              # %cond.end.229
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	-180(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%cl, -48(%rbp,%rdx)
.LBB0_105:                              # %if.end.235
                                        #   in Loop: Header=BB0_86 Depth=3
	movabsq	$.L.str.17, %rdi
	movl	-104(%rbp), %eax
	addl	$0, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB0_106:                              # %if.end.238
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	-100(%rbp), %eax
	andl	group_by, %eax
	cmpl	group_by, %eax
	jne	.LBB0_108
# BB#107:                               # %if.then.242
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	$32, %edi
	callq	putchar
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB0_108:                              # %if.end.244
                                        #   in Loop: Header=BB0_86 Depth=3
	jmp	.LBB0_109
.LBB0_109:                              # %for.inc.245
                                        #   in Loop: Header=BB0_86 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_86
.LBB0_110:                              # %for.end.247
                                        #   in Loop: Header=BB0_85 Depth=2
	cmpl	$0, -100(%rbp)
	je	.LBB0_112
# BB#111:                               # %if.then.249
                                        #   in Loop: Header=BB0_85 Depth=2
	leaq	-48(%rbp), %rdi
	callq	puts
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB0_112:                              # %if.end.252
                                        #   in Loop: Header=BB0_85 Depth=2
	cmpl	$-1, -104(%rbp)
	jne	.LBB0_114
# BB#113:                               # %if.then.255
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_115
.LBB0_114:                              # %if.end.256
                                        #   in Loop: Header=BB0_85 Depth=2
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_85
.LBB0_115:                              # %for.end.258
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_116
.LBB0_116:                              # %if.end.259
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rax
	cmpq	stdin, %rax
	je	.LBB0_118
# BB#117:                               # %if.then.262
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rdi
	callq	fclose
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB0_118:                              # %if.end.264
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_119
.LBB0_119:                              # %do.cond
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_41
# BB#120:                               # %do.end
	xorl	%eax, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.globl	usage
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
	movabsq	$.L.str.18, %rsi
	movq	stderr, %rdi
	movq	progname, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	exit
.Lfunc_end1:
	.size	usage, .Lfunc_end1-usage
	.cfi_endproc

	.type	base,@object            # @base
	.data
	.globl	base
	.align	4
base:
	.long	16                      # 0x10
	.size	base, 4

	.type	un_flag,@object         # @un_flag
	.bss
	.globl	un_flag
un_flag:
	.byte	0                       # 0x0
	.size	un_flag, 1

	.type	iso_flag,@object        # @iso_flag
	.globl	iso_flag
iso_flag:
	.byte	0                       # 0x0
	.size	iso_flag, 1

	.type	endian,@object          # @endian
	.data
	.globl	endian
endian:
	.byte	1                       # 0x1
	.size	endian, 1

	.type	group_by,@object        # @group_by
	.globl	group_by
	.align	4
group_by:
	.long	1                       # 0x1
	.size	group_by, 4

	.type	progname,@object        # @progname
	.comm	progname,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-un"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-de"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-hex"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-iso"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-oct"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-big-endian"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-little-endian"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-group-by-8-bits"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-group-by-16-bits"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-group-by-32-bits"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-group-by-64-bits"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: invalid switch: \"%s\".\n"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"-"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"r"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"  "
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%08lx: "
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%02x"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"usage: %s [-de] [-iso]\n"
	.size	.L.str.18, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
