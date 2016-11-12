	.text
	.file	"movemail.bc"
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
	subq	$1264, %rsp             # imm = 0x4F0
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -57(%rbp)
	movb	$0, -58(%rbp)
	callq	getgid
	movl	%eax, -64(%rbp)
	callq	getegid
	movl	%eax, -68(%rbp)
	movq	$0, delete_lockname
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str, %rdx
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	getopt
	xorl	%edi, %edi
	movl	%eax, -56(%rbp)
	cmpl	%eax, %edi
	jg	.LBB0_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	subl	$112, %ecx
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	movl	%ecx, -1168(%rbp)       # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_73
.LBB0_73:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1164(%rbp), %eax       # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	jne	.LBB0_5
	jmp	.LBB0_3
.LBB0_3:                                # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, -58(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %sw.bb.3
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, -57(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                # %sw.default
	movl	$1, -4(%rbp)
	jmp	.LBB0_72
.LBB0_6:                                # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_7:                                # %while.end
	movl	-8(%rbp), %eax
	subl	optind, %eax
	cmpl	$2, %eax
	jl	.LBB0_9
# BB#8:                                 # %lor.lhs.false
	movl	-8(%rbp), %eax
	subl	optind, %eax
	cmpl	$3, %eax
	jle	.LBB0_10
.LBB0_9:                                # %if.then
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, -4(%rbp)
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	jmp	.LBB0_72
.LBB0_10:                               # %if.end
	movslq	optind, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movl	optind, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB0_12
# BB#11:                                # %if.then.12
	movabsq	$.L.str.3, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	fatal
.LBB0_12:                               # %if.end.13
	movabsq	$.L.str.4, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB0_17
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	-32(%rbp), %rsi
	movb	-57(%rbp), %cl
	movl	-8(%rbp), %edx
	subl	optind, %edx
	cmpl	$3, %edx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movq	%rsi, -1192(%rbp)       # 8-byte Spill
	movb	%cl, -1193(%rbp)        # 1-byte Spill
	jne	.LBB0_15
# BB#14:                                # %cond.true
	movl	optind, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB0_16
.LBB0_15:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB0_16
.LBB0_16:                               # %cond.end
	movq	-1208(%rbp), %rax       # 8-byte Reload
	movb	-58(%rbp), %cl
	movb	-1193(%rbp), %dl        # 1-byte Reload
	movzbl	%dl, %esi
	andl	$1, %esi
	movzbl	%cl, %edi
	andl	$1, %edi
	movq	-1184(%rbp), %r8        # 8-byte Reload
	movl	%edi, -1212(%rbp)       # 4-byte Spill
	movq	%r8, %rdi
	movq	-1192(%rbp), %r9        # 8-byte Reload
	movl	%esi, -1216(%rbp)       # 4-byte Spill
	movq	%r9, %rsi
	movl	-1216(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movl	-1212(%rbp), %r8d       # 4-byte Reload
	callq	popmail
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_72
.LBB0_17:                               # %if.end.25
	callq	getuid
	movl	%eax, %edi
	callq	setuid
	cmpl	$0, %eax
	jge	.LBB0_19
# BB#18:                                # %if.then.30
	movabsq	$.L.str.5, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	fatal
.LBB0_19:                               # %if.end.31
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.33
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.34
	movl	$17, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	signal
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	fork
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB0_23
# BB#22:                                # %if.then.39
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	fatal
.LBB0_23:                               # %if.end.42
	cmpl	$0, -92(%rbp)
	jne	.LBB0_62
# BB#24:                                # %if.then.45
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	callq	getuid
	movl	%eax, %edi
	callq	setuid
	cmpl	$0, %eax
	jl	.LBB0_26
# BB#25:                                # %lor.lhs.false.51
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	-64(%rbp), %esi
	callq	setregid
	cmpl	$0, %eax
	jge	.LBB0_27
.LBB0_26:                               # %if.then.55
	movabsq	$.L.str.5, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	fatal
.LBB0_27:                               # %if.end.56
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB0_29
# BB#28:                                # %if.then.60
	movq	-24(%rbp), %rdi
	callq	pfatal_with_name
.LBB0_29:                               # %if.end.61
	xorl	%edi, %edi
	callq	umask
	andl	$255, %eax
	movl	%eax, %edi
	callq	umask
	movl	$193, %esi
	movl	$438, %edx              # imm = 0x1B6
	movq	-32(%rbp), %rdi
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	open
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jge	.LBB0_31
# BB#30:                                # %if.then.67
	movq	-32(%rbp), %rdi
	callq	pfatal_with_name
.LBB0_31:                               # %if.end.68
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	-68(%rbp), %esi
	callq	setregid
	cmpl	$0, %eax
	jge	.LBB0_33
# BB#32:                                # %if.then.72
	movabsq	$.L.str.7, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	fatal
.LBB0_33:                               # %if.end.73
	jmp	.LBB0_34
.LBB0_34:                               # %retry_lock
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %esi
	movl	-36(%rbp), %edi
	callq	flock
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jge	.LBB0_40
# BB#35:                                # %if.then.77
                                        #   in Loop: Header=BB0_34 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	cmpl	$5, %eax
	jg	.LBB0_39
# BB#36:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_34 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	je	.LBB0_38
# BB#37:                                # %lor.lhs.false.83
                                        #   in Loop: Header=BB0_34 Depth=1
	callq	__errno_location
	cmpl	$16, (%rax)
	jne	.LBB0_39
.LBB0_38:                               # %if.then.87
                                        #   in Loop: Header=BB0_34 Depth=1
	movl	$1, %edi
	callq	sleep
	movl	%eax, -1232(%rbp)       # 4-byte Spill
	jmp	.LBB0_34
.LBB0_39:                               # %if.end.89
	movq	-24(%rbp), %rdi
	callq	pfatal_with_name
.LBB0_40:                               # %if.end.90
	jmp	.LBB0_41
.LBB0_41:                               # %while.body.92
                                        # =>This Inner Loop Header: Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	leaq	-1136(%rbp), %rsi
	movl	-36(%rbp), %edi
	callq	read
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB0_43
# BB#42:                                # %if.then.96
	movq	-24(%rbp), %rdi
	callq	pfatal_with_name
.LBB0_43:                               # %if.end.97
                                        #   in Loop: Header=BB0_41 Depth=1
	leaq	-1136(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edi
	movq	-48(%rbp), %rdx
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	write
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB0_45
# BB#44:                                # %if.then.102
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -1140(%rbp)
	movq	-32(%rbp), %rdi
	callq	unlink
	movl	-1140(%rbp), %ecx
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	movl	%ecx, -1248(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	-1248(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rdi
	callq	pfatal_with_name
.LBB0_45:                               # %if.end.106
                                        #   in Loop: Header=BB0_41 Depth=1
	cmpq	$1024, -48(%rbp)        # imm = 0x400
	jae	.LBB0_47
# BB#46:                                # %if.then.109
	jmp	.LBB0_48
.LBB0_47:                               # %if.end.110
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_41
.LBB0_48:                               # %while.end.111
	movl	-40(%rbp), %edi
	callq	fsync
	cmpl	$0, %eax
	je	.LBB0_51
# BB#49:                                # %land.lhs.true.115
	callq	__errno_location
	cmpl	$22, (%rax)
	je	.LBB0_51
# BB#50:                                # %if.then.119
	movq	-32(%rbp), %rdi
	callq	pfatal_and_delete
.LBB0_51:                               # %if.end.120
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	-64(%rbp), %esi
	callq	setregid
	cmpl	$0, %eax
	jge	.LBB0_53
# BB#52:                                # %if.then.124
	movabsq	$.L.str.5, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	fatal
.LBB0_53:                               # %if.end.125
	movl	-40(%rbp), %edi
	callq	close
	cmpl	$0, %eax
	je	.LBB0_55
# BB#54:                                # %if.then.129
	movq	-32(%rbp), %rdi
	callq	pfatal_and_delete
.LBB0_55:                               # %if.end.130
	testb	$1, -57(%rbp)
	jne	.LBB0_59
# BB#56:                                # %if.then.132
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %edi
	callq	ftruncate
	cmpl	$0, %eax
	je	.LBB0_58
# BB#57:                                # %if.then.136
	movq	-24(%rbp), %rdi
	callq	pfatal_with_name
.LBB0_58:                               # %if.end.137
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.138
	movl	-36(%rbp), %edi
	callq	close
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	-68(%rbp), %esi
	movl	%eax, -1252(%rbp)       # 4-byte Spill
	callq	setregid
	cmpl	$0, %eax
	jge	.LBB0_61
# BB#60:                                # %if.then.143
	movabsq	$.L.str.7, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	fatal
.LBB0_61:                               # %if.end.144
	movl	$0, -4(%rbp)
	jmp	.LBB0_72
.LBB0_62:                               # %if.end.145
	leaq	-52(%rbp), %rsi
	xorl	%edx, %edx
	movl	-92(%rbp), %edi
	callq	waitpid
	cmpl	$0, %eax
	jge	.LBB0_64
# BB#63:                                # %if.then.149
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	fatal
.LBB0_64:                               # %if.end.152
	movl	-52(%rbp), %eax
	movl	%eax, -1144(%rbp)
	movl	-1144(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	je	.LBB0_66
# BB#65:                                # %if.then.156
	movl	$1, -4(%rbp)
	jmp	.LBB0_72
.LBB0_66:                               # %if.else
	movl	-52(%rbp), %eax
	movl	%eax, -1152(%rbp)
	movl	-1152(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_68
# BB#67:                                # %if.then.163
	movl	-52(%rbp), %eax
	movl	%eax, -1160(%rbp)
	movl	-1160(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_72
.LBB0_68:                               # %if.end.169
	jmp	.LBB0_69
.LBB0_69:                               # %if.end.170
	cmpq	$0, -80(%rbp)
	je	.LBB0_71
# BB#70:                                # %if.then.172
	movq	-80(%rbp), %rdi
	callq	unlink
	movl	%eax, -1256(%rbp)       # 4-byte Spill
.LBB0_71:                               # %if.end.174
	movl	$0, -4(%rbp)
.LBB0_72:                               # %return
	movl	-4(%rbp), %eax
	addq	$1264, %rsp             # imm = 0x4F0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	fatal,@function
fatal:                                  # @fatal
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, delete_lockname
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	delete_lockname, %rdi
	callq	unlink
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	error
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	fatal, .Lfunc_end1-fatal
	.cfi_endproc

	.align	16, 0x90
	.type	popmail,@function
popmail:                                # @popmail
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
	subq	$288, %rsp              # imm = 0x120
	movb	%r8b, %al
	movb	%dl, %r9b
	movl	$58, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %r9b
	movb	%r9b, -25(%rbp)
	movq	%rcx, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-16(%rbp), %rdi
	movl	%edx, %esi
	callq	strchr
	movq	%rax, -112(%rbp)
	cmpq	$0, %rax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -112(%rbp)
	movb	$0, (%rax)
.LBB2_2:                                # %if.end
	movl	$4, %ecx
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	pop_open
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.13, %rdi
	movabsq	$pop_error, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	error
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_4:                                # %if.end.5
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movq	-80(%rbp), %rdi
	callq	pop_stat
	cmpl	$0, %eax
	je	.LBB2_6
# BB#5:                                 # %if.then.8
	movabsq	$.L.str.14, %rdi
	movabsq	$pop_error, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	error
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_6:                                # %if.end.9
	cmpl	$0, -48(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then.11
	movq	-80(%rbp), %rdi
	callq	pop_close
	movl	$0, -4(%rbp)
	jmp	.LBB2_47
.LBB2_8:                                # %if.end.12
	movl	$193, %esi
	movl	$438, %edx              # imm = 0x1B6
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jge	.LBB2_10
# BB#9:                                 # %if.then.14
	movq	-80(%rbp), %rdi
	callq	pop_close
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.15, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	error
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_10:                               # %if.end.17
	movl	-60(%rbp), %edi
	movl	%edi, -268(%rbp)        # 4-byte Spill
	callq	getuid
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-268(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	callq	fchown
	cmpl	$0, %eax
	je	.LBB2_15
# BB#11:                                # %if.then.21
	callq	__errno_location
	leaq	-264(%rbp), %rsi
	movl	(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movl	-60(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	jne	.LBB2_13
# BB#12:                                # %lor.lhs.false
	movl	-236(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	getuid
	movl	-272(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB2_14
.LBB2_13:                               # %if.then.27
	movq	-80(%rbp), %rdi
	callq	pop_close
	movl	-116(%rbp), %edi
	callq	strerror
	movabsq	$.L.str.16, %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	error
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_14:                               # %if.end.29
	jmp	.LBB2_15
.LBB2_15:                               # %if.end.30
	movabsq	$.L.str.17, %rsi
	movl	-60(%rbp), %edi
	callq	fdopen
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_17
# BB#16:                                # %if.then.33
	movq	-80(%rbp), %rdi
	callq	pop_close
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	error
	movl	-60(%rbp), %edi
	callq	close
	movq	-24(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	unlink
	movl	$1, -4(%rbp)
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB2_47
.LBB2_17:                               # %if.end.38
	testb	$1, -41(%rbp)
	je	.LBB2_19
# BB#18:                                # %if.then.40
	movl	-48(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	$1, -88(%rbp)
	movl	$-1, -92(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else
	movl	$1, -84(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	$1, -92(%rbp)
.LBB2_20:                               # %if.end.41
	movl	-84(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB2_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	imull	-92(%rbp), %eax
	movl	-88(%rbp), %ecx
	imull	-92(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB2_31
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	-72(%rbp), %rdi
	callq	mbx_delimit_begin
	testb	$1, %al
	jne	.LBB2_23
	jmp	.LBB2_26
.LBB2_23:                               # %land.lhs.true
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	-80(%rbp), %rdi
	movl	-56(%rbp), %esi
	movq	-72(%rbp), %rdx
	callq	pop_retr
	testb	$1, %al
	jne	.LBB2_24
	jmp	.LBB2_26
.LBB2_24:                               # %land.lhs.true.46
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	-72(%rbp), %rdi
	callq	mbx_delimit_end
	testb	$1, %al
	jne	.LBB2_25
	jmp	.LBB2_26
.LBB2_25:                               # %land.lhs.true.48
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	-72(%rbp), %rdi
	callq	fflush
	cmpl	$0, %eax
	je	.LBB2_29
.LBB2_26:                               # %if.then.51
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB2_28
# BB#27:                                # %if.then.54
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	error
.LBB2_28:                               # %if.end.57
	movq	-80(%rbp), %rdi
	callq	pop_close
	movq	-72(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB2_47
.LBB2_29:                               # %if.end.59
                                        #   in Loop: Header=BB2_21 Depth=1
	jmp	.LBB2_30
.LBB2_30:                               # %for.inc
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	-92(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_21
.LBB2_31:                               # %for.end
	movl	-60(%rbp), %edi
	callq	fsync
	cmpl	$0, %eax
	je	.LBB2_34
# BB#32:                                # %land.lhs.true.62
	callq	__errno_location
	cmpl	$22, (%rax)
	je	.LBB2_34
# BB#33:                                # %if.then.65
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	error
	movq	-72(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB2_47
.LBB2_34:                               # %if.end.69
	movq	-72(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB2_36
# BB#35:                                # %if.then.72
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	error
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_36:                               # %if.end.75
	testb	$1, -25(%rbp)
	jne	.LBB2_44
# BB#37:                                # %if.then.77
	movl	$1, -56(%rbp)
.LBB2_38:                               # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB2_43
# BB#39:                                # %for.body.80
                                        #   in Loop: Header=BB2_38 Depth=1
	movq	-80(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	pop_delete
	cmpl	$0, %eax
	je	.LBB2_41
# BB#40:                                # %if.then.83
	movabsq	$.L.str.22, %rdi
	movabsq	$pop_error, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	error
	movq	-80(%rbp), %rdi
	callq	pop_close
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_41:                               # %if.end.84
                                        #   in Loop: Header=BB2_38 Depth=1
	jmp	.LBB2_42
.LBB2_42:                               # %for.inc.85
                                        #   in Loop: Header=BB2_38 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB2_38
.LBB2_43:                               # %for.end.86
	jmp	.LBB2_44
.LBB2_44:                               # %if.end.87
	movq	-80(%rbp), %rdi
	callq	pop_quit
	cmpl	$0, %eax
	je	.LBB2_46
# BB#45:                                # %if.then.90
	movabsq	$.L.str.22, %rdi
	movabsq	$pop_error, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	error
	movl	$1, -4(%rbp)
	jmp	.LBB2_47
.LBB2_46:                               # %if.end.91
	movl	$0, -4(%rbp)
.LBB2_47:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	popmail, .Lfunc_end2-popmail
	.cfi_endproc

	.align	16, 0x90
	.type	pfatal_with_name,@function
pfatal_with_name:                       # @pfatal_with_name
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
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	fatal
.Lfunc_end3:
	.size	pfatal_with_name, .Lfunc_end3-pfatal_with_name
	.cfi_endproc

	.align	16, 0x90
	.type	pfatal_and_delete,@function
pfatal_and_delete:                      # @pfatal_and_delete
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
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	unlink
	movabsq	$.L.str.12, %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	fatal
.Lfunc_end4:
	.size	pfatal_and_delete, .Lfunc_end4-pfatal_and_delete
	.cfi_endproc

	.align	16, 0x90
	.type	error,@function
error:                                  # @error
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
	subq	$48, %rsp
	movabsq	$.L.str.9, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	stderr, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	cmpq	$0, -24(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	stderr, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then.3
	movq	stderr, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %if.else.5
	movabsq	$.L.str.10, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.7
	movabsq	$.L.str.11, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	error, .Lfunc_end5-error
	.cfi_endproc

	.align	16, 0x90
	.type	mbx_delimit_begin,@function
mbx_delimit_begin:                      # @mbx_delimit_begin
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	time
	leaq	-24(%rbp), %rdi
	movq	%rax, -24(%rbp)
	callq	localtime
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movl	$100, %eax
	movl	%eax, %esi
	movabsq	$.L.str.23, %rdx
	leaq	-144(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	strftime
	cmpq	$0, %rax
	jne	.LBB6_4
# BB#3:                                 # %if.then.4
	callq	__errno_location
	movl	$75, (%rax)
	movb	$0, -1(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.end.6
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	setle	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
.LBB6_5:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mbx_delimit_begin, .Lfunc_end6-mbx_delimit_begin
	.cfi_endproc

	.align	16, 0x90
	.type	pop_retr,@function
pop_retr:                               # @pop_retr
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
	subq	$64, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	%rax, %rdx
	callq	pop_retrieve_first
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	movabsq	$pop_error, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	error
	callq	__errno_location
	movl	$0, (%rax)
	movb	$0, -1(%rbp)
	jmp	.LBB7_12
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	pop_retrieve_next
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jl	.LBB7_9
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.4
	jmp	.LBB7_9
.LBB7_6:                                # %if.end.5
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	mbx_write
	testb	$1, %al
	jne	.LBB7_8
# BB#7:                                 # %if.then.7
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	pop_close
	movl	-48(%rbp), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movb	$0, -1(%rbp)
	jmp	.LBB7_12
.LBB7_8:                                # %if.end.10
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_3
.LBB7_9:                                # %while.end
	cmpl	$0, -44(%rbp)
	je	.LBB7_11
# BB#10:                                # %if.then.12
	movabsq	$.L.str.22, %rdi
	movabsq	$pop_error, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	error
	callq	__errno_location
	movl	$0, (%rax)
	movb	$0, -1(%rbp)
	jmp	.LBB7_12
.LBB7_11:                               # %if.end.14
	movb	$1, -1(%rbp)
.LBB7_12:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pop_retr, .Lfunc_end7-pop_retr
	.cfi_endproc

	.align	16, 0x90
	.type	mbx_delimit_end,@function
mbx_delimit_end:                        # @mbx_delimit_end
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
	subq	$16, %rsp
	movl	$10, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	xorl	%edi, %edi
	cmpl	%eax, %edi
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mbx_delimit_end, .Lfunc_end8-mbx_delimit_end
	.cfi_endproc

	.align	16, 0x90
	.type	mbx_write,@function
mbx_write:                              # @mbx_write
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$31, %esi
	jne	.LBB9_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.24, %rdi
	movq	-32(%rbp), %rsi
	callq	fputs
	cmpl	$0, %eax
	jge	.LBB9_3
# BB#2:                                 # %if.then.4
	movb	$0, -1(%rbp)
	jmp	.LBB9_7
.LBB9_3:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
.LBB9_4:                                # %if.end.5
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	fwrite
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	movb	%r9b, -33(%rbp)         # 1-byte Spill
	jne	.LBB9_6
# BB#5:                                 # %land.rhs
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	callq	fputc
	xorl	%edi, %edi
	cmpl	%eax, %edi
	setle	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB9_6:                                # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB9_7:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	mbx_write, .Lfunc_end9-mbx_write
	.cfi_endproc

	.type	delete_lockname,@object # @delete_lockname
	.local	delete_lockname
	.comm	delete_lockname,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pr"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Usage: movemail [-p] [-r] inbox destfile%s\n"
	.size	.L.str.1, 44

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" [POP-password]"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Destination file name is empty"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"po:"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Failed to drop privileges"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Error in fork; %s"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Failed to regain privileges"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Error in waitpid; %s"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"movemail: "
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s for %s"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Error connecting to POP server: %s"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Error getting message count from POP server: %s"
	.size	.L.str.14, 48

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Error in open: %s, %s"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Error in fchown: %s, %s"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"wb"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Error in fdopen: %s"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Error in POP retrieving: %s"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Error in fsync: %s"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Error in fclose: %s"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Error from POP server: %s"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"From movemail %a %b %e %T %Y\n"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"^_"
	.size	.L.str.24, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
