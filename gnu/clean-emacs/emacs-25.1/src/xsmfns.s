	.text
	.file	"xsmfns.bc"
	.globl	x_session_have_connection
	.align	16, 0x90
	.type	x_session_have_connection,@function
x_session_have_connection:              # @x_session_have_connection
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
	cmpl	$-1, ice_fd
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_session_have_connection, .Lfunc_end0-x_session_have_connection
	.cfi_endproc

	.globl	x_session_initialize
	.align	16, 0x90
	.type	x_session_initialize,@function
x_session_initialize:                   # @x_session_initialize
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
	pushq	%rbx
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -608(%rbp)
	callq	get_current_dir_name
	cmpq	$0, %rax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	stderr, %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	emacs_strerror
	movabsq	$.L.str, %rsi
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_2:                                # %if.end
	movl	$-1, ice_fd
	movb	$0, doing_interact
	movq	globals+2896, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                # %if.then.5
	movq	globals+2896, %rdi
	callq	SSDATA
	movq	%rax, -536(%rbp)
.LBB1_4:                                # %if.end.7
	movq	globals+1184, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_5:                                # %if.then.9
	movq	globals+1184, %rdi
	callq	SBYTES
	addq	-608(%rbp), %rax
	movq	%rax, -608(%rbp)
.LBB1_6:                                # %if.end.11
	movq	globals+1192, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_7
	jmp	.LBB1_8
.LBB1_7:                                # %if.then.13
	movq	globals+1192, %rdi
	callq	SBYTES
	addq	-608(%rbp), %rax
	movq	%rax, -608(%rbp)
.LBB1_8:                                # %if.end.16
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, emacs_program
	movq	emacs_program, %rax
	movq	%rax, -616(%rbp)
	movq	globals+1184, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_9
	jmp	.LBB1_10
.LBB1_9:                                # %if.then.20
	movq	-616(%rbp), %rdi
	movq	globals+1184, %rsi
	callq	lispstpcpy
	movq	%rax, -616(%rbp)
.LBB1_10:                               # %if.end.22
	movq	globals+1192, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_11:                               # %if.then.24
	movq	-616(%rbp), %rdi
	movq	globals+1192, %rsi
	callq	lispstpcpy
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB1_12:                               # %if.end.26
	movabsq	$smc_error_handler, %rdi
	movabsq	$smc_shutdown_cancelled_CB, %rax
	movabsq	$smc_save_complete_CB, %rcx
	movabsq	$smc_die_CB, %rdx
	movabsq	$smc_save_yourself_CB, %rsi
	movq	%rsi, -600(%rbp)
	movq	$0, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movq	$0, -576(%rbp)
	movq	%rcx, -568(%rbp)
	movq	$0, -560(%rbp)
	movq	%rax, -552(%rbp)
	movq	$0, -544(%rbp)
	callq	SmcSetErrorHandler
	movabsq	$ice_error_handler, %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	IceSetErrorHandler
	movabsq	$ice_io_error_handler, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	IceSetIOErrorHandler
	movabsq	$ice_conn_watch_CB, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	IceAddConnectionWatch
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	$15, %r9d
	movl	%r9d, %esi
	leaq	-600(%rbp), %r9
	movabsq	$client_id, %rdi
	movl	$512, %r10d             # imm = 0x200
	leaq	-528(%rbp), %r11
	movq	-536(%rbp), %rbx
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movl	%r8d, %ecx
	movq	-680(%rbp), %r8         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-672(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	$512, 16(%rsp)          # imm = 0x200
	movq	%r11, 24(%rsp)
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movl	%r10d, -688(%rbp)       # 4-byte Spill
	callq	SmcOpenConnection
	movq	%rax, smc_conn
	cmpq	$0, smc_conn
	je	.LBB1_14
# BB#13:                                # %if.then.42
	movq	client_id, %rdi
	callq	build_string
	movq	%rax, globals+2888
	movq	client_id, %rdi
	callq	gdk_set_sm_client_id
.LBB1_14:                               # %if.end.44
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	x_session_initialize, .Lfunc_end1-x_session_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	smc_save_yourself_CB,@function
smc_save_yourself_CB:                   # @smc_save_yourself_CB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$960, %rsp              # imm = 0x3C0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	$0, -572(%rbp)
	movl	$0, -576(%rbp)
	movl	$0, -580(%rbp)
	movq	$0, -600(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fuser_login_name
	movq	%rax, -608(%rbp)
	movq	globals+1192, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_1
	jmp	.LBB2_2
.LBB2_1:                                # %lor.lhs.false
	movq	-608(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB2_3
.LBB2_2:                                # %if.then
	jmp	.LBB2_320
.LBB2_3:                                # %if.end
	movabsq	$.L.str.5, %rdi
	leaq	-240(%rbp), %rax
	movslq	-580(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-580(%rbp), %rcx
	movq	%rax, -80(%rbp,%rcx,8)
	callq	xstrdup
	movabsq	$.L.str.6, %rdi
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, (%rcx)
	callq	xstrdup
	movabsq	$.L.str.7, %rdi
	leaq	-240(%rbp), %rcx
	leaq	-560(%rbp), %rdx
	movslq	-580(%rbp), %rsi
	movq	-80(%rbp,%rsi,8), %rsi
	movq	%rax, 8(%rsi)
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movl	$1, 16(%rax)
	movl	-572(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -572(%rbp)
	movslq	%r8d, %rax
	shlq	$4, %rax
	addq	%rax, %rdx
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rdx, 24(%rax)
	movq	emacs_program, %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	24(%rax), %rax
	movl	%r8d, (%rax)
	movq	emacs_program, %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	-580(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -580(%rbp)
	movslq	-580(%rbp), %rax
	shlq	$5, %rax
	movq	-632(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movslq	-580(%rbp), %rax
	movq	%rcx, -80(%rbp,%rax,8)
	movq	-624(%rbp), %rdi        # 8-byte Reload
	callq	xstrdup
	movabsq	$.L.str.8, %rdi
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, (%rcx)
	callq	xstrdup
	leaq	-560(%rbp), %rcx
	movslq	-580(%rbp), %rdx
	movq	-80(%rbp,%rdx,8), %rdx
	movq	%rax, 8(%rdx)
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movl	$1, 16(%rax)
	movl	-572(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -572(%rbp)
	movslq	%r8d, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rcx, 24(%rax)
	movq	globals+1192, %rdi
	callq	SBYTES
	movl	%eax, %r8d
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	24(%rax), %rax
	movl	%r8d, (%rax)
	movq	globals+1192, %rdi
	callq	SDATA
	movabsq	$.L.str.9, %rdi
	leaq	-240(%rbp), %rcx
	movslq	-580(%rbp), %rdx
	movq	-80(%rbp,%rdx,8), %rdx
	movq	24(%rdx), %rdx
	movq	%rax, 8(%rdx)
	movl	-580(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -580(%rbp)
	movslq	-580(%rbp), %rax
	shlq	$5, %rax
	addq	%rax, %rcx
	movslq	-580(%rbp), %rax
	movq	%rcx, -80(%rbp,%rax,8)
	callq	xstrdup
	movabsq	$.L.str.8, %rdi
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, (%rcx)
	callq	xstrdup
	leaq	-560(%rbp), %rcx
	movslq	-580(%rbp), %rdx
	movq	-80(%rbp,%rdx,8), %rdx
	movq	%rax, 8(%rdx)
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movl	$1, 16(%rax)
	movl	-572(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -572(%rbp)
	movslq	%r8d, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rcx, 24(%rax)
	movq	-608(%rbp), %rdi
	callq	SBYTES
	movl	%eax, %r8d
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	24(%rax), %rax
	movl	%r8d, (%rax)
	movq	-608(%rbp), %rdi
	callq	SDATA
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	-580(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -580(%rbp)
	callq	get_current_dir_name
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.99
	movabsq	$.L.str.10, %rdi
	leaq	-240(%rbp), %rax
	movslq	-580(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-580(%rbp), %rcx
	movq	%rax, -80(%rbp,%rcx,8)
	callq	xstrdup
	movabsq	$.L.str.8, %rdi
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, (%rcx)
	callq	xstrdup
	leaq	-560(%rbp), %rcx
	movslq	-580(%rbp), %rdi
	movq	-80(%rbp,%rdi,8), %rdi
	movq	%rax, 8(%rdi)
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movl	$1, 16(%rax)
	movl	-572(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -572(%rbp)
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rcx, 24(%rax)
	movq	-616(%rbp), %rdi
	callq	strlen
	movl	%eax, %edx
	movslq	-580(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	24(%rax), %rax
	movl	%edx, (%rax)
	movq	-616(%rbp), %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	-580(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -580(%rbp)
.LBB2_5:                                # %if.end.134
	movabsq	$.L.str.11, %rdi
	leaq	-240(%rbp), %rax
	movslq	-580(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movslq	-580(%rbp), %rcx
	movq	%rax, -80(%rbp,%rcx,8)
	callq	xstrdup
	movabsq	$.L.str.6, %rdi
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, (%rcx)
	callq	xstrdup
	xorl	%edx, %edx
	movb	%dl, %sil
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, 8(%rcx)
	testb	$1, %sil
	jne	.LBB2_6
	jmp	.LBB2_65
.LBB2_6:                                # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_7
	jmp	.LBB2_36
.LBB2_7:                                # %cond.true.147
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_9
# BB#8:                                 # %cond.true.151
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB2_10:                               # %cond.end
	movl	-636(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_20
# BB#11:                                # %cond.true.176
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_12
	jmp	.LBB2_16
.LBB2_12:                               # %cond.true.177
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	initial_argc, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -640(%rbp)        # 4-byte Spill
	jge	.LBB2_14
# BB#13:                                # %cond.true.187
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jmp	.LBB2_15
.LBB2_14:                               # %cond.false.207
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB2_15:                               # %cond.end.213
	movl	-644(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-640(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_28
	jmp	.LBB2_25
.LBB2_16:                               # %cond.false.218
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_18
# BB#17:                                # %cond.true.226
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false.236
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB2_19:                               # %cond.end.242
	movl	-648(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_28
	jmp	.LBB2_25
.LBB2_20:                               # %cond.false.249
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB2_22
# BB#21:                                # %cond.true.254
	movl	$3, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_28
	jmp	.LBB2_25
.LBB2_22:                               # %cond.false.260
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_23
	jmp	.LBB2_24
.LBB2_23:                               # %cond.true.261
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	initial_argc, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$3, %edx
	cmpl	%edx, %eax
	jle	.LBB2_28
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false.269
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_28
.LBB2_25:                               # %lor.lhs.false.275
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_27
# BB#26:                                # %land.lhs.true
	movl	initial_argc, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$3, %eax
	cmpl	$-128, %eax
	jl	.LBB2_28
.LBB2_27:                               # %lor.lhs.false.288
	movl	$127, %eax
	movl	initial_argc, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_32
.LBB2_28:                               # %cond.true.294
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	cmpl	$127, %eax
	jg	.LBB2_30
# BB#29:                                # %cond.true.300
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB2_31
.LBB2_30:                               # %cond.false.306
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB2_31:                               # %cond.end.314
	movl	-652(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_32:                               # %cond.false.316
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	cmpl	$127, %eax
	jg	.LBB2_34
# BB#33:                                # %cond.true.322
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB2_35
.LBB2_34:                               # %cond.false.328
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB2_35:                               # %cond.end.336
	movl	-656(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_36:                               # %cond.false.338
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_38
# BB#37:                                # %cond.true.344
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB2_39
.LBB2_38:                               # %cond.false.360
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB2_39:                               # %cond.end.364
	movl	-660(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_49
# BB#40:                                # %cond.true.368
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_41
	jmp	.LBB2_45
.LBB2_41:                               # %cond.true.369
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -664(%rbp)        # 4-byte Spill
	jge	.LBB2_43
# BB#42:                                # %cond.true.375
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	jmp	.LBB2_44
.LBB2_43:                               # %cond.false.391
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
.LBB2_44:                               # %cond.end.395
	movl	-668(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-664(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_57
	jmp	.LBB2_54
.LBB2_45:                               # %cond.false.400
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_47
# BB#46:                                # %cond.true.406
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false.414
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB2_48:                               # %cond.end.418
	movl	-672(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	cmpl	initial_argc, %eax
	jl	.LBB2_57
	jmp	.LBB2_54
.LBB2_49:                               # %cond.false.423
	cmpl	$0, initial_argc
	jge	.LBB2_51
# BB#50:                                # %cond.true.426
	movl	$3, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_57
	jmp	.LBB2_54
.LBB2_51:                               # %cond.false.430
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_52
	jmp	.LBB2_53
.LBB2_52:                               # %cond.true.431
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_57
	jmp	.LBB2_54
.LBB2_53:                               # %cond.false.435
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_57
.LBB2_54:                               # %lor.lhs.false.439
	movl	initial_argc, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_56
# BB#55:                                # %land.lhs.true.445
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$-128, %eax
	jl	.LBB2_57
.LBB2_56:                               # %lor.lhs.false.449
	movl	$127, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_61
.LBB2_57:                               # %cond.true.453
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	cmpl	$127, %eax
	jg	.LBB2_59
# BB#58:                                # %cond.true.459
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB2_60
.LBB2_59:                               # %cond.false.465
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB2_60:                               # %cond.end.473
	movl	-676(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_61:                               # %cond.false.475
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	cmpl	$127, %eax
	jg	.LBB2_63
# BB#62:                                # %cond.true.481
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	jmp	.LBB2_64
.LBB2_63:                               # %cond.false.487
	movl	initial_argc, %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	addl	$3, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
.LBB2_64:                               # %cond.end.495
	movl	-680(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_65:                               # %cond.false.497
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_66
	jmp	.LBB2_125
.LBB2_66:                               # %cond.true.498
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_67
	jmp	.LBB2_96
.LBB2_67:                               # %cond.true.499
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_69
# BB#68:                                # %cond.true.507
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	jmp	.LBB2_70
.LBB2_69:                               # %cond.false.527
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB2_70:                               # %cond.end.533
	movl	-684(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_80
# BB#71:                                # %cond.true.537
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_72
	jmp	.LBB2_76
.LBB2_72:                               # %cond.true.538
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	initial_argc, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -688(%rbp)        # 4-byte Spill
	jge	.LBB2_74
# BB#73:                                # %cond.true.548
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB2_75
.LBB2_74:                               # %cond.false.568
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -692(%rbp)        # 4-byte Spill
.LBB2_75:                               # %cond.end.574
	movl	-692(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-688(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_88
	jmp	.LBB2_85
.LBB2_76:                               # %cond.false.579
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_78
# BB#77:                                # %cond.true.587
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB2_79
.LBB2_78:                               # %cond.false.597
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
.LBB2_79:                               # %cond.end.603
	movl	-696(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB2_88
	jmp	.LBB2_85
.LBB2_80:                               # %cond.false.610
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB2_82
# BB#81:                                # %cond.true.615
	movl	$3, %eax
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_88
	jmp	.LBB2_85
.LBB2_82:                               # %cond.false.621
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_83
	jmp	.LBB2_84
.LBB2_83:                               # %cond.true.622
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	initial_argc, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$3, %edx
	cmpl	%edx, %eax
	jle	.LBB2_88
	jmp	.LBB2_85
.LBB2_84:                               # %cond.false.630
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_88
.LBB2_85:                               # %lor.lhs.false.636
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_87
# BB#86:                                # %land.lhs.true.644
	movl	initial_argc, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$3, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB2_88
.LBB2_87:                               # %lor.lhs.false.650
	movl	$32767, %eax            # imm = 0x7FFF
	movl	initial_argc, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_92
.LBB2_88:                               # %cond.true.656
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB2_90
# BB#89:                                # %cond.true.662
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jmp	.LBB2_91
.LBB2_90:                               # %cond.false.668
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB2_91:                               # %cond.end.676
	movl	-700(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_92:                               # %cond.false.678
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB2_94
# BB#93:                                # %cond.true.684
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB2_95
.LBB2_94:                               # %cond.false.690
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -704(%rbp)        # 4-byte Spill
.LBB2_95:                               # %cond.end.698
	movl	-704(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_96:                               # %cond.false.700
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_98
# BB#97:                                # %cond.true.706
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB2_99
.LBB2_98:                               # %cond.false.722
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB2_99:                               # %cond.end.726
	movl	-708(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_109
# BB#100:                               # %cond.true.730
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_101
	jmp	.LBB2_105
.LBB2_101:                              # %cond.true.731
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jge	.LBB2_103
# BB#102:                               # %cond.true.737
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB2_104
.LBB2_103:                              # %cond.false.753
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB2_104:                              # %cond.end.757
	movl	-716(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-712(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_117
	jmp	.LBB2_114
.LBB2_105:                              # %cond.false.762
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_107
# BB#106:                               # %cond.true.768
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB2_108
.LBB2_107:                              # %cond.false.776
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB2_108:                              # %cond.end.780
	movl	-720(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	cmpl	initial_argc, %eax
	jl	.LBB2_117
	jmp	.LBB2_114
.LBB2_109:                              # %cond.false.785
	cmpl	$0, initial_argc
	jge	.LBB2_111
# BB#110:                               # %cond.true.788
	movl	$3, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_117
	jmp	.LBB2_114
.LBB2_111:                              # %cond.false.792
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_112
	jmp	.LBB2_113
.LBB2_112:                              # %cond.true.793
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_117
	jmp	.LBB2_114
.LBB2_113:                              # %cond.false.797
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_117
.LBB2_114:                              # %lor.lhs.false.801
	movl	initial_argc, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_116
# BB#115:                               # %land.lhs.true.807
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB2_117
.LBB2_116:                              # %lor.lhs.false.811
	movl	$32767, %eax            # imm = 0x7FFF
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_121
.LBB2_117:                              # %cond.true.815
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB2_119
# BB#118:                               # %cond.true.821
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB2_120
.LBB2_119:                              # %cond.false.827
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB2_120:                              # %cond.end.835
	movl	-724(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_121:                              # %cond.false.837
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB2_123
# BB#122:                               # %cond.true.843
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -728(%rbp)        # 4-byte Spill
	jmp	.LBB2_124
.LBB2_123:                              # %cond.false.849
	movl	initial_argc, %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	addl	$3, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -728(%rbp)        # 4-byte Spill
.LBB2_124:                              # %cond.end.857
	movl	-728(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_125:                              # %cond.false.859
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_126
	jmp	.LBB2_185
.LBB2_126:                              # %cond.true.860
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_127
	jmp	.LBB2_156
.LBB2_127:                              # %cond.true.861
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_129
# BB#128:                               # %cond.true.867
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
	jmp	.LBB2_130
.LBB2_129:                              # %cond.false.883
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
.LBB2_130:                              # %cond.end.887
	movl	-732(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_140
# BB#131:                               # %cond.true.891
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_132
	jmp	.LBB2_136
.LBB2_132:                              # %cond.true.892
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -736(%rbp)        # 4-byte Spill
	jge	.LBB2_134
# BB#133:                               # %cond.true.898
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
	jmp	.LBB2_135
.LBB2_134:                              # %cond.false.914
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -740(%rbp)        # 4-byte Spill
.LBB2_135:                              # %cond.end.918
	movl	-740(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-736(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_148
	jmp	.LBB2_145
.LBB2_136:                              # %cond.false.923
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_138
# BB#137:                               # %cond.true.929
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jmp	.LBB2_139
.LBB2_138:                              # %cond.false.937
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -744(%rbp)        # 4-byte Spill
.LBB2_139:                              # %cond.end.941
	movl	-744(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	cmpl	initial_argc, %eax
	jl	.LBB2_148
	jmp	.LBB2_145
.LBB2_140:                              # %cond.false.946
	cmpl	$0, initial_argc
	jge	.LBB2_142
# BB#141:                               # %cond.true.949
	movl	$3, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_148
	jmp	.LBB2_145
.LBB2_142:                              # %cond.false.953
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_143
	jmp	.LBB2_144
.LBB2_143:                              # %cond.true.954
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_148
	jmp	.LBB2_145
.LBB2_144:                              # %cond.false.958
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_148
.LBB2_145:                              # %lor.lhs.false.962
	movl	initial_argc, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_147
# BB#146:                               # %land.lhs.true.968
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB2_148
.LBB2_147:                              # %lor.lhs.false.972
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_152
.LBB2_148:                              # %cond.true.976
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB2_150
# BB#149:                               # %cond.true.980
	movl	initial_argc, %eax
	addl	$3, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jmp	.LBB2_151
.LBB2_150:                              # %cond.false.982
	movl	initial_argc, %eax
	addl	$3, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -748(%rbp)        # 4-byte Spill
.LBB2_151:                              # %cond.end.986
	movl	-748(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_152:                              # %cond.false.988
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB2_154
# BB#153:                               # %cond.true.992
	movl	initial_argc, %eax
	addl	$3, %eax
	movl	%eax, -752(%rbp)        # 4-byte Spill
	jmp	.LBB2_155
.LBB2_154:                              # %cond.false.994
	movl	initial_argc, %eax
	addl	$3, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -752(%rbp)        # 4-byte Spill
.LBB2_155:                              # %cond.end.998
	movl	-752(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_156:                              # %cond.false.1000
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_158
# BB#157:                               # %cond.true.1006
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB2_159
.LBB2_158:                              # %cond.false.1022
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB2_159:                              # %cond.end.1026
	movl	-756(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_169
# BB#160:                               # %cond.true.1030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_161
	jmp	.LBB2_165
.LBB2_161:                              # %cond.true.1031
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -760(%rbp)        # 4-byte Spill
	jge	.LBB2_163
# BB#162:                               # %cond.true.1037
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -764(%rbp)        # 4-byte Spill
	jmp	.LBB2_164
.LBB2_163:                              # %cond.false.1053
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB2_164:                              # %cond.end.1057
	movl	-764(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-760(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_177
	jmp	.LBB2_174
.LBB2_165:                              # %cond.false.1062
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_167
# BB#166:                               # %cond.true.1068
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB2_168
.LBB2_167:                              # %cond.false.1076
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
.LBB2_168:                              # %cond.end.1080
	movl	-768(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	cmpl	initial_argc, %eax
	jl	.LBB2_177
	jmp	.LBB2_174
.LBB2_169:                              # %cond.false.1085
	cmpl	$0, initial_argc
	jge	.LBB2_171
# BB#170:                               # %cond.true.1088
	movl	$3, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_177
	jmp	.LBB2_174
.LBB2_171:                              # %cond.false.1092
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_172
	jmp	.LBB2_173
.LBB2_172:                              # %cond.true.1093
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_177
	jmp	.LBB2_174
.LBB2_173:                              # %cond.false.1097
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_177
.LBB2_174:                              # %lor.lhs.false.1101
	movl	initial_argc, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_176
# BB#175:                               # %land.lhs.true.1107
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB2_177
.LBB2_176:                              # %lor.lhs.false.1111
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_181
.LBB2_177:                              # %cond.true.1115
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB2_179
# BB#178:                               # %cond.true.1119
	movl	initial_argc, %eax
	addl	$3, %eax
	movl	%eax, -772(%rbp)        # 4-byte Spill
	jmp	.LBB2_180
.LBB2_179:                              # %cond.false.1121
	movl	initial_argc, %eax
	addl	$3, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -772(%rbp)        # 4-byte Spill
.LBB2_180:                              # %cond.end.1125
	movl	-772(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_181:                              # %cond.false.1127
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB2_183
# BB#182:                               # %cond.true.1131
	movl	initial_argc, %eax
	addl	$3, %eax
	movl	%eax, -776(%rbp)        # 4-byte Spill
	jmp	.LBB2_184
.LBB2_183:                              # %cond.false.1133
	movl	initial_argc, %eax
	addl	$3, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -776(%rbp)        # 4-byte Spill
.LBB2_184:                              # %cond.end.1137
	movl	-776(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_185:                              # %cond.false.1139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_186
	jmp	.LBB2_245
.LBB2_186:                              # %cond.true.1140
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_187
	jmp	.LBB2_216
.LBB2_187:                              # %cond.true.1141
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_189
# BB#188:                               # %cond.true.1148
	xorl	%eax, %eax
	movslq	initial_argc, %rcx
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
	movslq	initial_argc, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB2_190
.LBB2_189:                              # %cond.false.1167
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB2_190:                              # %cond.end.1172
	movq	-784(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB2_200
# BB#191:                               # %cond.true.1176
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_192
	jmp	.LBB2_196
.LBB2_192:                              # %cond.true.1177
	movslq	initial_argc, %rax
	movslq	initial_argc, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jge	.LBB2_194
# BB#193:                               # %cond.true.1185
	xorl	%eax, %eax
	movslq	initial_argc, %rcx
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
	movslq	initial_argc, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB2_195
.LBB2_194:                              # %cond.false.1204
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB2_195:                              # %cond.end.1209
	movq	-800(%rbp), %rax        # 8-byte Reload
	subq	$3, %rax
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB2_208
	jmp	.LBB2_205
.LBB2_196:                              # %cond.false.1214
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_198
# BB#197:                               # %cond.true.1221
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB2_199
.LBB2_198:                              # %cond.false.1230
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB2_199:                              # %cond.end.1235
	movq	-808(%rbp), %rax        # 8-byte Reload
	subq	$3, %rax
	movslq	initial_argc, %rcx
	cmpq	%rcx, %rax
	jl	.LBB2_208
	jmp	.LBB2_205
.LBB2_200:                              # %cond.false.1241
	movslq	initial_argc, %rax
	cmpq	$0, %rax
	jge	.LBB2_202
# BB#201:                               # %cond.true.1245
	movl	$3, %eax
	movl	%eax, %ecx
	movslq	initial_argc, %rdx
	addq	$3, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB2_208
	jmp	.LBB2_205
.LBB2_202:                              # %cond.false.1250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_203
	jmp	.LBB2_204
.LBB2_203:                              # %cond.true.1251
	movslq	initial_argc, %rax
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jle	.LBB2_208
	jmp	.LBB2_205
.LBB2_204:                              # %cond.false.1257
	movslq	initial_argc, %rax
	addq	$3, %rax
	cmpq	$3, %rax
	jl	.LBB2_208
.LBB2_205:                              # %lor.lhs.false.1262
	movslq	initial_argc, %rax
	addq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_207
# BB#206:                               # %land.lhs.true.1269
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_208
.LBB2_207:                              # %lor.lhs.false.1274
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_212
.LBB2_208:                              # %cond.true.1279
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_210
# BB#209:                               # %cond.true.1284
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB2_211
.LBB2_210:                              # %cond.false.1287
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB2_211:                              # %cond.end.1292
	movq	-816(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_212:                              # %cond.false.1295
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_214
# BB#213:                               # %cond.true.1300
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB2_215
.LBB2_214:                              # %cond.false.1303
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB2_215:                              # %cond.end.1308
	movq	-824(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_216:                              # %cond.false.1311
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_218
# BB#217:                               # %cond.true.1317
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB2_219
.LBB2_218:                              # %cond.false.1333
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
.LBB2_219:                              # %cond.end.1337
	movl	-828(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_229
# BB#220:                               # %cond.true.1341
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_221
	jmp	.LBB2_225
.LBB2_221:                              # %cond.true.1342
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -832(%rbp)        # 4-byte Spill
	jge	.LBB2_223
# BB#222:                               # %cond.true.1348
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	jmp	.LBB2_224
.LBB2_223:                              # %cond.false.1364
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
.LBB2_224:                              # %cond.end.1368
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-832(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_237
	jmp	.LBB2_234
.LBB2_225:                              # %cond.false.1373
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_227
# BB#226:                               # %cond.true.1379
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
	jmp	.LBB2_228
.LBB2_227:                              # %cond.false.1387
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
.LBB2_228:                              # %cond.end.1391
	movl	-840(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	cmpl	initial_argc, %eax
	jl	.LBB2_237
	jmp	.LBB2_234
.LBB2_229:                              # %cond.false.1396
	cmpl	$0, initial_argc
	jge	.LBB2_231
# BB#230:                               # %cond.true.1399
	movl	$3, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_237
	jmp	.LBB2_234
.LBB2_231:                              # %cond.false.1403
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_232
	jmp	.LBB2_233
.LBB2_232:                              # %cond.true.1404
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_237
	jmp	.LBB2_234
.LBB2_233:                              # %cond.false.1408
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_237
.LBB2_234:                              # %lor.lhs.false.1412
	movl	initial_argc, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_236
# BB#235:                               # %land.lhs.true.1418
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	initial_argc, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB2_237
.LBB2_236:                              # %lor.lhs.false.1423
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	initial_argc, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB2_241
.LBB2_237:                              # %cond.true.1428
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_239
# BB#238:                               # %cond.true.1433
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB2_240
.LBB2_239:                              # %cond.false.1436
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB2_240:                              # %cond.end.1441
	movq	-848(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_241:                              # %cond.false.1444
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_243
# BB#242:                               # %cond.true.1449
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB2_244
.LBB2_243:                              # %cond.false.1452
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB2_244:                              # %cond.end.1457
	movq	-856(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_245:                              # %cond.false.1460
	movb	$1, %al
	testb	$1, %al
	jne	.LBB2_246
	jmp	.LBB2_275
.LBB2_246:                              # %cond.true.1461
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_248
# BB#247:                               # %cond.true.1468
	xorl	%eax, %eax
	movslq	initial_argc, %rcx
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
	movslq	initial_argc, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB2_249
.LBB2_248:                              # %cond.false.1487
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB2_249:                              # %cond.end.1492
	movq	-864(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB2_259
# BB#250:                               # %cond.true.1496
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_251
	jmp	.LBB2_255
.LBB2_251:                              # %cond.true.1497
	movslq	initial_argc, %rax
	movslq	initial_argc, %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jge	.LBB2_253
# BB#252:                               # %cond.true.1505
	xorl	%eax, %eax
	movslq	initial_argc, %rcx
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
	movslq	initial_argc, %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB2_254
.LBB2_253:                              # %cond.false.1524
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB2_254:                              # %cond.end.1529
	movq	-880(%rbp), %rax        # 8-byte Reload
	subq	$3, %rax
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB2_267
	jmp	.LBB2_264
.LBB2_255:                              # %cond.false.1534
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_257
# BB#256:                               # %cond.true.1541
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB2_258
.LBB2_257:                              # %cond.false.1550
	movslq	initial_argc, %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB2_258:                              # %cond.end.1555
	movq	-888(%rbp), %rax        # 8-byte Reload
	subq	$3, %rax
	movslq	initial_argc, %rcx
	cmpq	%rcx, %rax
	jl	.LBB2_267
	jmp	.LBB2_264
.LBB2_259:                              # %cond.false.1561
	movslq	initial_argc, %rax
	cmpq	$0, %rax
	jge	.LBB2_261
# BB#260:                               # %cond.true.1565
	movl	$3, %eax
	movl	%eax, %ecx
	movslq	initial_argc, %rdx
	addq	$3, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB2_267
	jmp	.LBB2_264
.LBB2_261:                              # %cond.false.1570
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_262
	jmp	.LBB2_263
.LBB2_262:                              # %cond.true.1571
	movslq	initial_argc, %rax
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jle	.LBB2_267
	jmp	.LBB2_264
.LBB2_263:                              # %cond.false.1577
	movslq	initial_argc, %rax
	addq	$3, %rax
	cmpq	$3, %rax
	jl	.LBB2_267
.LBB2_264:                              # %lor.lhs.false.1582
	movslq	initial_argc, %rax
	addq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB2_266
# BB#265:                               # %land.lhs.true.1589
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_267
.LBB2_266:                              # %lor.lhs.false.1594
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_271
.LBB2_267:                              # %cond.true.1599
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_269
# BB#268:                               # %cond.true.1604
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jmp	.LBB2_270
.LBB2_269:                              # %cond.false.1607
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB2_270:                              # %cond.end.1612
	movq	-896(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_271:                              # %cond.false.1615
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_273
# BB#272:                               # %cond.true.1620
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB2_274
.LBB2_273:                              # %cond.false.1623
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB2_274:                              # %cond.end.1628
	movq	-904(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_275:                              # %cond.false.1631
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_277
# BB#276:                               # %cond.true.1637
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
	jmp	.LBB2_278
.LBB2_277:                              # %cond.false.1653
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
.LBB2_278:                              # %cond.end.1657
	movl	-908(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB2_288
# BB#279:                               # %cond.true.1661
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_280
	jmp	.LBB2_284
.LBB2_280:                              # %cond.true.1662
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -912(%rbp)        # 4-byte Spill
	jge	.LBB2_282
# BB#281:                               # %cond.true.1668
	xorl	%eax, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	initial_argc, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -916(%rbp)        # 4-byte Spill
	jmp	.LBB2_283
.LBB2_282:                              # %cond.false.1684
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -916(%rbp)        # 4-byte Spill
.LBB2_283:                              # %cond.end.1688
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	-912(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB2_296
	jmp	.LBB2_293
.LBB2_284:                              # %cond.false.1693
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_286
# BB#285:                               # %cond.true.1699
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -920(%rbp)        # 4-byte Spill
	jmp	.LBB2_287
.LBB2_286:                              # %cond.false.1707
	movl	initial_argc, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -920(%rbp)        # 4-byte Spill
.LBB2_287:                              # %cond.end.1711
	movl	-920(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	cmpl	initial_argc, %eax
	jl	.LBB2_296
	jmp	.LBB2_293
.LBB2_288:                              # %cond.false.1716
	cmpl	$0, initial_argc
	jge	.LBB2_290
# BB#289:                               # %cond.true.1719
	movl	$3, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_296
	jmp	.LBB2_293
.LBB2_290:                              # %cond.false.1723
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB2_291
	jmp	.LBB2_292
.LBB2_291:                              # %cond.true.1724
	movl	initial_argc, %eax
	movl	initial_argc, %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_296
	jmp	.LBB2_293
.LBB2_292:                              # %cond.false.1728
	movl	initial_argc, %eax
	addl	$3, %eax
	cmpl	$3, %eax
	jl	.LBB2_296
.LBB2_293:                              # %lor.lhs.false.1732
	movl	initial_argc, %eax
	addl	$3, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB2_295
# BB#294:                               # %land.lhs.true.1738
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	initial_argc, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	cmpq	%rax, %rdx
	jl	.LBB2_296
.LBB2_295:                              # %lor.lhs.false.1743
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	initial_argc, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB2_300
.LBB2_296:                              # %cond.true.1748
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_298
# BB#297:                               # %cond.true.1753
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB2_299
.LBB2_298:                              # %cond.false.1756
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB2_299:                              # %cond.end.1761
	movq	-928(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movl	%eax, %edx
	movl	%edx, -584(%rbp)
	testb	$1, %cl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_300:                              # %cond.false.1764
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movslq	initial_argc, %rcx
	addq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB2_302
# BB#301:                               # %cond.true.1769
	movslq	initial_argc, %rax
	addq	$3, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB2_303
.LBB2_302:                              # %cond.false.1772
	movslq	initial_argc, %rax
	addq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB2_303:                              # %cond.end.1777
	movq	-936(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -584(%rbp)
	testb	$1, %dl
	jne	.LBB2_304
	jmp	.LBB2_305
.LBB2_304:                              # %if.then.1780
	movq	$-1, %rdi
	callq	memory_full
.LBB2_305:                              # %if.end.1781
	movl	$16, %eax
	movl	%eax, %esi
	movl	-584(%rbp), %eax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movl	%eax, 16(%rcx)
	movslq	-584(%rbp), %rdi
	callq	xnmalloc
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	movq	%rax, 24(%rcx)
	movq	emacs_program, %rdi
	callq	strlen
	movl	%eax, %edx
	movslq	-576(%rbp), %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	shlq	$4, %rax
	addq	24(%rcx), %rax
	movl	%edx, (%rax)
	movq	emacs_program, %rax
	movl	-576(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -576(%rbp)
	movslq	%edx, %rcx
	movslq	-580(%rbp), %rsi
	movq	-80(%rbp,%rsi,8), %rsi
	shlq	$4, %rcx
	addq	24(%rsi), %rcx
	movq	%rax, 8(%rcx)
	movq	client_id, %rdi
	callq	strlen
	addq	$7, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movabsq	$NOSPLASH_OPT, %rcx
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rdi
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	callq	stpcpy
	movq	client_id, %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	-592(%rbp), %rdi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movslq	-576(%rbp), %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	shlq	$4, %rax
	addq	24(%rcx), %rax
	movl	%edx, (%rax)
	movq	-592(%rbp), %rax
	movl	-576(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -576(%rbp)
	movslq	%edx, %rcx
	movslq	-580(%rbp), %rsi
	movq	-80(%rbp,%rsi,8), %rsi
	shlq	$4, %rcx
	addq	24(%rsi), %rcx
	movq	%rax, 8(%rcx)
	movl	$NOSPLASH_OPT, %edx
	movl	%edx, %edi
	callq	strlen
	movl	%eax, %edx
	movslq	-576(%rbp), %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	shlq	$4, %rax
	addq	24(%rcx), %rax
	movl	%edx, (%rax)
	movl	-576(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -576(%rbp)
	movslq	%edx, %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	shlq	$4, %rax
	addq	24(%rcx), %rax
	movq	-944(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 8(%rax)
	cmpq	$0, -616(%rbp)
	je	.LBB2_307
# BB#306:                               # %if.then.1842
	movq	-616(%rbp), %rdi
	callq	strlen
	addq	$8, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rdi
	movl	$.L.str.13, %ecx
	movl	%ecx, %esi
	callq	stpcpy
	movq	-616(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	-600(%rbp), %rdi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movslq	-576(%rbp), %rax
	movslq	-580(%rbp), %rsi
	movq	-80(%rbp,%rsi,8), %rsi
	shlq	$4, %rax
	addq	24(%rsi), %rax
	movl	%ecx, (%rax)
	movq	-600(%rbp), %rax
	movl	-576(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -576(%rbp)
	movslq	%ecx, %rsi
	movslq	-580(%rbp), %rdi
	movq	-80(%rbp,%rdi,8), %rdi
	shlq	$4, %rsi
	addq	24(%rdi), %rsi
	movq	%rax, 8(%rsi)
.LBB2_307:                              # %if.end.1864
	movl	$1, -584(%rbp)
.LBB2_308:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-584(%rbp), %eax
	cmpl	initial_argc, %eax
	jge	.LBB2_311
# BB#309:                               # %for.body
                                        #   in Loop: Header=BB2_308 Depth=1
	movslq	-584(%rbp), %rax
	movq	initial_argv, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movl	%eax, %edx
	movslq	-576(%rbp), %rax
	movslq	-580(%rbp), %rcx
	movq	-80(%rbp,%rcx,8), %rcx
	shlq	$4, %rax
	addq	24(%rcx), %rax
	movl	%edx, (%rax)
	movslq	-584(%rbp), %rax
	movq	initial_argv, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-576(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -576(%rbp)
	movslq	%edx, %rcx
	movslq	-580(%rbp), %rdi
	movq	-80(%rbp,%rdi,8), %rdi
	shlq	$4, %rcx
	addq	24(%rdi), %rcx
	movq	%rax, 8(%rcx)
# BB#310:                               # %for.inc
                                        #   in Loop: Header=BB2_308 Depth=1
	movl	-584(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -584(%rbp)
	jmp	.LBB2_308
.LBB2_311:                              # %for.end
	leaq	-80(%rbp), %rdx
	movl	-580(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -580(%rbp)
	movq	-8(%rbp), %rdi
	movl	-580(%rbp), %esi
	callq	SmcSetProperties
	movq	-592(%rbp), %rdi
	callq	xfree
	movq	-600(%rbp), %rdi
	callq	xfree
	movq	-616(%rbp), %rdi
	callq	xfree
	movq	-568(%rbp), %rdx
	movq	%rdx, %rdi
	callq	xfree
	movl	$0, -584(%rbp)
.LBB2_312:                              # %for.cond.1888
                                        # =>This Inner Loop Header: Depth=1
	movl	-584(%rbp), %eax
	cmpl	-580(%rbp), %eax
	jge	.LBB2_315
# BB#313:                               # %for.body.1891
                                        #   in Loop: Header=BB2_312 Depth=1
	movslq	-584(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	8(%rax), %rdi
	callq	xfree
	movslq	-584(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	(%rax), %rdi
	callq	xfree
# BB#314:                               # %for.inc.1898
                                        #   in Loop: Header=BB2_312 Depth=1
	movl	-584(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -584(%rbp)
	jmp	.LBB2_312
.LBB2_315:                              # %for.end.1900
	cmpl	$2, -28(%rbp)
	jne	.LBB2_319
# BB#316:                               # %lor.lhs.false.1903
	cmpl	$0, -24(%rbp)
	je	.LBB2_319
# BB#317:                               # %lor.lhs.false.1905
	cmpl	$1, -20(%rbp)
	je	.LBB2_319
# BB#318:                               # %lor.lhs.false.1908
	movl	$1, %esi
	movabsq	$smc_interact_CB, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	SmcInteractRequest
	cmpl	$0, %eax
	jne	.LBB2_320
.LBB2_319:                              # %if.then.1911
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	SmcSaveYourselfDone
.LBB2_320:                              # %if.end.1912
	addq	$960, %rsp              # imm = 0x3C0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	smc_save_yourself_CB, .Lfunc_end2-smc_save_yourself_CB
	.cfi_endproc

	.align	16, 0x90
	.type	smc_die_CB,@function
smc_die_CB:                             # @smc_die_CB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	emacs_event, %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$25, %ecx
	movl	%ecx, emacs_event
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, emacs_event+48
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	smc_die_CB, .Lfunc_end3-smc_die_CB
	.cfi_endproc

	.align	16, 0x90
	.type	smc_save_complete_CB,@function
smc_save_complete_CB:                   # @smc_save_complete_CB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	smc_save_complete_CB, .Lfunc_end4-smc_save_complete_CB
	.cfi_endproc

	.align	16, 0x90
	.type	smc_shutdown_cancelled_CB,@function
smc_shutdown_cancelled_CB:              # @smc_shutdown_cancelled_CB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	smc_shutdown_cancelled_CB, .Lfunc_end5-smc_shutdown_cancelled_CB
	.cfi_endproc

	.align	16, 0x90
	.type	smc_error_handler,@function
smc_error_handler:                      # @smc_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	%rax, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	smc_error_handler, .Lfunc_end6-smc_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	ice_error_handler,@function
ice_error_handler:                      # @ice_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	%rax, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ice_error_handler, .Lfunc_end7-ice_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	ice_io_error_handler,@function
ice_io_error_handler:                   # @ice_io_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	ice_connection_closed
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ice_io_error_handler, .Lfunc_end8-ice_io_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	ice_conn_watch_CB,@function
ice_conn_watch_CB:                      # @ice_conn_watch_CB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	callq	ice_connection_closed
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	IceConnectionNumber
	movabsq	$x_session_check_input, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, ice_fd
	movl	ice_fd, %edi
	callq	add_read_fd
.LBB9_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ice_conn_watch_CB, .Lfunc_end9-ice_conn_watch_CB
	.cfi_endproc

	.globl	x_session_close
	.align	16, 0x90
	.type	x_session_close,@function
x_session_close:                        # @x_session_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	callq	ice_connection_closed
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_session_close, .Lfunc_end10-x_session_close
	.cfi_endproc

	.align	16, 0x90
	.type	ice_connection_closed,@function
ice_connection_closed:                  # @ice_connection_closed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	cmpl	$0, ice_fd
	jl	.LBB11_2
# BB#1:                                 # %if.then
	movl	ice_fd, %edi
	callq	delete_read_fd
.LBB11_2:                               # %if.end
	movl	$-1, ice_fd
	popq	%rbp
	retq
.Lfunc_end11:
	.size	ice_connection_closed, .Lfunc_end11-ice_connection_closed
	.cfi_endproc

	.globl	Fhandle_save_session
	.align	16, 0x90
	.type	Fhandle_save_session,@function
Fhandle_save_session:                   # @Fhandle_save_session
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	movb	%cl, -11(%rbp)          # 1-byte Spill
	jne	.LBB12_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -11(%rbp)          # 1-byte Spill
	jne	.LBB12_3
# BB#2:                                 # %land.rhs
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	movb	%dl, -11(%rbp)          # 1-byte Spill
.LBB12_3:                               # %land.end
	movb	-11(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, doing_interact
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true.13
	testb	$1, -9(%rbp)
	jne	.LBB12_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	call0
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -10(%rbp)
	movq	smc_conn, %rdi
	movb	-10(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	SmcInteractDone
	movl	$1, %esi
	movq	smc_conn, %rdi
	callq	SmcSaveYourselfDone
	movb	$0, doing_interact
	jmp	.LBB12_9
.LBB12_6:                               # %if.else
	testb	$1, -9(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fkill_emacs
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fhandle_save_session, .Lfunc_end12-Fhandle_save_session
	.cfi_endproc

	.globl	syms_of_xsmfns
	.align	16, 0x90
	.type	syms_of_xsmfns,@function
syms_of_xsmfns:                         # @syms_of_xsmfns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	jmp	.LBB13_1
.LBB13_1:                               # %do.body
	movabsq	$syms_of_xsmfns.o_fwd, %rdi
	movabsq	$.L.str.2, %rsi
	movabsq	$globals, %rax
	addq	$2888, %rax             # imm = 0xB48
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2888
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_xsmfns.o_fwd.3, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$2896, %rax             # imm = 0xB50
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Shandle_save_session, %rcx
	movq	%rax, globals+2896
	movq	%rcx, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end13:
	.size	syms_of_xsmfns, .Lfunc_end13-syms_of_xsmfns
	.cfi_endproc

	.align	16, 0x90
	.type	smc_interact_CB,@function
smc_interact_CB:                        # @smc_interact_CB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, doing_interact
	movl	emacs_event, %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$25, %ecx
	movl	%ecx, emacs_event
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, emacs_event+48
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	smc_interact_CB, .Lfunc_end14-smc_interact_CB
	.cfi_endproc

	.align	16, 0x90
	.type	x_session_check_input,@function
x_session_check_input:                  # @x_session_check_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$-1, ice_fd
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_8
.LBB15_2:                               # %if.end
	movl	emacs_event, %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	movl	%eax, emacs_event
	movq	smc_conn, %rdi
	callq	SmcGetIceConnection
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	IceProcessMessages
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB15_6
# BB#3:                                 # %if.then.3
	cmpl	$1, -20(%rbp)
	jne	.LBB15_5
# BB#4:                                 # %if.then.5
	movq	smc_conn, %rdi
	callq	SmcGetIceConnection
	movq	%rax, %rdi
	callq	IceCloseConnection
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB15_5:                               # %if.end.8
	callq	ice_connection_closed
.LBB15_6:                               # %if.end.9
	movl	emacs_event, %eax
	andl	$65535, %eax            # imm = 0xFFFF
	cmpl	$0, %eax
	je	.LBB15_8
# BB#7:                                 # %if.then.13
	movabsq	$emacs_event, %rdi
	callq	kbd_buffer_store_event
.LBB15_8:                               # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	x_session_check_input, .Lfunc_end15-x_session_check_input
	.cfi_endproc

	.type	ice_fd,@object          # @ice_fd
	.data
	.align	4
ice_fd:
	.long	4294967295              # 0xffffffff
	.size	ice_fd, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Disabling session management due to pwd error: %s\n"
	.size	.L.str, 51

	.type	doing_interact,@object  # @doing_interact
	.local	doing_interact
	.comm	doing_interact,1,1
	.type	emacs_program,@object   # @emacs_program
	.local	emacs_program
	.comm	emacs_program,8,8
	.type	client_id,@object       # @client_id
	.local	client_id
	.comm	client_id,8,8
	.type	smc_conn,@object        # @smc_conn
	.local	smc_conn
	.comm	smc_conn,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"emacs-session-save"
	.size	.L.str.1, 19

	.type	syms_of_xsmfns.o_fwd,@object # @syms_of_xsmfns.o_fwd
	.local	syms_of_xsmfns.o_fwd
	.comm	syms_of_xsmfns.o_fwd,16,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"x-session-id"
	.size	.L.str.2, 13

	.type	syms_of_xsmfns.o_fwd.3,@object # @syms_of_xsmfns.o_fwd.3
	.local	syms_of_xsmfns.o_fwd.3
	.comm	syms_of_xsmfns.o_fwd.3,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"x-session-previous-id"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"CloneCommand"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LISTofARRAY8"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Program"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ARRAY8"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"UserID"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"CurrentDirectory"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"RestartCommand"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"--smid="
	.size	.L.str.12, 8

	.type	NOSPLASH_OPT,@object    # @NOSPLASH_OPT
	.data
NOSPLASH_OPT:
	.asciz	"--no-splash"
	.size	NOSPLASH_OPT, 12

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"--chdir="
	.size	.L.str.13, 9

	.type	emacs_event,@object     # @emacs_event
	.local	emacs_event
	.comm	emacs_event,56,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"handle-save-session"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"e"
	.size	.L.str.15, 2

	.type	Shandle_save_session,@object # @Shandle_save_session
	.data
	.align	8
Shandle_save_session:
	.quad	167772160               # 0xa000000
	.quad	Fhandle_save_session
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	0
	.size	Shandle_save_session, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
