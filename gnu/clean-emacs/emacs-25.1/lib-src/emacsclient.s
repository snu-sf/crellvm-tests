	.text
	.file	"emacsclient.bc"
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
	subq	$8416, %rsp             # imm = 0x20E0
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -8248(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, main_argv
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, progname
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	decode_options
	movl	-8(%rbp), %edi
	subl	optind, %edi
	cmpl	$1, %edi
	jge	.LBB0_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, eval
	jne	.LBB0_4
# BB#2:                                 # %land.lhs.true.1
	cmpl	$0, current_frame
	je	.LBB0_4
# BB#3:                                 # %if.then
	movl	$1, %edi
	movabsq	$.L.str.14, %rsi
	movq	progname, %rdx
	movq	progname, %rcx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB0_4:                                # %if.end
	cmpl	$0, tty
	je	.LBB0_9
# BB#5:                                 # %if.then.4
	callq	getpgrp
	movl	$1, %edi
	movl	%eax, -8252(%rbp)
	callq	tcgetpgrp
	xorl	%edi, %edi
	movl	%eax, -8256(%rbp)
	cmpl	-8256(%rbp), %edi
	jg	.LBB0_8
# BB#6:                                 # %land.lhs.true.7
	movl	-8256(%rbp), %eax
	cmpl	-8252(%rbp), %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.9
	movl	$21, %esi
	xorl	%eax, %eax
	subl	-8252(%rbp), %eax
	movl	%eax, %edi
	callq	kill
	movl	%eax, -8316(%rbp)       # 4-byte Spill
.LBB0_8:                                # %if.end.12
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.13
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, alternate_editor
	movb	%cl, -8317(%rbp)        # 1-byte Spill
	je	.LBB0_11
# BB#10:                                # %land.rhs
	movq	alternate_editor, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -8317(%rbp)        # 1-byte Spill
.LBB0_11:                               # %land.end
	movb	-8317(%rbp), %al        # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -8244(%rbp)
	cmpq	$0, alternate_editor
	movb	%cl, -8318(%rbp)        # 1-byte Spill
	jne	.LBB0_13
# BB#12:                                # %lor.rhs
	cmpl	$0, -8244(%rbp)
	setne	%al
	movb	%al, -8318(%rbp)        # 1-byte Spill
.LBB0_13:                               # %lor.end
	movb	-8318(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	set_socket
	movl	%eax, emacs_socket
	cmpl	$-1, emacs_socket
	jne	.LBB0_17
# BB#14:                                # %if.then.23
	cmpl	$0, -8244(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.25
	callq	fail
.LBB0_16:                               # %if.end.26
	callq	start_daemon_and_retry_set_socket
.LBB0_17:                               # %if.end.27
	callq	get_current_dir_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_19
# BB#18:                                # %if.then.31
	movl	$1, %edi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rcx
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	callq	fail
.LBB0_19:                               # %if.end.32
	cmpl	$0, current_frame
	jne	.LBB0_25
# BB#20:                                # %if.then.34
	movl	$0, -8260(%rbp)
.LBB0_21:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-8260(%rbp), %rax
	movq	environ, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB0_24
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB0_21 Depth=1
	movabsq	$.L.str.17, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movslq	-8260(%rbp), %rsi
	movq	environ, %rax
	movq	(%rax,%rsi,8), %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-8260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8260(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               # %for.end
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.39
	movabsq	$.L.str.19, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	-32(%rbp), %rsi
	callq	quote_argument
	movabsq	$.L.str.20, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_26:                               # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #     Child Loop BB0_64 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_88 Depth 3
	cmpl	$0, nowait
	je	.LBB0_28
# BB#27:                                # %if.then.41
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.21, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_28:                               # %if.end.42
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, current_frame
	je	.LBB0_30
# BB#29:                                # %if.then.44
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.22, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_30:                               # %if.end.45
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, display
	je	.LBB0_32
# BB#31:                                # %if.then.47
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.23, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	display, %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_32:                               # %if.end.48
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, parent_id
	je	.LBB0_34
# BB#33:                                # %if.then.50
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.24, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	parent_id, %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_34:                               # %if.end.51
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, frame_parameters
	je	.LBB0_37
# BB#35:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, current_frame
	jne	.LBB0_37
# BB#36:                                # %if.then.55
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.25, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	frame_parameters, %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_37:                               # %if.end.56
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, current_frame
	je	.LBB0_39
# BB#38:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, eval
	jne	.LBB0_42
.LBB0_39:                               # %if.then.59
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	-8272(%rbp), %rdi
	leaq	-8280(%rbp), %rsi
	cmpl	$0, tty
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	find_tty
	cmpl	$0, %eax
	je	.LBB0_41
# BB#40:                                # %if.then.63
                                        #   in Loop: Header=BB0_26 Depth=1
	callq	init_signals
	movabsq	$.L.str.26, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	-8280(%rbp), %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	-8272(%rbp), %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_41:                               # %if.end.64
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_42
.LBB0_42:                               # %if.end.65
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, current_frame
	jne	.LBB0_45
# BB#43:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, tty
	jne	.LBB0_45
# BB#44:                                # %if.then.69
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.27, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_45:                               # %if.end.70
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-8(%rbp), %eax
	subl	optind, %eax
	cmpl	$0, %eax
	jle	.LBB0_62
# BB#46:                                # %if.then.74
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	optind, %eax
	movl	%eax, -8284(%rbp)
.LBB0_47:                               # %for.cond.76
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
	movl	-8284(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_61
# BB#48:                                # %for.body.79
                                        #   in Loop: Header=BB0_47 Depth=2
	cmpl	$0, eval
	je	.LBB0_50
# BB#49:                                # %if.then.81
                                        #   in Loop: Header=BB0_47 Depth=2
	movabsq	$.L.str.28, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movslq	-8284(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax,%rsi,8), %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	jmp	.LBB0_60
.LBB0_50:                               # %if.end.84
                                        #   in Loop: Header=BB0_47 Depth=2
	movslq	-8284(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	(%rax), %edx
	cmpl	$43, %edx
	jne	.LBB0_59
# BB#51:                                # %if.then.90
                                        #   in Loop: Header=BB0_47 Depth=2
	movslq	-8284(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$1, %rax
	movq	%rax, -8296(%rbp)
.LBB0_52:                               # %while.cond
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8296(%rbp), %rax
	movzbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -8328(%rbp)       # 8-byte Spill
	callq	__ctype_b_loc
	movb	$1, %dl
	movq	(%rax), %rax
	movq	-8328(%rbp), %rsi       # 8-byte Reload
	movzwl	(%rax,%rsi,2), %ecx
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	movb	%dl, -8329(%rbp)        # 1-byte Spill
	jne	.LBB0_54
# BB#53:                                # %lor.rhs.99
                                        #   in Loop: Header=BB0_52 Depth=3
	movq	-8296(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	sete	%dl
	movb	%dl, -8329(%rbp)        # 1-byte Spill
.LBB0_54:                               # %lor.end.103
                                        #   in Loop: Header=BB0_52 Depth=3
	movb	-8329(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_55
	jmp	.LBB0_56
.LBB0_55:                               # %while.body
                                        #   in Loop: Header=BB0_52 Depth=3
	movq	-8296(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8296(%rbp)
	jmp	.LBB0_52
.LBB0_56:                               # %while.end
                                        #   in Loop: Header=BB0_47 Depth=2
	movq	-8296(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_58
# BB#57:                                # %if.then.108
                                        #   in Loop: Header=BB0_47 Depth=2
	movabsq	$.L.str.29, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movslq	-8284(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax,%rsi,8), %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	jmp	.LBB0_60
.LBB0_58:                               # %if.end.111
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.112
                                        #   in Loop: Header=BB0_47 Depth=2
	movabsq	$.L.str.30, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movslq	-8284(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax,%rsi,8), %rsi
	callq	quote_argument
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_60:                               # %for.inc.115
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	-8284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8284(%rbp)
	jmp	.LBB0_47
.LBB0_61:                               # %for.end.117
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_68
.LBB0_62:                               # %if.else
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, eval
	je	.LBB0_67
# BB#63:                                # %if.then.119
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               # %while.cond.120
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8192, %esi             # imm = 0x2000
	leaq	-8240(%rbp), %rdi
	movq	stdin, %rdx
	callq	fgets
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB0_66
# BB#65:                                # %while.body.123
                                        #   in Loop: Header=BB0_64 Depth=2
	movabsq	$.L.str.28, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	movl	emacs_socket, %edi
	movq	-40(%rbp), %rsi
	callq	quote_argument
	jmp	.LBB0_64
.LBB0_66:                               # %while.end.124
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.18, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB0_67:                               # %if.end.125
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_68
.LBB0_68:                               # %if.end.126
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.31, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	cmpl	$0, eval
	jne	.LBB0_73
# BB#69:                                # %land.lhs.true.128
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, tty
	jne	.LBB0_73
# BB#70:                                # %land.lhs.true.130
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, nowait
	jne	.LBB0_73
# BB#71:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpl	$0, quiet
	jne	.LBB0_73
# BB#72:                                # %if.then.134
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.32, %rdi
	movb	$0, %al
	callq	printf
	movl	$2, -24(%rbp)
	movl	%eax, -8336(%rbp)       # 4-byte Spill
.LBB0_73:                               # %if.end.136
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	stdout, %rdi
	callq	fflush
	movl	%eax, -8340(%rbp)       # 4-byte Spill
.LBB0_74:                               # %while.cond.138
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %edi
	callq	fdatasync
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$0, %eax
	movb	%cl, -8341(%rbp)        # 1-byte Spill
	je	.LBB0_76
# BB#75:                                # %land.rhs.142
                                        #   in Loop: Header=BB0_74 Depth=2
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -8341(%rbp)        # 1-byte Spill
.LBB0_76:                               # %land.end.146
                                        #   in Loop: Header=BB0_74 Depth=2
	movb	-8341(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_77
	jmp	.LBB0_78
.LBB0_77:                               # %while.body.148
                                        #   in Loop: Header=BB0_74 Depth=2
	jmp	.LBB0_74
.LBB0_78:                               # %while.end.149
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_79
.LBB0_79:                               # %while.cond.150
                                        #   Parent Loop BB0_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_88 Depth 3
	cmpl	$0, -8248(%rbp)
	jne	.LBB0_134
# BB#80:                                # %while.body.153
                                        #   in Loop: Header=BB0_79 Depth=2
	jmp	.LBB0_81
.LBB0_81:                               # %do.body
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	__errno_location
	movl	$8192, %ecx             # imm = 0x2000
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	leaq	-8240(%rbp), %rsi
	movl	$0, (%rax)
	movl	emacs_socket, %edi
	callq	recv
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
# BB#82:                                # %do.cond
                                        #   in Loop: Header=BB0_81 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -8342(%rbp)        # 1-byte Spill
	jge	.LBB0_84
# BB#83:                                # %land.rhs.161
                                        #   in Loop: Header=BB0_81 Depth=3
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -8342(%rbp)        # 1-byte Spill
.LBB0_84:                               # %land.end.165
                                        #   in Loop: Header=BB0_81 Depth=3
	movb	-8342(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_81
# BB#85:                                # %do.end
                                        #   in Loop: Header=BB0_79 Depth=2
	cmpl	$0, -20(%rbp)
	jg	.LBB0_87
# BB#86:                                # %if.then.169
	jmp	.LBB0_134
.LBB0_87:                               # %if.end.170
                                        #   in Loop: Header=BB0_79 Depth=2
	leaq	-8240(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	$0, -8240(%rbp,%rcx)
	movq	%rax, -8304(%rbp)
	movq	%rax, -8312(%rbp)
.LBB0_88:                               # %for.cond.174
                                        #   Parent Loop BB0_26 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8312(%rbp)
	movb	%cl, -8343(%rbp)        # 1-byte Spill
	je	.LBB0_90
# BB#89:                                # %land.rhs.177
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-8312(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -8343(%rbp)        # 1-byte Spill
.LBB0_90:                               # %land.end.181
                                        #   in Loop: Header=BB0_88 Depth=3
	movb	-8343(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_91
	jmp	.LBB0_133
.LBB0_91:                               # %for.body.183
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	$10, %esi
	movq	-8304(%rbp), %rdi
	callq	strchr
	movq	%rax, -8312(%rbp)
	cmpq	$0, -8312(%rbp)
	je	.LBB0_93
# BB#92:                                # %if.then.187
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-8312(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8312(%rbp)
	movb	$0, (%rax)
.LBB0_93:                               # %if.end.189
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.33, %rdi
	movq	-8304(%rbp), %rsi
	callq	strprefix
	cmpl	$0, %eax
	je	.LBB0_95
# BB#94:                                # %if.then.192
                                        #   in Loop: Header=BB0_88 Depth=3
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	movq	-8304(%rbp), %rcx
	addq	$10, %rcx
	movq	%rcx, %rdi
	callq	strtol
	movl	%eax, %edx
	movl	%edx, emacs_pid
	jmp	.LBB0_131
.LBB0_95:                               # %if.else.196
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.34, %rdi
	movq	-8304(%rbp), %rsi
	callq	strprefix
	cmpl	$0, %eax
	je	.LBB0_100
# BB#96:                                # %if.then.199
                                        #   in Loop: Header=BB0_26 Depth=1
	cmpq	$0, alt_display
	je	.LBB0_98
# BB#97:                                # %if.then.201
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	alt_display, %rax
	movq	%rax, display
	movq	$0, alt_display
	jmp	.LBB0_99
.LBB0_98:                               # %if.else.202
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$0, nowait
	movl	$1, tty
.LBB0_99:                               # %if.end.203
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_100:                              # %if.else.204
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.35, %rdi
	movq	-8304(%rbp), %rsi
	callq	strprefix
	cmpl	$0, %eax
	je	.LBB0_107
# BB#101:                               # %if.then.207
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-8304(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	callq	unquote_argument
	movq	%rax, -40(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_103
# BB#102:                               # %if.then.211
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -8348(%rbp)       # 4-byte Spill
.LBB0_103:                              # %if.end.213
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.36, %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movq	-40(%rbp), %rsi
	movsbl	(%rsi), %ecx
	cmpl	$0, %ecx
	movl	%eax, -8352(%rbp)       # 4-byte Spill
	jne	.LBB0_105
# BB#104:                               # %cond.true
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	-24(%rbp), %eax
	movl	%eax, -8356(%rbp)       # 4-byte Spill
	jmp	.LBB0_106
.LBB0_105:                              # %cond.false
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-40(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -8356(%rbp)       # 4-byte Spill
.LBB0_106:                              # %cond.end
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	-8356(%rbp), %eax       # 4-byte Reload
	movl	%eax, -24(%rbp)
	jmp	.LBB0_129
.LBB0_107:                              # %if.else.225
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.37, %rdi
	movq	-8304(%rbp), %rsi
	callq	strprefix
	cmpl	$0, %eax
	je	.LBB0_112
# BB#108:                               # %if.then.228
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-8304(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	callq	unquote_argument
	movabsq	$.L.str.36, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movq	-40(%rbp), %rsi
	movsbl	(%rsi), %ecx
	cmpl	$0, %ecx
	movl	%eax, -8360(%rbp)       # 4-byte Spill
	jne	.LBB0_110
# BB#109:                               # %cond.true.236
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	-24(%rbp), %eax
	movl	%eax, -8364(%rbp)       # 4-byte Spill
	jmp	.LBB0_111
.LBB0_110:                              # %cond.false.237
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-40(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -8364(%rbp)       # 4-byte Spill
.LBB0_111:                              # %cond.end.244
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	-8364(%rbp), %eax       # 4-byte Reload
	movl	%eax, -24(%rbp)
	jmp	.LBB0_128
.LBB0_112:                              # %if.else.246
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.38, %rdi
	movq	-8304(%rbp), %rsi
	callq	strprefix
	cmpl	$0, %eax
	je	.LBB0_119
# BB#113:                               # %if.then.249
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-8304(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rdi
	callq	unquote_argument
	movq	%rax, -40(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB0_115
# BB#114:                               # %if.then.253
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -8368(%rbp)       # 4-byte Spill
.LBB0_115:                              # %if.end.255
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.39, %rsi
	movq	stderr, %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %ecx
	cmpl	$0, %ecx
	movl	%eax, -8372(%rbp)       # 4-byte Spill
	jne	.LBB0_117
# BB#116:                               # %cond.true.261
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	-24(%rbp), %eax
	movl	%eax, -8376(%rbp)       # 4-byte Spill
	jmp	.LBB0_118
.LBB0_117:                              # %cond.false.262
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-40(%rbp), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -8376(%rbp)       # 4-byte Spill
.LBB0_118:                              # %cond.end.269
                                        #   in Loop: Header=BB0_88 Depth=3
	movl	-8376(%rbp), %eax       # 4-byte Reload
	movl	%eax, -24(%rbp)
	movl	$1, -8248(%rbp)
	jmp	.LBB0_127
.LBB0_119:                              # %if.else.271
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.40, %rdi
	movq	-8304(%rbp), %rsi
	callq	strprefix
	cmpl	$0, %eax
	je	.LBB0_123
# BB#120:                               # %if.then.274
                                        #   in Loop: Header=BB0_88 Depth=3
	cmpl	$0, -24(%rbp)
	je	.LBB0_122
# BB#121:                               # %if.then.276
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -8380(%rbp)       # 4-byte Spill
.LBB0_122:                              # %if.end.278
                                        #   in Loop: Header=BB0_88 Depth=3
	xorl	%edi, %edi
	movl	$19, %esi
	movl	$0, -24(%rbp)
	callq	kill
	movl	%eax, -8384(%rbp)       # 4-byte Spill
	jmp	.LBB0_126
.LBB0_123:                              # %if.else.280
                                        #   in Loop: Header=BB0_88 Depth=3
	cmpl	$0, -24(%rbp)
	je	.LBB0_125
# BB#124:                               # %if.then.282
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -8388(%rbp)       # 4-byte Spill
.LBB0_125:                              # %if.end.284
                                        #   in Loop: Header=BB0_88 Depth=3
	movabsq	$.L.str.41, %rdi
	movl	$0, -24(%rbp)
	movq	-8304(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -8392(%rbp)       # 4-byte Spill
.LBB0_126:                              # %if.end.286
                                        #   in Loop: Header=BB0_88 Depth=3
	jmp	.LBB0_127
.LBB0_127:                              # %if.end.287
                                        #   in Loop: Header=BB0_88 Depth=3
	jmp	.LBB0_128
.LBB0_128:                              # %if.end.288
                                        #   in Loop: Header=BB0_88 Depth=3
	jmp	.LBB0_129
.LBB0_129:                              # %if.end.289
                                        #   in Loop: Header=BB0_88 Depth=3
	jmp	.LBB0_130
.LBB0_130:                              # %if.end.290
                                        #   in Loop: Header=BB0_88 Depth=3
	jmp	.LBB0_131
.LBB0_131:                              # %if.end.291
                                        #   in Loop: Header=BB0_88 Depth=3
	jmp	.LBB0_132
.LBB0_132:                              # %for.inc.292
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-8312(%rbp), %rax
	movq	%rax, -8304(%rbp)
	jmp	.LBB0_88
.LBB0_133:                              # %for.end.293
                                        #   in Loop: Header=BB0_79 Depth=2
	jmp	.LBB0_79
.LBB0_134:                              # %while.end.294
	cmpl	$0, -24(%rbp)
	je	.LBB0_136
# BB#135:                               # %if.then.296
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -8396(%rbp)       # 4-byte Spill
.LBB0_136:                              # %if.end.298
	movq	stdout, %rdi
	callq	fflush
	movl	%eax, -8400(%rbp)       # 4-byte Spill
.LBB0_137:                              # %while.cond.300
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edi
	callq	fdatasync
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$0, %eax
	movb	%cl, -8401(%rbp)        # 1-byte Spill
	je	.LBB0_139
# BB#138:                               # %land.rhs.304
                                        #   in Loop: Header=BB0_137 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -8401(%rbp)        # 1-byte Spill
.LBB0_139:                              # %land.end.308
                                        #   in Loop: Header=BB0_137 Depth=1
	movb	-8401(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_140
	jmp	.LBB0_141
.LBB0_140:                              # %while.body.310
                                        #   in Loop: Header=BB0_137 Depth=1
	jmp	.LBB0_137
.LBB0_141:                              # %while.end.311
	cmpl	$0, -20(%rbp)
	jge	.LBB0_143
# BB#142:                               # %if.then.314
	movl	$1, -8248(%rbp)
.LBB0_143:                              # %if.end.315
	movl	emacs_socket, %edi
	callq	close
	movl	-8248(%rbp), %edi
	movl	%eax, -8408(%rbp)       # 4-byte Spill
	movl	%edi, %eax
	addq	$8416, %rsp             # imm = 0x20E0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	decode_options,@function
decode_options:                         # @decode_options
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
	subq	$80, %rsp
	movabsq	$.L.str.42, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	getenv
	movq	%rax, alternate_editor
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.43, %rdx
	movabsq	$longopts, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	getopt_long_only
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_20
.LBB1_3:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_33
.LBB1_33:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_34
.LBB1_34:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_35
.LBB1_35:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_36
.LBB1_36:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_37
.LBB1_37:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_38
.LBB1_38:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_39
.LBB1_39:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_40
.LBB1_40:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_41
.LBB1_41:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_42
.LBB1_42:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_43
.LBB1_43:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_44
.LBB1_44:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_45
.LBB1_45:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_18
.LBB1_4:                                # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_19
.LBB1_5:                                # %sw.bb.2
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	optarg, %rax
	movq	%rax, alternate_editor
	jmp	.LBB1_19
.LBB1_6:                                # %sw.bb.3
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	optarg, %rax
	movq	%rax, socket_name
	jmp	.LBB1_19
.LBB1_7:                                # %sw.bb.4
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	optarg, %rax
	movq	%rax, server_file
	jmp	.LBB1_19
.LBB1_8:                                # %sw.bb.5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	optarg, %rax
	movq	%rax, display
	jmp	.LBB1_19
.LBB1_9:                                # %sw.bb.6
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, nowait
	jmp	.LBB1_19
.LBB1_10:                               # %sw.bb.7
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, eval
	jmp	.LBB1_19
.LBB1_11:                               # %sw.bb.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, quiet
	jmp	.LBB1_19
.LBB1_12:                               # %sw.bb.9
	xorl	%edi, %edi
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movb	$0, %al
	callq	message
	xorl	%edi, %edi
	callq	exit
.LBB1_13:                               # %sw.bb.10
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, tty
	movl	$0, current_frame
	jmp	.LBB1_19
.LBB1_14:                               # %sw.bb.11
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, current_frame
	jmp	.LBB1_19
.LBB1_15:                               # %sw.bb.12
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	optarg, %rax
	movq	%rax, parent_id
	movl	$0, current_frame
	jmp	.LBB1_19
.LBB1_16:                               # %sw.bb.13
	callq	print_help_and_exit
.LBB1_17:                               # %sw.bb.14
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	optarg, %rax
	movq	%rax, frame_parameters
	jmp	.LBB1_19
.LBB1_18:                               # %sw.default
	movl	$1, %edi
	movabsq	$.L.str.46, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB1_19:                               # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_20:                               # %while.end
	cmpl	$0, current_frame
	jne	.LBB1_24
# BB#21:                                # %land.lhs.true
	cmpl	$0, tty
	jne	.LBB1_24
# BB#22:                                # %land.lhs.true.16
	cmpq	$0, display
	jne	.LBB1_24
# BB#23:                                # %if.then.18
	movabsq	$.L.str.47, %rdi
	callq	getenv
	movq	%rax, display
.LBB1_24:                               # %if.end.20
	cmpq	$0, display
	jne	.LBB1_26
# BB#25:                                # %if.then.22
	movq	alt_display, %rax
	movq	%rax, display
	movq	$0, alt_display
.LBB1_26:                               # %if.end.23
	cmpq	$0, display
	je	.LBB1_29
# BB#27:                                # %land.lhs.true.25
	movq	display, %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB1_29
# BB#28:                                # %if.then.28
	movq	$0, display
.LBB1_29:                               # %if.end.29
	cmpl	$0, current_frame
	jne	.LBB1_32
# BB#30:                                # %land.lhs.true.31
	cmpq	$0, display
	jne	.LBB1_32
# BB#31:                                # %if.then.33
	movl	$1, tty
.LBB1_32:                               # %if.end.34
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	decode_options, .Lfunc_end1-decode_options
	.cfi_endproc

	.align	16, 0x90
	.type	message,@function
message:                                # @message
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
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movl	%edi, -372(%rbp)        # 4-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB2_5
# BB#4:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB2_5:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movl	-372(%rbp), %edi        # 4-byte Reload
	movb	%dil, %r8b
	movq	-416(%rbp), %r9         # 8-byte Reload
	leaq	-48(%rbp), %r10
	andb	$1, %r8b
	movb	%r8b, -1(%rbp)
	movq	%r9, -16(%rbp)
	leaq	-240(%rbp), %r9
	movq	%r9, 16(%r10)
	leaq	16(%rbp), %r9
	movq	%r9, 8(%r10)
	movl	$48, 4(%r10)
	movl	$16, (%r10)
	testb	$1, -1(%rbp)
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	stderr, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movq	stdout, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB2_3:                                # %cond.end
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	vfprintf
	movq	-56(%rbp), %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	fflush
	movl	%eax, -432(%rbp)        # 4-byte Spill
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	message, .Lfunc_end2-message
	.cfi_endproc

	.align	16, 0x90
	.type	set_socket,@function
set_socket:                             # @set_socket
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
	movl	%edi, -8(%rbp)
	movq	server_file, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, socket_name
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	socket_name, %rdi
	callq	set_local_socket
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, -8(%rbp)
	je	.LBB3_4
.LBB3_3:                                # %if.then.2
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_18
.LBB3_4:                                # %if.end
	movl	$1, %edi
	movabsq	$.L.str.52, %rsi
	movq	progname, %rdx
	movq	socket_name, %rcx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB3_5:                                # %if.end.3
	cmpq	$0, -24(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %if.then.5
	movabsq	$.L.str.53, %rdi
	callq	getenv
	movq	%rax, -24(%rbp)
.LBB3_7:                                # %if.end.7
	cmpq	$0, -24(%rbp)
	je	.LBB3_12
# BB#8:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	set_tcp_socket
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB3_10
# BB#9:                                 # %lor.lhs.false.12
	cmpl	$0, -8(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.14
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.15
	movl	$1, %edi
	movabsq	$.L.str.54, %rsi
	movq	progname, %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB3_12:                               # %if.end.16
	movabsq	$.L.str.55, %rdi
	callq	set_local_socket
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.LBB3_14
# BB#13:                                # %if.then.19
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_18
.LBB3_14:                               # %if.end.20
	movabsq	$.L.str.55, %rdi
	callq	set_tcp_socket
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB3_16
# BB#15:                                # %lor.lhs.false.23
	cmpl	$0, -8(%rbp)
	je	.LBB3_17
.LBB3_16:                               # %if.then.25
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_18
.LBB3_17:                               # %if.end.26
	movl	$1, %edi
	movabsq	$.L.str.56, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB3_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_socket, .Lfunc_end3-set_socket
	.cfi_endproc

	.align	16, 0x90
	.type	fail,@function
fail:                                   # @fail
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
	cmpq	$0, alternate_editor
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	optind, %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	alternate_editor, %rdi
	movq	main_argv, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	execvp
	movl	$1, %edi
	movabsq	$.L.str.80, %rsi
	movq	progname, %rdx
	movq	alternate_editor, %rcx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movb	$0, %al
	callq	message
.LBB4_2:                                # %if.end
	movl	$1, %edi
	callq	exit
.Lfunc_end4:
	.size	fail, .Lfunc_end4-fail
	.cfi_endproc

	.align	16, 0x90
	.type	start_daemon_and_retry_set_socket,@function
start_daemon_and_retry_set_socket:      # @start_daemon_and_retry_set_socket
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
	subq	$112, %rsp
	callq	fork
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB5_8
# BB#1:                                 # %if.then
	leaq	-8(%rbp), %rsi
	movl	$10, %edx
	movl	-4(%rbp), %edi
	callq	waitpid
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.LBB5_4
# BB#2:                                 # %lor.lhs.false
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-8(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	cmpl	$0, %eax
	je	.LBB5_5
.LBB5_4:                                # %if.then.9
	movl	$1, %edi
	movabsq	$.L.str.81, %rsi
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB5_5:                                # %if.end
	movl	$1, %edi
	movabsq	$.L.str.82, %rsi
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	set_socket
	movl	%eax, emacs_socket
	cmpl	$-1, %eax
	jne	.LBB5_7
# BB#6:                                 # %if.then.12
	movl	$1, %edi
	movabsq	$.L.str.83, %rsi
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB5_7:                                # %if.end.13
	jmp	.LBB5_14
.LBB5_8:                                # %if.else
	cmpl	$0, -4(%rbp)
	jge	.LBB5_10
# BB#9:                                 # %if.then.15
	movabsq	$.L.str.84, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	exit
.LBB5_10:                               # %if.else.17
	leaq	-39(%rbp), %rax
	leaq	-30(%rbp), %rcx
	movl	.Lstart_daemon_and_retry_set_socket.emacs, %edx
	movl	%edx, -30(%rbp)
	movw	.Lstart_daemon_and_retry_set_socket.emacs+4, %si
	movw	%si, -26(%rbp)
	movq	.Lstart_daemon_and_retry_set_socket.daemon_option, %rdi
	movq	%rdi, -39(%rbp)
	movb	.Lstart_daemon_and_retry_set_socket.daemon_option+8, %r8b
	movb	%r8b, -31(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, socket_name
	je	.LBB5_12
# BB#11:                                # %if.then.22
	movabsq	$.L.str.85, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	strlen
	movq	socket_name, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-96(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	callq	xmalloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	stpcpy
	movq	socket_name, %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	-80(%rbp), %rsi
	movq	%rsi, -56(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB5_12:                               # %if.end.30
	movabsq	$.L.str.86, %rdi
	leaq	-64(%rbp), %rsi
	callq	execvp
	movl	$1, %edi
	movabsq	$.L.str.87, %rsi
	movq	progname, %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	message
# BB#13:                                # %if.end.33
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.34
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	start_daemon_and_retry_set_socket, .Lfunc_end5-start_daemon_and_retry_set_socket
	.cfi_endproc

	.align	16, 0x90
	.type	send_to_emacs,@function
send_to_emacs:                          # @send_to_emacs
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_16
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -24(%rbp)
.LBB6_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_16
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$4096, %eax             # imm = 0x1000
	movq	-24(%rbp), %rcx
	subl	sblen, %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB6_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$4096, %eax             # imm = 0x1000
	subl	sblen, %eax
	movslq	%eax, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB6_7:                                # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movabsq	$send_buffer, %rcx
	movq	%rax, -32(%rbp)
	movslq	sblen, %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	movq	-32(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movslq	sblen, %rcx
	addq	%rax, %rcx
	movl	%ecx, %r8d
	movl	%r8d, sblen
	cmpl	$4096, sblen            # imm = 0x1000
	je	.LBB6_10
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_3 Depth=1
	cmpl	$0, sblen
	jle	.LBB6_15
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	sblen, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movsbl	send_buffer(,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB6_15
.LBB6_10:                               # %if.then.17
                                        #   in Loop: Header=BB6_3 Depth=1
	movabsq	$send_buffer, %rsi
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edi
	movslq	sblen, %rdx
	callq	send
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB6_12
# BB#11:                                # %if.then.23
	movq	progname, %rdx
	movl	sblen, %ecx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$1, %edi
	movabsq	$.L.str.88, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	message
	callq	fail
.LBB6_12:                               # %if.end.26
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-36(%rbp), %eax
	cmpl	sblen, %eax
	je	.LBB6_14
# BB#13:                                # %if.then.29
                                        #   in Loop: Header=BB6_3 Depth=1
	movabsq	$send_buffer, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movl	sblen, %edx
	subl	-36(%rbp), %edx
	movslq	%edx, %rdx
	movl	$send_buffer, %esi
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	memmove
.LBB6_14:                               # %if.end.34
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-36(%rbp), %eax
	movl	sblen, %ecx
	subl	%eax, %ecx
	movl	%ecx, sblen
.LBB6_15:                               # %if.end.36
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB6_3
.LBB6_16:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	send_to_emacs, .Lfunc_end6-send_to_emacs
	.cfi_endproc

	.align	16, 0x90
	.type	quote_argument,@function
quote_argument:                         # @quote_argument
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$38, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$95, (%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_12
.LBB7_4:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB7_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$38, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$110, (%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_11
.LBB7_6:                                # %if.else.12
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	je	.LBB7_9
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB7_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB7_10
.LBB7_9:                                # %if.then.21
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$38, (%rax)
.LBB7_10:                               # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB7_11:                               # %if.end.25
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.26
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_13:                               # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$0, (%rax)
	movl	-4(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	send_to_emacs
	movq	-24(%rbp), %rdi
	callq	free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	quote_argument, .Lfunc_end7-quote_argument
	.cfi_endproc

	.align	16, 0x90
	.type	find_tty,@function
find_tty:                               # @find_tty
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
	subq	$48, %rsp
	movabsq	$.L.str.89, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rax, %rdi
	callq	getenv
	movq	%rax, -40(%rbp)
	movq	stdout, %rdi
	callq	fileno
	movl	%eax, %edi
	callq	ttyname
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_4
# BB#1:                                 # %if.then
	cmpl	$0, -28(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_3:                                # %if.else
	movl	$1, %edi
	movabsq	$.L.str.90, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	callq	fail
.LBB8_4:                                # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB8_8
# BB#5:                                 # %if.then.6
	cmpl	$0, -28(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_7:                                # %if.else.9
	movl	$1, %edi
	movabsq	$.L.str.91, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	callq	fail
.LBB8_8:                                # %if.end.10
	movq	-40(%rbp), %rdi
	movl	$.L.str.92, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_12
# BB#9:                                 # %if.then.12
	cmpl	$0, -28(%rbp)
	je	.LBB8_11
# BB#10:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.else.15
	movl	$1, %edi
	movabsq	$.L.str.93, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	callq	fail
.LBB8_12:                               # %if.end.16
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	find_tty, .Lfunc_end8-find_tty
	.cfi_endproc

	.align	16, 0x90
	.type	init_signals,@function
init_signals:                           # @init_signals
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
	movl	$28, %edi
	movabsq	$pass_signal_to_emacs, %rsi
	callq	signal
	movl	$18, %edi
	movabsq	$handle_sigcont, %rsi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	signal
	movl	$20, %edi
	movabsq	$handle_sigtstp, %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	signal
	movl	$22, %edi
	movabsq	$handle_sigtstp, %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	signal
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	init_signals, .Lfunc_end9-init_signals
	.cfi_endproc

	.align	16, 0x90
	.type	strprefix,@function
strprefix:                              # @strprefix
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	strprefix, .Lfunc_end10-strprefix
	.cfi_endproc

	.align	16, 0x90
	.type	unquote_argument,@function
unquote_argument:                       # @unquote_argument
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_19
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB11_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB11_18
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB11_17
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB11_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movb	$38, (%rax)
	jmp	.LBB11_16
.LBB11_7:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB11_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movb	$32, (%rax)
	jmp	.LBB11_15
.LBB11_9:                               # %if.else.12
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$110, %ecx
	jne	.LBB11_11
# BB#10:                                # %if.then.16
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movb	$10, (%rax)
	jmp	.LBB11_14
.LBB11_11:                              # %if.else.17
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB11_13
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movb	$45, (%rax)
.LBB11_13:                              # %if.end.22
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.23
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.24
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.25
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.26
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB11_3
.LBB11_18:                              # %while.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_19:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	unquote_argument, .Lfunc_end11-unquote_argument
	.cfi_endproc

	.align	16, 0x90
	.type	print_help_and_exit,@function
print_help_and_exit:                    # @print_help_and_exit
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
	xorl	%edi, %edi
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.50, %r8
	movabsq	$.L.str.51, %r9
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	xorl	%edi, %edi
	callq	exit
.Lfunc_end12:
	.size	print_help_and_exit, .Lfunc_end12-print_help_and_exit
	.cfi_endproc

	.align	16, 0x90
	.type	set_local_socket,@function
set_local_socket:                       # @set_local_socket
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
	subq	$384, %rsp              # imm = 0x180
	movl	$1, %eax
	xorl	%edx, %edx
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	socket
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jge	.LBB13_2
# BB#1:                                 # %if.then
	movq	progname, %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$1, %edi
	movabsq	$.L.str.57, %rsi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	message
	movl	$-1, -4(%rbp)
	jmp	.LBB13_35
.LBB13_2:                               # %if.end
	movl	$47, %esi
	movw	$1, -136(%rbp)
	movl	$0, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	-16(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB13_7
# BB#3:                                 # %land.lhs.true
	movl	$92, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	jne	.LBB13_7
# BB#4:                                 # %if.then.6
	callq	geteuid
	movabsq	$.L.str.58, %rdi
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)
	movl	$1, -144(%rbp)
	callq	getenv
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB13_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.59, %rax
	movq	%rax, -168(%rbp)
.LBB13_6:                               # %if.end.11
	movq	-168(%rbp), %rdi
	callq	strlen
	movq	-160(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-264(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$100, %rdi
	callq	xmalloc
	movabsq	$.L.str.60, %rsi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	stpcpy
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rdx
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movq	-200(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -200(%rbp)
	movq	-200(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	strcpy
	movq	-184(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB13_7:                               # %if.end.19
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$108, %rax
	jae	.LBB13_9
# BB#8:                                 # %if.then.23
	leaq	-136(%rbp), %rax
	addq	$2, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB13_10
.LBB13_9:                               # %if.else
	movl	$1, %edi
	movabsq	$.L.str.61, %rsi
	movq	progname, %rdx
	movq	-16(%rbp), %rcx
	movb	$0, %al
	callq	message
	callq	fail
.LBB13_10:                              # %if.end.25
	leaq	-136(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	socket_status
	movl	%eax, -140(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -148(%rbp)
	cmpl	$0, -140(%rbp)
	je	.LBB13_24
# BB#11:                                # %land.lhs.true.31
	cmpl	$0, -144(%rbp)
	je	.LBB13_24
# BB#12:                                # %if.then.33
	movabsq	$.L.str.62, %rdi
	callq	getenv
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB13_14
# BB#13:                                # %if.then.36
	movabsq	$.L.str.63, %rdi
	callq	getenv
	movq	%rax, -208(%rbp)
.LBB13_14:                              # %if.end.38
	cmpq	$0, -208(%rbp)
	je	.LBB13_23
# BB#15:                                # %if.then.40
	movq	-208(%rbp), %rdi
	callq	getpwnam
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB13_21
# BB#16:                                # %land.lhs.true.43
	movq	-216(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	callq	geteuid
	movl	-292(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB13_21
# BB#17:                                # %if.then.47
	movq	-216(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -224(%rbp)
	movq	-168(%rbp), %rdi
	callq	strlen
	movq	-160(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-304(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$100, %rdi
	callq	xmalloc
	movabsq	$.L.str.60, %rsi
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	stpcpy
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rdi
	movq	-224(%rbp), %rdx
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movq	-240(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -240(%rbp)
	movq	-240(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	strcpy
	movq	-232(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	strlen
	cmpq	$108, %rax
	jae	.LBB13_19
# BB#18:                                # %if.then.65
	leaq	-136(%rbp), %rax
	addq	$2, %rax
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB13_20
.LBB13_19:                              # %if.else.69
	movl	$1, %edi
	movabsq	$.L.str.61, %rsi
	movq	progname, %rdx
	movq	-232(%rbp), %rcx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB13_20:                              # %if.end.70
	movq	-232(%rbp), %rdi
	callq	free
	leaq	-136(%rbp), %rdi
	addq	$2, %rdi
	callq	socket_status
	movl	%eax, -140(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -148(%rbp)
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.75
	movl	-148(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-332(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
.LBB13_22:                              # %if.end.77
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.78
	jmp	.LBB13_24
.LBB13_24:                              # %if.end.79
	movq	-184(%rbp), %rdi
	callq	free
	movq	-176(%rbp), %rdi
	callq	free
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -336(%rbp)        # 4-byte Spill
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	je	.LBB13_25
	jmp	.LBB13_36
.LBB13_36:                              # %if.end.79
	movl	-336(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB13_28
	jmp	.LBB13_32
.LBB13_25:                              # %sw.bb
	callq	geteuid
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	je	.LBB13_27
# BB#26:                                # %if.then.83
	movl	$1, %edi
	movabsq	$.L.str.64, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	movl	$-1, -4(%rbp)
	jmp	.LBB13_35
.LBB13_27:                              # %if.end.84
	jmp	.LBB13_32
.LBB13_28:                              # %sw.bb.85
	cmpl	$2, -148(%rbp)
	jne	.LBB13_30
# BB#29:                                # %if.then.88
	movl	$1, %edi
	movabsq	$.L.str.65, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	jmp	.LBB13_31
.LBB13_30:                              # %if.else.89
	leaq	-136(%rbp), %rax
	movq	progname, %rdx
	addq	$2, %rax
	movl	-148(%rbp), %edi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	strerror
	movl	$1, %edi
	movabsq	$.L.str.66, %rsi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	message
.LBB13_31:                              # %if.end.93
	movl	$-1, -4(%rbp)
	jmp	.LBB13_35
.LBB13_32:                              # %sw.epilog
	leaq	-136(%rbp), %rax
	movl	-20(%rbp), %edi
	movq	%rax, %rcx
	movq	%rcx, -248(%rbp)
	addq	$2, %rax
	movl	%edi, -364(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	strlen
	addq	$2, %rax
	movl	%eax, %edx
	movq	-248(%rbp), %rsi
	movl	-364(%rbp), %edi        # 4-byte Reload
	callq	connect
	cmpl	$0, %eax
	jge	.LBB13_34
# BB#33:                                # %if.then.102
	movq	progname, %rdx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$1, %edi
	movabsq	$.L.str.67, %rsi
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	message
	movl	$-1, -4(%rbp)
	jmp	.LBB13_35
.LBB13_34:                              # %if.end.105
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_35:                              # %return
	movl	-4(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	set_local_socket, .Lfunc_end13-set_local_socket
	.cfi_endproc

	.align	16, 0x90
	.type	set_tcp_socket,@function
set_tcp_socket:                         # @set_tcp_socket
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
	subq	$160, %rsp
	leaq	-40(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rdi, -16(%rbp)
	movq	.Lset_tcp_socket.l_arg, %rdi
	movq	%rdi, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_server_config
	cmpl	$0, %eax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB14_10
.LBB14_2:                               # %if.end
	movabsq	$.L.str.69, %rdi
	movl	-36(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	inet_addr
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB14_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, quiet
	jne	.LBB14_5
# BB#4:                                 # %if.then.3
	movq	progname, %rdx
	movl	-36(%rbp), %edi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	inet_ntoa
	xorl	%edi, %edi
	movabsq	$.L.str.70, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	message
.LBB14_5:                               # %if.end.6
	movl	$2, %edi
	movl	$1, %esi
	movl	$6, %edx
	callq	socket
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jge	.LBB14_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.71, %rdi
	callq	sock_err_message
	movl	$-1, -4(%rbp)
	jmp	.LBB14_10
.LBB14_7:                               # %if.end.10
	movl	$16, %edx
	leaq	-40(%rbp), %rax
	movl	-20(%rbp), %edi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rsi
	callq	connect
	cmpl	$0, %eax
	jge	.LBB14_9
# BB#8:                                 # %if.then.14
	movabsq	$.L.str.72, %rdi
	callq	sock_err_message
	movl	$-1, -4(%rbp)
	jmp	.LBB14_10
.LBB14_9:                               # %if.end.15
	movl	$1, %esi
	movl	$13, %edx
	movl	$8, %r8d
	leaq	-48(%rbp), %rax
	movl	-20(%rbp), %edi
	movq	%rax, %rcx
	callq	setsockopt
	movabsq	$.L.str.73, %rsi
	movb	$0, -64(%rbp)
	movl	-20(%rbp), %edi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	send_to_emacs
	leaq	-128(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	send_to_emacs
	movabsq	$.L.str.18, %rsi
	movl	-20(%rbp), %edi
	callq	send_to_emacs
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	set_tcp_socket, .Lfunc_end14-set_tcp_socket
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.68, %rdi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	xmalloc, .Lfunc_end15-xmalloc
	.cfi_endproc

	.align	16, 0x90
	.type	socket_status,@function
socket_status:                          # @socket_status
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
	subq	$176, %rsp
	leaq	-160(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$2, -4(%rbp)
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movl	-132(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	geteuid
	movl	-164(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB16_4
# BB#3:                                 # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.4
	movl	$0, -4(%rbp)
.LBB16_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	socket_status, .Lfunc_end16-socket_status
	.cfi_endproc

	.align	16, 0x90
	.type	get_server_config,@function
get_server_config:                      # @get_server_config
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_name_absolute_p
	cmpl	$0, %eax
	je	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.74, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -80(%rbp)
	jmp	.LBB17_5
.LBB17_2:                               # %if.else
	movabsq	$.L.str.75, %rdi
	callq	getenv
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.4
	movq	-88(%rbp), %rdi
	callq	strlen
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-112(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$100, %rdi
	callq	xmalloc
	movabsq	$.L.str.74, %rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	stpcpy
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movl	$.L.str.76, %ecx
	movl	%ecx, %esi
	callq	stpcpy
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movq	-96(%rbp), %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	fopen
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rdi
	callq	free
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %if.end.13
	cmpq	$0, -80(%rbp)
	jne	.LBB17_7
# BB#6:                                 # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB17_14
.LBB17_7:                               # %if.end.16
	movl	$32, %esi
	leaq	-64(%rbp), %rdi
	movq	-80(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB17_10
# BB#8:                                 # %land.lhs.true
	movl	$58, %esi
	leaq	-64(%rbp), %rdi
	callq	strchr
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	je	.LBB17_10
# BB#9:                                 # %if.then.22
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	$0, (%rax)
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.23
	movl	$1, %edi
	movabsq	$.L.str.77, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB17_11:                              # %if.end.24
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movw	$2, (%rax)
	callq	inet_addr
	movq	-24(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-72(%rbp), %rdi
	callq	atoi
	movw	%ax, %cx
	movzwl	%cx, %edi
	callq	htons
	movl	$64, %edi
	movl	%edi, %esi
	movl	$1, %edi
	movl	%edi, %edx
	movq	-24(%rbp), %r8
	movw	%ax, 2(%r8)
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB17_13
# BB#12:                                # %if.then.31
	movl	$1, %edi
	movabsq	$.L.str.78, %rsi
	movq	progname, %rdx
	movb	$0, %al
	callq	message
	movl	$1, %edi
	callq	exit
.LBB17_13:                              # %if.end.32
	movq	-80(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB17_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	get_server_config, .Lfunc_end17-get_server_config
	.cfi_endproc

	.align	16, 0x90
	.type	sock_err_message,@function
sock_err_message:                       # @sock_err_message
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
	movq	progname, %rdx
	movq	-8(%rbp), %rcx
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movl	$1, %edi
	movabsq	$.L.str.79, %rsi
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	message
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	sock_err_message, .Lfunc_end18-sock_err_message
	.cfi_endproc

	.align	16, 0x90
	.type	file_name_absolute_p,@function
file_name_absolute_p:                   # @file_name_absolute_p
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_7
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB19_4
# BB#3:                                 # %if.then.2
	movl	$1, -4(%rbp)
	jmp	.LBB19_7
.LBB19_4:                               # %if.end.3
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB19_6
# BB#5:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.9
	movl	$0, -4(%rbp)
.LBB19_7:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	file_name_absolute_p, .Lfunc_end19-file_name_absolute_p
	.cfi_endproc

	.align	16, 0x90
	.type	pass_signal_to_emacs,@function
pass_signal_to_emacs:                   # @pass_signal_to_emacs
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -8(%rbp)
	cmpl	$0, emacs_pid
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	emacs_pid, %edi
	movl	-4(%rbp), %esi
	callq	kill
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB20_2:                               # %if.end
	movabsq	$pass_signal_to_emacs, %rsi
	movl	-4(%rbp), %edi
	callq	signal
	movl	-8(%rbp), %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%edi, -28(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-28(%rbp), %edi         # 4-byte Reload
	movl	%edi, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pass_signal_to_emacs, .Lfunc_end20-pass_signal_to_emacs
	.cfi_endproc

	.align	16, 0x90
	.type	handle_sigcont,@function
handle_sigcont:                         # @handle_sigcont
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -8(%rbp)
	callq	getpgrp
	movl	$1, %edi
	movl	%eax, -12(%rbp)
	callq	tcgetpgrp
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.94, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
	jmp	.LBB21_6
.LBB21_2:                               # %if.else
	xorl	%eax, %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB21_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, tty
	je	.LBB21_5
# BB#4:                                 # %if.then.4
	movl	$21, %esi
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edi
	callq	kill
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB21_5:                               # %if.end
	jmp	.LBB21_6
.LBB21_6:                               # %if.end.6
	movabsq	$handle_sigcont, %rsi
	movl	-4(%rbp), %edi
	callq	signal
	movl	-8(%rbp), %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%edi, -36(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-36(%rbp), %edi         # 4-byte Reload
	movl	%edi, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	handle_sigcont, .Lfunc_end21-handle_sigcont
	.cfi_endproc

	.align	16, 0x90
	.type	handle_sigtstp,@function
handle_sigtstp:                         # @handle_sigtstp
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
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -8(%rbp)
	cmpl	$0, emacs_socket
	je	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.95, %rsi
	movl	emacs_socket, %edi
	callq	send_to_emacs
.LBB22_2:                               # %if.end
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-136(%rbp), %rdx
	callq	sigprocmask
	leaq	-136(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	sigdelset
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	-4(%rbp), %edi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	signal
	movl	-4(%rbp), %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	raise
	movl	$2, %edi
	leaq	-136(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	sigprocmask
	movabsq	$handle_sigtstp, %rsi
	movl	-4(%rbp), %edi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	signal
	movl	-8(%rbp), %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	handle_sigtstp, .Lfunc_end22-handle_sigtstp
	.cfi_endproc

	.type	nowait,@object          # @nowait
	.bss
	.globl	nowait
	.align	4
nowait:
	.long	0                       # 0x0
	.size	nowait, 4

	.type	quiet,@object           # @quiet
	.globl	quiet
	.align	4
quiet:
	.long	0                       # 0x0
	.size	quiet, 4

	.type	eval,@object            # @eval
	.globl	eval
	.align	4
eval:
	.long	0                       # 0x0
	.size	eval, 4

	.type	current_frame,@object   # @current_frame
	.data
	.globl	current_frame
	.align	4
current_frame:
	.long	1                       # 0x1
	.size	current_frame, 4

	.type	display,@object         # @display
	.bss
	.globl	display
	.align	8
display:
	.quad	0
	.size	display, 8

	.type	alt_display,@object     # @alt_display
	.globl	alt_display
	.align	8
alt_display:
	.quad	0
	.size	alt_display, 8

	.type	parent_id,@object       # @parent_id
	.globl	parent_id
	.align	8
parent_id:
	.quad	0
	.size	parent_id, 8

	.type	tty,@object             # @tty
	.globl	tty
	.align	4
tty:
	.long	0                       # 0x0
	.size	tty, 4

	.type	alternate_editor,@object # @alternate_editor
	.globl	alternate_editor
	.align	8
alternate_editor:
	.quad	0
	.size	alternate_editor, 8

	.type	socket_name,@object     # @socket_name
	.globl	socket_name
	.align	8
socket_name:
	.quad	0
	.size	socket_name, 8

	.type	server_file,@object     # @server_file
	.globl	server_file
	.align	8
server_file:
	.quad	0
	.size	server_file, 8

	.type	emacs_pid,@object       # @emacs_pid
	.globl	emacs_pid
	.align	4
emacs_pid:
	.long	0                       # 0x0
	.size	emacs_pid, 4

	.type	frame_parameters,@object # @frame_parameters
	.globl	frame_parameters
	.align	8
frame_parameters:
	.quad	0
	.size	frame_parameters, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no-wait"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"quiet"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"eval"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"version"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tty"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"nw"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"create-frame"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"alternate-editor"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"frame-parameters"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"socket-name"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"server-file"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"display"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"parent-id"
	.size	.L.str.13, 10

	.type	longopts,@object        # @longopts
	.data
	.globl	longopts
	.align	16
longopts:
	.quad	.L.str
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	110                     # 0x6e
	.zero	4
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	113                     # 0x71
	.zero	4
	.quad	.L.str.2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	101                     # 0x65
	.zero	4
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.4
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	86                      # 0x56
	.zero	4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	116                     # 0x74
	.zero	4
	.quad	.L.str.6
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	116                     # 0x74
	.zero	4
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	99                      # 0x63
	.zero	4
	.quad	.L.str.8
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	97                      # 0x61
	.zero	4
	.quad	.L.str.9
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	70                      # 0x46
	.zero	4
	.quad	.L.str.10
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	115                     # 0x73
	.zero	4
	.quad	.L.str.11
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	102                     # 0x66
	.zero	4
	.quad	.L.str.12
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	100                     # 0x64
	.zero	4
	.quad	.L.str.13
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	112                     # 0x70
	.zero	4
	.zero	32
	.size	longopts, 480

	.type	sblen,@object           # @sblen
	.bss
	.globl	sblen
	.align	4
sblen:
	.long	0                       # 0x0
	.size	sblen, 4

	.type	emacs_socket,@object    # @emacs_socket
	.globl	emacs_socket
	.align	4
emacs_socket:
	.long	0                       # 0x0
	.size	emacs_socket, 4

	.type	main_argv,@object       # @main_argv
	.comm	main_argv,8,8
	.type	progname,@object        # @progname
	.comm	progname,8,8
	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"%s: file name or argument required\nTry '%s --help' for more information\n"
	.size	.L.str.14, 73

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s: %s\n"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Cannot get current working directory"
	.size	.L.str.16, 37

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"-env "
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" "
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"-dir "
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"/"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"-nowait "
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"-current-frame "
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"-display "
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"-parent-id "
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"-frame-parameters "
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"-tty "
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"-window-system "
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"-eval "
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"-position "
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"-file "
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\n"
	.size	.L.str.31, 2

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Waiting for Emacs..."
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"-emacs-pid "
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"-window-system-unsupported "
	.size	.L.str.34, 28

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"-print "
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"-print-nonl "
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"-error "
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"*ERROR*: %s"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"-suspend "
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"*ERROR*: Unknown message: %s\n"
	.size	.L.str.41, 30

	.type	send_buffer,@object     # @send_buffer
	.comm	send_buffer,4097,16
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"ALTERNATE_EDITOR"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"VHneqa:s:f:d:F:tc"
	.size	.L.str.43, 18

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"emacsclient %s\n"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"25.1"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Try '%s --help' for more information\n"
	.size	.L.str.46, 38

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"DISPLAY"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Usage: %s [OPTIONS] FILE...\n%s%s%s"
	.size	.L.str.48, 35

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Tell the Emacs server to visit the specified files.\nEvery FILE can be either just a FILENAME or [+LINE[:COLUMN]] FILENAME.\n\nThe following OPTIONS are accepted:\n-V, --version\t\tJust print version info and return\n-H, --help    \t\tPrint this usage information message\n-nw, -t, --tty \t\tOpen a new Emacs frame on the current terminal\n-c, --create-frame    \tCreate a new frame instead of trying to\n\t\t\tuse the current Emacs frame\n"
	.size	.L.str.49, 422

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"-F ALIST, --frame-parameters=ALIST\n\t\t\tSet the parameters of a new frame\n-e, --eval    \t\tEvaluate the FILE arguments as ELisp expressions\n-n, --no-wait\t\tDon't wait for the server to return\n-q, --quiet\t\tDon't display messages on success\n-d DISPLAY, --display=DISPLAY\n\t\t\tVisit the file in the given display\n"
	.size	.L.str.50, 305

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"--parent-id=ID          Open in parent window ID, via XEmbed\n-s SOCKET, --socket-name=SOCKET\n\t\t\tSet filename of the UNIX socket for communication\n-f SERVER, --server-file=SERVER\n\t\t\tSet filename of the TCP authentication file\n-a EDITOR, --alternate-editor=EDITOR\n\t\t\tEditor to fallback to if the server is not running\n\t\t\tIf EDITOR is the empty string, start Emacs in daemon\n\t\t\tmode and try connecting again\n\nReport bugs with M-x report-emacs-bug.\n"
	.size	.L.str.51, 446

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%s: error accessing socket \"%s\"\n"
	.size	.L.str.52, 33

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"EMACS_SERVER_FILE"
	.size	.L.str.53, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"%s: error accessing server file \"%s\"\n"
	.size	.L.str.54, 38

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"server"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%s: No socket or alternate editor.  Please use:\n\n\t--socket-name\n\t--server-file      (or environment variable EMACS_SERVER_FILE)\n\t--alternate-editor (or environment variable ALTERNATE_EDITOR)\n"
	.size	.L.str.56, 192

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%s: socket: %s\n"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"TMPDIR"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/tmp"
	.size	.L.str.59, 5

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"/emacs%ld/"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%s: socket-name %s too long\n"
	.size	.L.str.61, 29

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"LOGNAME"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"USER"
	.size	.L.str.63, 5

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%s: Invalid socket owner\n"
	.size	.L.str.64, 26

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%s: can't find socket; have you started the server?\nTo start the server in Emacs, type \"M-x server-start\".\n"
	.size	.L.str.65, 108

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%s: can't stat %s: %s\n"
	.size	.L.str.66, 23

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s: connect: %s\n"
	.size	.L.str.67, 17

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"malloc"
	.size	.L.str.68, 7

	.type	.Lset_tcp_socket.l_arg,@object # @set_tcp_socket.l_arg
	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
.Lset_tcp_socket.l_arg:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	.Lset_tcp_socket.l_arg, 8

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"127.0.0.1"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%s: connected to remote socket at %s\n"
	.size	.L.str.70, 38

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"socket"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"connect"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"-auth "
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"rb"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"HOME"
	.size	.L.str.75, 5

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"/.emacs.d/server/"
	.size	.L.str.76, 18

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"%s: invalid configuration info\n"
	.size	.L.str.77, 32

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"%s: cannot read authentication info\n"
	.size	.L.str.78, 37

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"%s: %s: %s\n"
	.size	.L.str.79, 12

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"%s: error executing alternate editor \"%s\"\n"
	.size	.L.str.80, 43

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Error: Could not start the Emacs daemon\n"
	.size	.L.str.81, 41

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Emacs daemon should have started, trying to connect again\n"
	.size	.L.str.82, 59

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Error: Cannot connect even after starting the Emacs daemon\n"
	.size	.L.str.83, 60

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Error: Cannot fork!\n"
	.size	.L.str.84, 21

	.type	.Lstart_daemon_and_retry_set_socket.emacs,@object # @start_daemon_and_retry_set_socket.emacs
.Lstart_daemon_and_retry_set_socket.emacs:
	.asciz	"emacs"
	.size	.Lstart_daemon_and_retry_set_socket.emacs, 6

	.type	.Lstart_daemon_and_retry_set_socket.daemon_option,@object # @start_daemon_and_retry_set_socket.daemon_option
.Lstart_daemon_and_retry_set_socket.daemon_option:
	.asciz	"--daemon"
	.size	.Lstart_daemon_and_retry_set_socket.daemon_option, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"--daemon="
	.size	.L.str.85, 10

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"emacs"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"%s: error starting emacs daemon\n"
	.size	.L.str.87, 33

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%s: failed to send %d bytes to socket: %s\n"
	.size	.L.str.88, 43

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"TERM"
	.size	.L.str.89, 5

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"%s: could not get terminal name\n"
	.size	.L.str.90, 33

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"%s: please set the TERM variable to your terminal type\n"
	.size	.L.str.91, 56

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"eterm"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"%s: opening a frame in an Emacs term buffer is not supported\n"
	.size	.L.str.93, 62

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"-resume \n"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"-suspend \n"
	.size	.L.str.95, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
