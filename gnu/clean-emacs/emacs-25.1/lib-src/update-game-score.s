	.text
	.file	"update-game-score.bc"
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
	subq	$256, %rsp              # imm = 0x100
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$1152921504606846975, %rdx # imm = 0xFFFFFFFFFFFFFFF
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -88(%rbp)
	movb	$0, -113(%rbp)
	movq	%rdx, -144(%rbp)
	movq	%rcx, %rdi
	callq	time
	movl	%eax, %r8d
	movl	%r8d, %edi
	callq	srand
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str, %rdx
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	getopt
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	je	.LBB0_16
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$100, %ecx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_51
.LBB0_51:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB0_3
	jmp	.LBB0_52
.LBB0_52:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB0_6
	jmp	.LBB0_53
.LBB0_53:                               # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB0_5
	jmp	.LBB0_14
.LBB0_3:                                # %sw.bb
	xorl	%edi, %edi
	callq	usage
.LBB0_4:                                # %sw.bb.3
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB0_15
.LBB0_5:                                # %sw.bb.4
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$1, -113(%rbp)
	jmp	.LBB0_15
.LBB0_6:                                # %sw.bb.5
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	-48(%rbp), %rsi
	movl	$10, %edx
	movq	optarg, %rdi
	callq	strtoimax
	movq	%rax, -152(%rbp)
	movq	optarg, %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_9
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_9
# BB#8:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -152(%rbp)
	jge	.LBB0_10
.LBB0_9:                                # %if.then
	movl	$1, %edi
	callq	usage
.LBB0_10:                               # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, -152(%rbp)
	jae	.LBB0_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               # %cond.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %sw.default
	movl	$1, %edi
	callq	usage
.LBB0_15:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_16:                               # %while.end
	movl	-8(%rbp), %eax
	subl	optind, %eax
	cmpl	$3, %eax
	je	.LBB0_18
# BB#17:                                # %if.then.17
	movl	$1, %edi
	callq	usage
.LBB0_18:                               # %if.end.18
	callq	getuid
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	geteuid
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	setne	%dl
	andb	$1, %dl
	movb	%dl, -21(%rbp)
	callq	getgid
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	getegid
	movl	-200(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	setne	%dl
	andb	$1, %dl
	movb	%dl, -22(%rbp)
	testb	$1, -21(%rbp)
	je	.LBB0_21
# BB#19:                                # %land.lhs.true
	testb	$1, -22(%rbp)
	je	.LBB0_21
# BB#20:                                # %if.then.32
	movabsq	$.L.str.1, %rdi
	callq	lose
.LBB0_21:                               # %if.end.33
	movb	$1, %al
	testb	$1, -21(%rbp)
	movb	%al, -201(%rbp)         # 1-byte Spill
	jne	.LBB0_23
# BB#22:                                # %lor.rhs
	movb	-22(%rbp), %al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB0_23:                               # %lor.end
	movb	-201(%rbp), %al         # 1-byte Reload
	movq	-88(%rbp), %rsi
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, %edi
	callq	get_prefix
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	strlen
	movslq	optind, %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-216(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, %rdi
	callq	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_25
# BB#24:                                # %if.then.44
	movabsq	$.L.str.2, %rdi
	callq	lose_syserr
.LBB0_25:                               # %if.end.45
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	stpcpy
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -160(%rbp)
	movb	$47, (%rax)
	movq	-160(%rbp), %rdi
	movslq	optind, %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rax,8), %rsi
	callq	strcpy
	movl	optind, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi,%rsi,8), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	normalize_integer
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_27
# BB#26:                                # %if.then.56
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movl	optind, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$1, %r8d
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.LBB0_27:                               # %if.end.61
	callq	get_user_id
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_29
# BB#28:                                # %if.then.64
	movabsq	$.L.str.4, %rdi
	callq	lose_syserr
.LBB0_29:                               # %if.end.65
	movl	optind, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	strlen
	cmpq	$1024, %rax             # imm = 0x400
	jbe	.LBB0_31
# BB#30:                                # %if.then.72
	movq	-72(%rbp), %rax
	movb	$0, 1024(%rax)
.LBB0_31:                               # %if.end.74
	movl	$10, %esi
	movq	-72(%rbp), %rdi
	callq	strchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_33
# BB#32:                                # %if.then.77
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
.LBB0_33:                               # %if.end.78
	movq	-64(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	-72(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-240(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	callq	malloc
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB0_35
# BB#34:                                # %lor.lhs.false.87
	movabsq	$.L.str.5, %rsi
	movq	-104(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	cmpl	$0, %eax
	jge	.LBB0_36
.LBB0_35:                               # %if.then.92
	movabsq	$.L.str.6, %rdi
	callq	lose_syserr
.LBB0_36:                               # %if.end.93
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	lock_file
	cmpl	$0, %eax
	jge	.LBB0_38
# BB#37:                                # %if.then.97
	movabsq	$.L.str.7, %rdi
	callq	lose_syserr
.LBB0_38:                               # %if.end.98
	leaq	-96(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rcx
	movq	-40(%rbp), %rdi
	callq	read_scores
	cmpl	$0, %eax
	jge	.LBB0_40
# BB#39:                                # %if.then.102
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unlock_file
	movabsq	$.L.str.8, %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	lose_syserr
.LBB0_40:                               # %if.end.104
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	callq	push_score
	cmpl	$0, %eax
	jge	.LBB0_42
# BB#41:                                # %if.then.108
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unlock_file
	movabsq	$.L.str.9, %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	lose_syserr
.LBB0_42:                               # %if.end.110
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movb	-113(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	sort_scores
	movq	-128(%rbp), %rsi
	cmpq	-144(%rbp), %rsi
	jle	.LBB0_46
# BB#43:                                # %if.then.114
	testb	$1, -113(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.116
	movq	-128(%rbp), %rax
	subq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_45:                               # %if.end.118
	movq	-144(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB0_46:                               # %if.end.119
	movl	$420, %eax              # imm = 0x1A4
	movl	$436, %ecx              # imm = 0x1B4
	movq	-40(%rbp), %rdi
	movb	-22(%rbp), %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movq	-96(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movl	%eax, %esi
	callq	write_scores
	cmpl	$0, %eax
	jge	.LBB0_48
# BB#47:                                # %if.then.126
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unlock_file
	movabsq	$.L.str.10, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	lose_syserr
.LBB0_48:                               # %if.end.128
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unlock_file
	cmpl	$0, %eax
	jge	.LBB0_50
# BB#49:                                # %if.then.132
	movabsq	$.L.str.11, %rdi
	callq	lose_syserr
.LBB0_50:                               # %if.end.133
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
	subq	$32, %rsp
	movabsq	$.L.str.12, %rsi
	movl	%edi, -4(%rbp)
	movq	stdout, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.13, %rsi
	movq	stdout, %rdi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.14, %rsi
	movq	stdout, %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.15, %rsi
	movq	stdout, %rdi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.16, %rsi
	movq	stdout, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.17, %rsi
	movq	stdout, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	-4(%rbp), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end1:
	.size	usage, .Lfunc_end1-usage
	.cfi_endproc

	.align	16, 0x90
	.type	lose,@function
lose:                                   # @lose
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
	movabsq	$.L.str.18, %rsi
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end2:
	.size	lose, .Lfunc_end2-lose
	.cfi_endproc

	.align	16, 0x90
	.type	get_prefix,@function
get_prefix:                             # @get_prefix
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
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rsi, -24(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.1
	movabsq	$.L.str.20, %rdi
	callq	lose
.LBB3_4:                                # %if.end.2
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	get_prefix, .Lfunc_end3-get_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	lose_syserr,@function
lose_syserr:                            # @lose_syserr
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movabsq	$.L.str.22, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.21, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end4:
	.size	lose_syserr, .Lfunc_end4-lose_syserr
	.cfi_endproc

	.align	16, 0x90
	.type	normalize_integer,@function
normalize_integer:                      # @normalize_integer
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$10, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB5_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	setne	%sil
	movb	%sil, -33(%rbp)         # 1-byte Spill
.LBB5_3:                                # %land.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_5
.LBB5_4:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_5:                                # %while.end
	movb	$1, %al
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$45, %edx
	sete	%sil
	andb	$1, %sil
	movb	%sil, -17(%rbp)
	testb	$1, -17(%rbp)
	movb	%al, -49(%rbp)          # 1-byte Spill
	jne	.LBB5_7
# BB#6:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	sete	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB5_7:                                # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movsbl	(%rdx), %ecx
	cmpl	$48, %ecx
	jne	.LBB5_12
# BB#8:                                 # %if.then
	jmp	.LBB5_9
.LBB5_9:                                # %while.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	1(%rax), %edx
	cmpl	$48, %edx
	jne	.LBB5_11
# BB#10:                                # %while.body.20
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_9
.LBB5_11:                               # %while.end.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	cmpb	$0, (%rdx)
	setne	%sil
	xorb	$-1, %sil
	xorb	$-1, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movb	-17(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %edi
	andl	%eax, %edi
	cmpl	$0, %edi
	setne	%sil
	andb	$1, %sil
	movb	%sil, -17(%rbp)
	movq	-16(%rbp), %rdx
	cmpb	$0, (%rdx)
	setne	%sil
	xorb	$-1, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movq	-16(%rbp), %rdx
	movslq	%eax, %r8
	subq	%r8, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -16(%rbp)
.LBB5_12:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jg	.LBB5_15
# BB#14:                                # %land.rhs.37
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB5_15:                               # %land.end.41
                                        #   in Loop: Header=BB5_13 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_16
	jmp	.LBB5_18
.LBB5_16:                               # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_17
.LBB5_17:                               # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_13
.LBB5_18:                               # %for.end
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB5_21
.LBB5_20:                               # %if.then.47
	callq	__errno_location
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB5_24
.LBB5_21:                               # %if.end.49
	testb	$1, -17(%rbp)
	je	.LBB5_23
# BB#22:                                # %if.then.51
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$45, -1(%rax)
.LBB5_23:                               # %if.end.53
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	normalize_integer, .Lfunc_end5-normalize_integer
	.cfi_endproc

	.align	16, 0x90
	.type	get_user_id,@function
get_user_id:                            # @get_user_id
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
	subq	$48, %rsp
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#1:                                 # %lor.lhs.false
	movl	$32, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB6_3
# BB#2:                                 # %lor.lhs.false.4
	movl	$10, %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB6_6
.LBB6_3:                                # %if.then
	callq	getuid
	movl	$25, %ecx
	movl	%ecx, %edi
	movl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, -24(%rbp)
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.11
	movabsq	$.L.str.23, %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB6_5:                                # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.end.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_user_id, .Lfunc_end6-get_user_id
	.cfi_endproc

	.align	16, 0x90
	.type	lock_file,@function
lock_file:                              # @lock_file
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
	subq	$224, %rsp
	movabsq	$.L.str.28, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -180(%rbp)
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	-192(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	$60, %rsi
	movq	%rsi, %rdi
	callq	malloc
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB7_15
.LBB7_2:                                # %if.end
	movq	-200(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	stpcpy
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	-200(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$192, %esi
	movl	$384, %edx              # imm = 0x180
	movq	-200(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB7_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	callq	__errno_location
	cmpl	$17, (%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.9
	movl	$-1, -4(%rbp)
	jmp	.LBB7_15
.LBB7_6:                                # %if.end.10
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$5, %eax
	movl	-180(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -180(%rbp)
	cmpl	-180(%rbp), %eax
	jl	.LBB7_9
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB7_3 Depth=1
	leaq	-176(%rbp), %rsi
	movq	-200(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB7_13
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	$3600, %ecx             # imm = 0xE10
	movl	%ecx, %edi
	subq	-72(%rbp), %rax
	cmpq	%rax, %rdi
	jge	.LBB7_13
.LBB7_9:                                # %if.then.16
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-200(%rbp), %rdi
	callq	unlink
	cmpl	$0, %eax
	je	.LBB7_12
# BB#10:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB7_3 Depth=1
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB7_12
# BB#11:                                # %if.then.22
	movl	$-1, -4(%rbp)
	jmp	.LBB7_15
.LBB7_12:                               # %if.end.23
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$0, -180(%rbp)
.LBB7_13:                               # %if.end.24
                                        #   in Loop: Header=BB7_3 Depth=1
	callq	rand
	andl	$1, %eax
	addl	$1, %eax
	movl	%eax, %edi
	callq	sleep
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB7_3
.LBB7_14:                               # %while.end
	movl	-28(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB7_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lock_file, .Lfunc_end7-lock_file
	.cfi_endproc

	.align	16, 0x90
	.type	read_scores,@function
read_scores:                            # @read_scores
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
	subq	$256, %rsp              # imm = 0x100
	movabsq	$.L.str.24, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_2:                                # %if.end
	movq	-224(%rbp), %rdi
	callq	fileno
	leaq	-216(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_4:                                # %if.end.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-168(%rbp), %rcx
	jg	.LBB8_6
# BB#5:                                 # %land.lhs.true
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -168(%rbp)
	jb	.LBB8_7
.LBB8_6:                                # %if.then.8
	callq	__errno_location
	movl	$75, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_7:                                # %if.end.10
	movq	-168(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_9
# BB#8:                                 # %if.then.14
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_9:                                # %if.end.15
	movl	$1, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	-224(%rbp), %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB8_11
# BB#10:                                # %if.then.19
	callq	__errno_location
	movl	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_11:                               # %if.end.21
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB8_13
# BB#12:                                # %if.then.23
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB8_13:                               # %if.end.24
	movq	-224(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	jne	.LBB8_15
# BB#14:                                # %lor.lhs.false
	movq	-224(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB8_16
.LBB8_15:                               # %if.then.29
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_16:                               # %if.end.30
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-56(%rbp), %rdi
	callq	strlen
	cmpq	-64(%rbp), %rax
	je	.LBB8_18
# BB#17:                                # %if.then.33
	callq	__errno_location
	movl	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_18:                               # %if.end.35
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB8_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB8_25
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-240(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	read_score
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_22
# BB#21:                                # %if.then.40
	callq	__errno_location
	movl	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_22:                               # %if.end.42
                                        #   in Loop: Header=BB8_19 Depth=1
	leaq	-240(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	push_score
	cmpl	$0, %eax
	jge	.LBB8_24
# BB#23:                                # %if.then.45
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_24:                               # %if.end.46
                                        #   in Loop: Header=BB8_19 Depth=1
	jmp	.LBB8_19
.LBB8_25:                               # %for.end
	movl	$0, -4(%rbp)
.LBB8_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end8:
	.size	read_scores, .Lfunc_end8-read_scores
	.cfi_endproc

	.align	16, 0x90
	.type	unlock_file,@function
unlock_file:                            # @unlock_file
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	unlink
	movl	%eax, -32(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	free
	cmpl	$0, -32(%rbp)
	jge	.LBB9_2
# BB#1:                                 # %cond.true
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB9_3:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	unlock_file, .Lfunc_end9-unlock_file
	.cfi_endproc

	.align	16, 0x90
	.type	push_score,@function
push_score:                             # @push_score
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rdx
	cmpq	(%rdx), %rcx
	jne	.LBB10_13
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jg	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	$1, -56(%rbp)
	jmp	.LBB10_10
.LBB10_3:                               # %if.else
	movabsq	$576460752303423487, %rax # imm = 0x7FFFFFFFFFFFFFF
	cmpq	%rax, -56(%rbp)
	ja	.LBB10_5
# BB#4:                                 # %if.then.4
	movq	-56(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_9
.LBB10_5:                               # %if.else.5
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rax, -56(%rbp)
	jae	.LBB10_7
# BB#6:                                 # %if.then.7
	movabsq	$1152921504606846975, %rax # imm = 0xFFFFFFFFFFFFFFF
	movq	%rax, -56(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.8
	callq	__errno_location
	movl	$12, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB10_14
.LBB10_8:                               # %if.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.9
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.10
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	realloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_12
# BB#11:                                # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB10_14
.LBB10_12:                              # %if.end.14
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB10_13:                              # %if.end.15
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shlq	$4, %rax
	addq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	movl	$0, -4(%rbp)
.LBB10_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	push_score, .Lfunc_end10-push_score
	.cfi_endproc

	.align	16, 0x90
	.type	sort_scores,@function
sort_scores:                            # @sort_scores
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
	movb	%dl, %al
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	movabsq	$score_compare, %rcx
	movabsq	$score_compare_reverse, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movb	-17(%rbp), %al
	testb	$1, %al
	cmovneq	%r8, %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	qsort
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	sort_scores, .Lfunc_end11-sort_scores
	.cfi_endproc

	.align	16, 0x90
	.type	write_scores,@function
write_scores:                           # @write_scores
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$11, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_2:                               # %if.end
	xorl	%esi, %esi
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	callq	stpcpy
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	mkostemp
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB12_4
# BB#3:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_4:                               # %if.end.7
	movl	-44(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	fchmod
	cmpl	$0, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.10
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_6:                               # %if.end.11
	movabsq	$.L.str.26, %rsi
	movl	-44(%rbp), %edi
	callq	fdopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_8
# BB#7:                                 # %if.then.14
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_8:                               # %if.end.15
	movq	$0, -64(%rbp)
.LBB12_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB12_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB12_9 Depth=1
	movabsq	$.L.str.27, %rsi
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	cmpl	$0, %eax
	jge	.LBB12_12
# BB#11:                                # %if.then.20
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_12:                              # %if.end.21
                                        #   in Loop: Header=BB12_9 Depth=1
	jmp	.LBB12_13
.LBB12_13:                              # %for.inc
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB12_9
.LBB12_14:                              # %for.end
	movq	-56(%rbp), %rdi
	callq	fclose
	cmpl	$0, %eax
	je	.LBB12_16
# BB#15:                                # %if.then.24
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_16:                              # %if.end.25
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	rename
	cmpl	$0, %eax
	je	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$-1, -4(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.end.29
	movl	$0, -4(%rbp)
.LBB12_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	write_scores, .Lfunc_end12-write_scores
	.cfi_endproc

	.align	16, 0x90
	.type	read_score,@function
read_score:                             # @read_score
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
	subq	$32, %rsp
	movl	$32, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movl	$10, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	read_score, .Lfunc_end13-read_score
	.cfi_endproc

	.align	16, 0x90
	.type	score_compare_reverse,@function
score_compare_reverse:                  # @score_compare_reverse
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	score_compare
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	score_compare_reverse, .Lfunc_end14-score_compare_reverse
	.cfi_endproc

	.align	16, 0x90
	.type	score_compare,@function
score_compare:                          # @score_compare
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$45, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -73(%rbp)
	movq	-56(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$45, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -74(%rbp)
	movb	-73(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	-74(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	subl	%edx, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	-80(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_7
.LBB15_2:                               # %if.end
	testb	$1, -73(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.12
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB15_4:                               # %if.end.14
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB15_6
# BB#5:                                 # %if.then.18
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdx
	cmpq	-64(%rbp), %rdx
	cmovbl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.end.21
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcmp
	movl	%eax, -4(%rbp)
.LBB15_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	score_compare, .Lfunc_end15-score_compare
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hrm:d:"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"This program can run either suid or sgid, but not both."
	.size	.L.str.1, 56

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Couldn't allocate score file"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: Invalid score\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Couldn't determine user id"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s %s"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Memory exhausted"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Failed to lock scores file"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Failed to read scores file"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Failed to add score"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Failed to write scores file"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Failed to unlock scores file"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Usage: update-game-score [-m MAX] [-r] [-d DIR] game/scorefile SCORE DATA\n"
	.size	.L.str.12, 75

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"       update-game-score -h\n"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" -h\t\tDisplay this help.\n"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" -m MAX\t\tLimit the maximum number of scores to MAX.\n"
	.size	.L.str.15, 53

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	" -r\t\tSort the scores in increasing order.\n"
	.size	.L.str.16, 43

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	" -d DIR\t\tStore scores in DIR (only if not setuid).\n"
	.size	.L.str.17, 52

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s\n"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/usr/local/var/games/emacs"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Not using a shared game directory, and no prefix given."
	.size	.L.str.20, 56

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s: %s\n"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Invalid data in score file"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%ld"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"r"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	".tempXXXXXX"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"w"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%s %s\n"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	".lockfile"
	.size	.L.str.28, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
