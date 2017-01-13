	.text
	.file	"editfns.bc"
	.globl	init_editfns
	.align	16, 0x90
	.type	init_editfns,@function
init_editfns:                           # @init_editfns
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
	subq	$512, %rsp              # imm = 0x200
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	callq	init_and_cache_system_name
	testb	$1, -1(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$dump_tz_string, %rdi
	callq	xputenv
	callq	tzset
	jmp	.LBB0_32
.LBB0_2:                                # %if.end
	movabsq	$.L.str, %rdi
	callq	getenv
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	movl	$dump_tz_string+3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#4:                                 # %if.then.3
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	addb	$1, %cl
	movb	%cl, (%rax)
	callq	tzset
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	addb	$-1, %cl
	movb	%cl, (%rax)
.LBB0_5:                                # %if.end.4
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	xtzalloc
	movq	%rax, wall_clock_tz
	cmpq	$0, -48(%rbp)
	je	.LBB0_7
# BB#6:                                 # %cond.true
	movq	-48(%rbp), %rdi
	callq	build_string
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %cond.false
	movl	$1011, %edi             # imm = 0x3F3
	callq	builtin_lisp_symbol
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB0_8:                                # %cond.end
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$1, %esi
	movq	%rax, %rdi
	callq	tzlookup
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	getuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %cond.true.13
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false.14
	movabsq	$.L.str.1, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               # %cond.end.15
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.2, %rdi
	movq	%rax, globals+2576
	callq	getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_13
# BB#12:                                # %if.then.20
	movabsq	$.L.str.3, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
.LBB0_13:                               # %if.end.22
	cmpq	$0, -16(%rbp)
	jne	.LBB0_18
# BB#14:                                # %if.then.24
	callq	geteuid
	movl	%eax, %edi
	callq	getpwuid
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_16
# BB#15:                                # %cond.true.28
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               # %cond.false.30
	movabsq	$.L.str.1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB0_17
.LBB0_17:                               # %cond.end.31
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
.LBB0_18:                               # %if.end.33
	movq	-16(%rbp), %rdi
	callq	build_string
	movq	%rax, globals+2568
	movq	globals+2568, %rdi
	movq	globals+2576, %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB0_20
# BB#19:                                # %if.then.38
	movq	globals+2568, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_26
.LBB0_20:                               # %if.else
	callq	geteuid
	xorl	%ecx, %ecx
	movl	%eax, -52(%rbp)
	cmpl	-52(%rbp), %ecx
	jbe	.LBB0_22
# BB#21:                                # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB0_23
.LBB0_22:                               # %land.lhs.true.43
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB0_24
.LBB0_23:                               # %cond.true.47
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB0_25
.LBB0_24:                               # %cond.false.50
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB0_25:                               # %cond.end.52
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB0_26:                               # %if.end.54
	movq	-40(%rbp), %rdi
	callq	Fuser_full_name
	movabsq	$.L.str.4, %rdi
	movq	%rax, globals+2552
	callq	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_28
# BB#27:                                # %if.then.58
	movq	-24(%rbp), %rdi
	callq	build_string
	movq	%rax, globals+2552
	jmp	.LBB0_31
.LBB0_28:                               # %if.else.60
	xorl	%edi, %edi
	movq	globals+2552, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_30
# BB#29:                                # %if.then.64
	movabsq	$.L.str.1, %rdi
	callq	build_string
	movq	%rax, globals+2552
.LBB0_30:                               # %if.end.66
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.67
	leaq	-448(%rbp), %rdi
	callq	uname
	leaq	-448(%rbp), %rdi
	addq	$130, %rdi
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	build_string
	movq	%rax, globals+1672
.LBB0_32:                               # %return
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end0:
	.size	init_editfns, .Lfunc_end0-init_editfns
	.cfi_endproc

	.align	16, 0x90
	.type	init_and_cache_system_name,@function
init_and_cache_system_name:             # @init_and_cache_system_name
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
	callq	init_system_name
	movq	globals+2280, %rax
	movq	%rax, cached_system_name
	popq	%rbp
	retq
.Lfunc_end1:
	.size	init_and_cache_system_name, .Lfunc_end1-init_and_cache_system_name
	.cfi_endproc

	.align	16, 0x90
	.type	xtzalloc,@function
xtzalloc:                               # @xtzalloc
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	tzalloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xtzalloc, .Lfunc_end2-xtzalloc
	.cfi_endproc

	.align	16, 0x90
	.type	tzlookup,@function
tzlookup:                               # @tzlookup
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
	subq	$176, %rsp
	movb	%sil, %al
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	local_tz, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_21
.LBB3_2:                                # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.32, %rax
	movq	%rax, -72(%rbp)
	movq	utc_tz, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB3_17
.LBB3_4:                                # %if.else.4
	movl	$1011, %edi             # imm = 0x3F3
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_6
# BB#5:                                 # %if.then.7
	movq	$0, -72(%rbp)
	jmp	.LBB3_16
.LBB3_6:                                # %if.else.8
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_7
	jmp	.LBB3_8
.LBB3_7:                                # %if.then.10
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -72(%rbp)
	jmp	.LBB3_15
.LBB3_8:                                # %if.else.12
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB3_13
# BB#9:                                 # %if.then.16
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB3_11
# BB#10:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB3_12:                               # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movabsq	$tzlookup.tzbuf_format, %rsi
	movabsq	$.L.str.33, %rcx
	leaq	-64(%rbp), %rdi
	movl	$60, %edx
	movl	%edx, %r8d
	movl	$3600, %edx             # imm = 0xE10
	movl	%edx, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cqto
	idivq	%r9
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cqto
	idivq	%r8
	cqto
	idivq	%r8
	movl	%edx, %r10d
	movl	%r10d, -100(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, %rax
	cqto
	idivq	%r8
	movl	%edx, %r10d
	movl	%r10d, -104(%rbp)
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	$0, %rdx
	setl	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r10d
	movslq	%r10d, %rdx
	addq	%rdx, %rcx
	movq	-96(%rbp), %rdx
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	leaq	-64(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.30
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movabsq	$.L.str.34, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rdx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB3_14:                               # %if.end
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.33
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.34
	movq	-72(%rbp), %rdi
	callq	xtzalloc
	movq	%rax, -80(%rbp)
.LBB3_17:                               # %if.end.36
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.37
	testb	$1, -17(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.38
	callq	block_input
	movq	-72(%rbp), %rdi
	callq	emacs_setenv_TZ
	movq	local_tz, %rdi
	movq	%rdi, -112(%rbp)
	movq	-80(%rbp), %rdi
	movq	%rdi, local_tz
	movq	-112(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	tzfree
	callq	unblock_input
.LBB3_20:                               # %if.end.40
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tzlookup, .Lfunc_end3-tzlookup
	.cfi_endproc

	.globl	Fuser_full_name
	.align	16, 0x90
	.type	Fuser_full_name,@function
Fuser_full_name:                        # @Fuser_full_name
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	globals+2552, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_24
.LBB4_2:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:                                # %if.then.2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	cons_to_unsigned
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	callq	block_input
	movl	-52(%rbp), %edi
	callq	getpwuid
	movq	%rax, -24(%rbp)
	callq	unblock_input
	jmp	.LBB4_8
.LBB4_4:                                # %if.else.5
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB4_5
	jmp	.LBB4_6
.LBB4_5:                                # %if.then.7
	callq	block_input
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	getpwnam
	movq	%rax, -24(%rbp)
	callq	unblock_input
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.10
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	error
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.11
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.12
	cmpq	$0, -24(%rbp)
	jne	.LBB4_11
# BB#10:                                # %if.then.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB4_24
.LBB4_11:                               # %if.end.15
	movl	$44, %esi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	je	.LBB4_13
# BB#12:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_14:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_string
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movl	$38, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_23
# BB#15:                                # %if.then.23
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fuser_login_name
	movq	%rax, -64(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-136(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	cmpq	-72(%rbp), %rdi
	ja	.LBB4_17
# BB#16:                                # %cond.true.33
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	1(%rdi,%rax), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	16(%rcx,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.42
	movb	$1, -81(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	-64(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-168(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$1, %rdi
	callq	record_xmalloc
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB4_18:                               # %cond.end.48
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	-96(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	-96(%rbp), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	upcase
	movb	%al, %r8b
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	movq	-96(%rbp), %rdx
	movb	%r8b, (%rdx,%rcx)
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rsi
	callq	strcpy
	movq	-96(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	build_string
	movq	%rax, -48(%rbp)
# BB#19:                                # %do.body
	testb	$1, -81(%rbp)
	je	.LBB4_21
# BB#20:                                # %if.then.71
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB4_21:                               # %if.end.74
	jmp	.LBB4_22
.LBB4_22:                               # %do.end
	jmp	.LBB4_23
.LBB4_23:                               # %if.end.75
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_24:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fuser_full_name, .Lfunc_end4-Fuser_full_name
	.cfi_endproc

	.globl	Fchar_to_string
	.align	16, 0x90
	.type	Fchar_to_string,@function
Fchar_to_string:                        # @Fchar_to_string
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB5_1
	jmp	.LBB5_3
.LBB5_1:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB5_3
# BB#2:                                 # %cond.true
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB5_4:                                # %cond.end
	movb	$1, %al
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -12(%rbp)
	testb	$1, %al
	jne	.LBB5_5
	jmp	.LBB5_6
.LBB5_5:                                # %cond.true.3
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB5_7
	jmp	.LBB5_8
.LBB5_6:                                # %cond.false.6
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB5_8
.LBB5_7:                                # %cond.true.11
	movl	$1, %eax
	movl	-12(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB5_19
.LBB5_8:                                # %cond.false.13
	movb	$1, %al
	testb	$1, %al
	jne	.LBB5_9
	jmp	.LBB5_10
.LBB5_9:                                # %cond.true.14
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB5_11
	jmp	.LBB5_12
.LBB5_10:                               # %cond.false.18
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB5_12
.LBB5_11:                               # %cond.true.23
	movl	$2, %eax
	movl	-12(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	-12(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -20(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB5_18
.LBB5_12:                               # %cond.false.30
	movb	$1, %al
	testb	$1, %al
	jne	.LBB5_13
	jmp	.LBB5_14
.LBB5_13:                               # %cond.true.31
	movl	-12(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB5_15
	jmp	.LBB5_16
.LBB5_14:                               # %cond.false.35
	movslq	-12(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB5_16
.LBB5_15:                               # %cond.true.40
	movl	$3, %eax
	movl	-12(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -21(%rbp)
	movl	-12(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -20(%rbp)
	movl	-12(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -19(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB5_17
.LBB5_16:                               # %cond.false.54
	leaq	-21(%rbp), %rsi
	movl	-12(%rbp), %edi
	callq	char_string
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB5_17:                               # %cond.end.56
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB5_18:                               # %cond.end.57
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB5_19:                               # %cond.end.59
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	leaq	-21(%rbp), %rdi
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rdx
	callq	make_string_from_bytes
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fchar_to_string, .Lfunc_end5-Fchar_to_string
	.cfi_endproc

	.globl	Fbyte_to_string
	.align	16, 0x90
	.type	Fbyte_to_string,@function
Fbyte_to_string:                        # @Fbyte_to_string
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB6_2
# BB#1:                                 # %cond.true
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_3:                                # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB6_5
# BB#4:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jle	.LBB6_6
.LBB6_5:                                # %if.then
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB6_6:                                # %if.end
	leaq	-9(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	movb	%dl, %sil
	movb	%sil, -9(%rbp)
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	make_string_from_bytes
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fbyte_to_string, .Lfunc_end6-Fbyte_to_string
	.cfi_endproc

	.globl	Fstring_to_char
	.align	16, 0x90
	.type	Fstring_to_char,@function
Fstring_to_char:                        # @Fstring_to_char
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	je	.LBB7_14
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB7_2
	jmp	.LBB7_12
.LBB7_2:                                # %if.then.2
	movq	-8(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	jmp	.LBB7_11
.LBB7_4:                                # %cond.false
	movq	-8(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_6
# BB#5:                                 # %cond.true.13
	movq	-8(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	callq	SDATA
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	movl	-24(%rbp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movzbl	(%rax), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-28(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB7_10
.LBB7_6:                                # %cond.false.26
	movq	-8(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB7_8
# BB#7:                                 # %cond.true.32
	movq	-8(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	SDATA
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-36(%rbp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movl	%edx, -40(%rbp)         # 4-byte Spill
	callq	SDATA
	movzbl	2(%rax), %ecx
	andl	$63, %ecx
	movl	-40(%rbp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %cond.false.49
	movq	-8(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	string_char
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB7_9:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB7_10:                               # %cond.end.53
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB7_11:                               # %cond.end.55
	movl	-20(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB7_13
.LBB7_12:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	movl	%ecx, %edi
	callq	make_natnum
	movq	%rax, -16(%rbp)
.LBB7_13:                               # %if.end
	jmp	.LBB7_15
.LBB7_14:                               # %if.else.62
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -16(%rbp)
.LBB7_15:                               # %if.end.64
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fstring_to_char, .Lfunc_end7-Fstring_to_char
	.cfi_endproc

	.globl	Fpoint
	.align	16, 0x90
	.type	Fpoint,@function
Fpoint:                                 # @Fpoint
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
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fpoint, .Lfunc_end8-Fpoint
	.cfi_endproc

	.globl	Fpoint_marker
	.align	16, 0x90
	.type	Fpoint_marker,@function
Fpoint_marker:                          # @Fpoint_marker
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
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	build_marker
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fpoint_marker, .Lfunc_end9-Fpoint_marker
	.cfi_endproc

	.globl	Fgoto_char
	.align	16, 0x90
	.type	Fgoto_char,@function
Fgoto_char:                             # @Fgoto_char
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	set_point_from_marker
	jmp	.LBB10_7
.LBB10_3:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_5
# BB#4:                                 # %if.then.9
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rdx
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, %rdi
	callq	set_point
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.11
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.13
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fgoto_char, .Lfunc_end10-Fgoto_char
	.cfi_endproc

	.globl	Fregion_beginning
	.align	16, 0x90
	.type	Fregion_beginning,@function
Fregion_beginning:                      # @Fregion_beginning
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
	movl	$1, %edi
	callq	region_limit
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fregion_beginning, .Lfunc_end11-Fregion_beginning
	.cfi_endproc

	.align	16, 0x90
	.type	region_limit,@function
region_limit:                           # @region_limit
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
	subq	$64, %rsp
	movb	%dil, %al
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -1(%rbp)
	movq	globals+2440, %rcx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_4
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1368, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_4
# BB#2:                                 # %land.lhs.true.3
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	304(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_4
# BB#3:                                 # %if.then
	movl	$644, %edi              # imm = 0x284
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB12_4:                               # %if.end
	movq	current_buffer, %rax
	movq	64(%rax), %rdi
	callq	Fmarker_position
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	error
.LBB12_6:                               # %if.end.11
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movb	-1(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	cmpl	%edi, %esi
	jne	.LBB12_8
# BB#7:                                 # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %cond.false
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rdx
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB12_9:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	region_limit, .Lfunc_end12-region_limit
	.cfi_endproc

	.globl	Fregion_end
	.align	16, 0x90
	.type	Fregion_end,@function
Fregion_end:                            # @Fregion_end
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
	xorl	%edi, %edi
	callq	region_limit
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fregion_end, .Lfunc_end13-Fregion_end
	.cfi_endproc

	.globl	Fmark_marker
	.align	16, 0x90
	.type	Fmark_marker,@function
Fmark_marker:                           # @Fmark_marker
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
	movq	current_buffer, %rax
	movq	64(%rax), %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fmark_marker, .Lfunc_end14-Fmark_marker
	.cfi_endproc

	.globl	Fget_pos_property
	.align	16, 0x90
	.type	Fget_pos_property,@function
Fget_pos_property:                      # @Fget_pos_property
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
	subq	$1392, %rsp             # imm = 0x570
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB15_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB15_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB15_8
.LBB15_4:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB15_6
# BB#5:                                 # %cond.true
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB15_7:                               # %cond.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end
	jmp	.LBB15_9
.LBB15_9:                               # %do.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_11
# BB#10:                                # %if.then.15
	movl	$5, %esi
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	jmp	.LBB15_14
.LBB15_11:                              # %if.else.17
	movq	-32(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB15_12
	jmp	.LBB15_13
.LBB15_12:                              # %if.then.19
	movq	-32(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB15_13:                              # %if.end.21
	jmp	.LBB15_14
.LBB15_14:                              # %if.end.22
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB15_16
# BB#15:                                # %if.then.24
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	Fget_text_property
	movq	%rax, -8(%rbp)
	jmp	.LBB15_464
.LBB15_16:                              # %if.else.26
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -72(%rbp)
	movq	$16384, -80(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_temp
	leaq	-416(%rbp), %rax
	movq	$40, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	overlays_around
	movl	$40, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)
	cmpq	-48(%rbp), %rdx
	jae	.LBB15_425
# BB#17:                                # %if.then.32
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.33
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_19
	jmp	.LBB15_98
.LBB15_19:                              # %cond.true.34
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_20
	jmp	.LBB15_59
.LBB15_20:                              # %cond.true.35
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_22
# BB#21:                                # %cond.true.40
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB15_23
.LBB15_22:                              # %cond.false.58
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -484(%rbp)        # 4-byte Spill
.LBB15_23:                              # %cond.end.64
	movl	-484(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB15_25
# BB#24:                                # %land.lhs.true.67
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB15_51
.LBB15_25:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_26
	jmp	.LBB15_37
.LBB15_26:                              # %cond.true.72
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB15_31
# BB#27:                                # %cond.true.77
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -488(%rbp)        # 4-byte Spill
	jge	.LBB15_29
# BB#28:                                # %cond.true.87
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB15_30
.LBB15_29:                              # %cond.false.97
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -492(%rbp)        # 4-byte Spill
.LBB15_30:                              # %cond.end.103
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-488(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB15_51
	jmp	.LBB15_48
.LBB15_31:                              # %cond.false.107
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_32
	jmp	.LBB15_33
.LBB15_32:                              # %cond.true.108
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_51
	jmp	.LBB15_48
.LBB15_33:                              # %cond.false.109
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_35
# BB#34:                                # %cond.true.117
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB15_36
.LBB15_35:                              # %cond.false.137
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -496(%rbp)        # 4-byte Spill
.LBB15_36:                              # %cond.end.143
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_51
	jmp	.LBB15_48
.LBB15_37:                              # %cond.false.150
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_38
	jmp	.LBB15_39
.LBB15_38:                              # %cond.true.151
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_51
	jmp	.LBB15_48
.LBB15_39:                              # %cond.false.152
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB15_44
# BB#40:                                # %cond.true.157
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	jge	.LBB15_42
# BB#41:                                # %cond.true.167
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB15_43
.LBB15_42:                              # %cond.false.187
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -504(%rbp)        # 4-byte Spill
.LBB15_43:                              # %cond.end.193
	movl	-504(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-500(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB15_51
	jmp	.LBB15_48
.LBB15_44:                              # %cond.false.198
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_46
# BB#45:                                # %cond.true.206
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -508(%rbp)        # 4-byte Spill
	jmp	.LBB15_47
.LBB15_46:                              # %cond.false.216
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -508(%rbp)        # 4-byte Spill
.LBB15_47:                              # %cond.end.222
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_51
.LBB15_48:                              # %lor.lhs.false.229
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_50
# BB#49:                                # %land.lhs.true.237
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB15_51
.LBB15_50:                              # %lor.lhs.false.243
	movl	$127, %eax
	movq	-48(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB15_55
.LBB15_51:                              # %cond.true.249
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB15_53
# BB#52:                                # %cond.true.255
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -512(%rbp)        # 4-byte Spill
	jmp	.LBB15_54
.LBB15_53:                              # %cond.false.261
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -512(%rbp)        # 4-byte Spill
.LBB15_54:                              # %cond.end.269
	movl	-512(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_55:                              # %cond.false.272
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB15_57
# BB#56:                                # %cond.true.278
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB15_58
.LBB15_57:                              # %cond.false.284
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -516(%rbp)        # 4-byte Spill
.LBB15_58:                              # %cond.end.292
	movl	-516(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_59:                              # %cond.false.295
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_61
# BB#60:                                # %cond.true.301
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB15_62
.LBB15_61:                              # %cond.false.318
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB15_62:                              # %cond.end.322
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_64
# BB#63:                                # %land.lhs.true.326
	cmpq	$0, -48(%rbp)
	jl	.LBB15_90
.LBB15_64:                              # %lor.lhs.false.329
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_65
	jmp	.LBB15_76
.LBB15_65:                              # %cond.true.330
	cmpq	$0, -48(%rbp)
	jge	.LBB15_70
# BB#66:                                # %cond.true.333
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB15_68
# BB#67:                                # %cond.true.339
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB15_69
.LBB15_68:                              # %cond.false.347
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB15_69:                              # %cond.end.351
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_90
	jmp	.LBB15_87
.LBB15_70:                              # %cond.false.356
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_71
	jmp	.LBB15_72
.LBB15_71:                              # %cond.true.357
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_90
	jmp	.LBB15_87
.LBB15_72:                              # %cond.false.358
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_74
# BB#73:                                # %cond.true.364
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB15_75
.LBB15_74:                              # %cond.false.381
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB15_75:                              # %cond.end.385
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_90
	jmp	.LBB15_87
.LBB15_76:                              # %cond.false.390
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_77
	jmp	.LBB15_78
.LBB15_77:                              # %cond.true.391
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_90
	jmp	.LBB15_87
.LBB15_78:                              # %cond.false.392
	cmpq	$0, -48(%rbp)
	jge	.LBB15_83
# BB#79:                                # %cond.true.395
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB15_81
# BB#80:                                # %cond.true.401
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB15_82
.LBB15_81:                              # %cond.false.418
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB15_82:                              # %cond.end.422
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_90
	jmp	.LBB15_87
.LBB15_83:                              # %cond.false.427
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_85
# BB#84:                                # %cond.true.433
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB15_86
.LBB15_85:                              # %cond.false.441
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB15_86:                              # %cond.end.445
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_90
.LBB15_87:                              # %lor.lhs.false.450
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_89
# BB#88:                                # %land.lhs.true.456
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB15_90
.LBB15_89:                              # %lor.lhs.false.460
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB15_94
.LBB15_90:                              # %cond.true.464
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB15_92
# BB#91:                                # %cond.true.470
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB15_93
.LBB15_92:                              # %cond.false.476
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -612(%rbp)        # 4-byte Spill
.LBB15_93:                              # %cond.end.484
	movl	-612(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_94:                              # %cond.false.487
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB15_96
# BB#95:                                # %cond.true.493
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -616(%rbp)        # 4-byte Spill
	jmp	.LBB15_97
.LBB15_96:                              # %cond.false.499
	movq	-48(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -616(%rbp)        # 4-byte Spill
.LBB15_97:                              # %cond.end.507
	movl	-616(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_98:                              # %cond.false.510
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_99
	jmp	.LBB15_178
.LBB15_99:                              # %cond.true.511
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_100
	jmp	.LBB15_139
.LBB15_100:                             # %cond.true.512
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_102
# BB#101:                               # %cond.true.520
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB15_103
.LBB15_102:                             # %cond.false.540
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -620(%rbp)        # 4-byte Spill
.LBB15_103:                             # %cond.end.546
	movl	-620(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB15_105
# BB#104:                               # %land.lhs.true.550
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB15_131
.LBB15_105:                             # %lor.lhs.false.555
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_106
	jmp	.LBB15_117
.LBB15_106:                             # %cond.true.556
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB15_111
# BB#107:                               # %cond.true.561
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -624(%rbp)        # 4-byte Spill
	jge	.LBB15_109
# BB#108:                               # %cond.true.571
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -628(%rbp)        # 4-byte Spill
	jmp	.LBB15_110
.LBB15_109:                             # %cond.false.581
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -628(%rbp)        # 4-byte Spill
.LBB15_110:                             # %cond.end.587
	movl	-628(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-624(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB15_131
	jmp	.LBB15_128
.LBB15_111:                             # %cond.false.592
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_112
	jmp	.LBB15_113
.LBB15_112:                             # %cond.true.593
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_131
	jmp	.LBB15_128
.LBB15_113:                             # %cond.false.594
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_115
# BB#114:                               # %cond.true.602
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jmp	.LBB15_116
.LBB15_115:                             # %cond.false.622
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -632(%rbp)        # 4-byte Spill
.LBB15_116:                             # %cond.end.628
	movl	-632(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_131
	jmp	.LBB15_128
.LBB15_117:                             # %cond.false.635
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_118
	jmp	.LBB15_119
.LBB15_118:                             # %cond.true.636
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_131
	jmp	.LBB15_128
.LBB15_119:                             # %cond.false.637
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB15_124
# BB#120:                               # %cond.true.642
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -636(%rbp)        # 4-byte Spill
	jge	.LBB15_122
# BB#121:                               # %cond.true.652
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -640(%rbp)        # 4-byte Spill
	jmp	.LBB15_123
.LBB15_122:                             # %cond.false.672
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -640(%rbp)        # 4-byte Spill
.LBB15_123:                             # %cond.end.678
	movl	-640(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-636(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB15_131
	jmp	.LBB15_128
.LBB15_124:                             # %cond.false.683
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_126
# BB#125:                               # %cond.true.691
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -644(%rbp)        # 4-byte Spill
	jmp	.LBB15_127
.LBB15_126:                             # %cond.false.701
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -644(%rbp)        # 4-byte Spill
.LBB15_127:                             # %cond.end.707
	movl	-644(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_131
.LBB15_128:                             # %lor.lhs.false.714
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB15_130
# BB#129:                               # %land.lhs.true.722
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB15_131
.LBB15_130:                             # %lor.lhs.false.728
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-48(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB15_135
.LBB15_131:                             # %cond.true.734
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB15_133
# BB#132:                               # %cond.true.740
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -648(%rbp)        # 4-byte Spill
	jmp	.LBB15_134
.LBB15_133:                             # %cond.false.746
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -648(%rbp)        # 4-byte Spill
.LBB15_134:                             # %cond.end.754
	movl	-648(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_135:                             # %cond.false.757
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB15_137
# BB#136:                               # %cond.true.763
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB15_138
.LBB15_137:                             # %cond.false.769
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -652(%rbp)        # 4-byte Spill
.LBB15_138:                             # %cond.end.777
	movl	-652(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_139:                             # %cond.false.780
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_141
# BB#140:                               # %cond.true.786
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB15_142
.LBB15_141:                             # %cond.false.803
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB15_142:                             # %cond.end.807
	movq	-664(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_144
# BB#143:                               # %land.lhs.true.811
	cmpq	$0, -48(%rbp)
	jl	.LBB15_170
.LBB15_144:                             # %lor.lhs.false.814
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_145
	jmp	.LBB15_156
.LBB15_145:                             # %cond.true.815
	cmpq	$0, -48(%rbp)
	jge	.LBB15_150
# BB#146:                               # %cond.true.818
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jge	.LBB15_148
# BB#147:                               # %cond.true.824
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB15_149
.LBB15_148:                             # %cond.false.832
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB15_149:                             # %cond.end.836
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_170
	jmp	.LBB15_167
.LBB15_150:                             # %cond.false.841
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_151
	jmp	.LBB15_152
.LBB15_151:                             # %cond.true.842
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_170
	jmp	.LBB15_167
.LBB15_152:                             # %cond.false.843
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_154
# BB#153:                               # %cond.true.849
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB15_155
.LBB15_154:                             # %cond.false.866
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB15_155:                             # %cond.end.870
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_170
	jmp	.LBB15_167
.LBB15_156:                             # %cond.false.875
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_157
	jmp	.LBB15_158
.LBB15_157:                             # %cond.true.876
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_170
	jmp	.LBB15_167
.LBB15_158:                             # %cond.false.877
	cmpq	$0, -48(%rbp)
	jge	.LBB15_163
# BB#159:                               # %cond.true.880
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jge	.LBB15_161
# BB#160:                               # %cond.true.886
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB15_162
.LBB15_161:                             # %cond.false.903
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB15_162:                             # %cond.end.907
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_170
	jmp	.LBB15_167
.LBB15_163:                             # %cond.false.912
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_165
# BB#164:                               # %cond.true.918
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jmp	.LBB15_166
.LBB15_165:                             # %cond.false.926
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB15_166:                             # %cond.end.930
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_170
.LBB15_167:                             # %lor.lhs.false.935
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_169
# BB#168:                               # %land.lhs.true.941
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB15_170
.LBB15_169:                             # %lor.lhs.false.945
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB15_174
.LBB15_170:                             # %cond.true.949
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB15_172
# BB#171:                               # %cond.true.955
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -748(%rbp)        # 4-byte Spill
	jmp	.LBB15_173
.LBB15_172:                             # %cond.false.961
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -748(%rbp)        # 4-byte Spill
.LBB15_173:                             # %cond.end.969
	movl	-748(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_174:                             # %cond.false.972
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB15_176
# BB#175:                               # %cond.true.978
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -752(%rbp)        # 4-byte Spill
	jmp	.LBB15_177
.LBB15_176:                             # %cond.false.984
	movq	-48(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -752(%rbp)        # 4-byte Spill
.LBB15_177:                             # %cond.end.992
	movl	-752(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_178:                             # %cond.false.995
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_179
	jmp	.LBB15_258
.LBB15_179:                             # %cond.true.996
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_180
	jmp	.LBB15_219
.LBB15_180:                             # %cond.true.997
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB15_182
# BB#181:                               # %cond.true.1004
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB15_183
.LBB15_182:                             # %cond.false.1022
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
.LBB15_183:                             # %cond.end.1027
	movl	-756(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB15_185
# BB#184:                               # %land.lhs.true.1031
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB15_211
.LBB15_185:                             # %lor.lhs.false.1035
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_186
	jmp	.LBB15_197
.LBB15_186:                             # %cond.true.1036
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB15_191
# BB#187:                               # %cond.true.1040
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -760(%rbp)        # 4-byte Spill
	jge	.LBB15_189
# BB#188:                               # %cond.true.1048
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	jmp	.LBB15_190
.LBB15_189:                             # %cond.false.1057
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
.LBB15_190:                             # %cond.end.1062
	movl	-764(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-760(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB15_211
	jmp	.LBB15_208
.LBB15_191:                             # %cond.false.1067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_192
	jmp	.LBB15_193
.LBB15_192:                             # %cond.true.1068
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_211
	jmp	.LBB15_208
.LBB15_193:                             # %cond.false.1069
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB15_195
# BB#194:                               # %cond.true.1076
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -768(%rbp)        # 4-byte Spill
	jmp	.LBB15_196
.LBB15_195:                             # %cond.false.1094
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -768(%rbp)        # 4-byte Spill
.LBB15_196:                             # %cond.end.1099
	movl	-768(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_211
	jmp	.LBB15_208
.LBB15_197:                             # %cond.false.1105
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_198
	jmp	.LBB15_199
.LBB15_198:                             # %cond.true.1106
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_211
	jmp	.LBB15_208
.LBB15_199:                             # %cond.false.1107
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB15_204
# BB#200:                               # %cond.true.1111
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	jge	.LBB15_202
# BB#201:                               # %cond.true.1119
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -776(%rbp)        # 4-byte Spill
	jmp	.LBB15_203
.LBB15_202:                             # %cond.false.1137
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -776(%rbp)        # 4-byte Spill
.LBB15_203:                             # %cond.end.1142
	movl	-776(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-772(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB15_211
	jmp	.LBB15_208
.LBB15_204:                             # %cond.false.1147
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB15_206
# BB#205:                               # %cond.true.1154
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	jmp	.LBB15_207
.LBB15_206:                             # %cond.false.1163
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
.LBB15_207:                             # %cond.end.1168
	movl	-780(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-48(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB15_211
.LBB15_208:                             # %lor.lhs.false.1174
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB15_210
# BB#209:                               # %land.lhs.true.1181
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB15_211
.LBB15_210:                             # %lor.lhs.false.1186
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-48(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB15_215
.LBB15_211:                             # %cond.true.1191
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB15_213
# BB#212:                               # %cond.true.1196
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -784(%rbp)        # 4-byte Spill
	jmp	.LBB15_214
.LBB15_213:                             # %cond.false.1199
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -784(%rbp)        # 4-byte Spill
.LBB15_214:                             # %cond.end.1204
	movl	-784(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_215:                             # %cond.false.1207
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB15_217
# BB#216:                               # %cond.true.1212
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -788(%rbp)        # 4-byte Spill
	jmp	.LBB15_218
.LBB15_217:                             # %cond.false.1215
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -788(%rbp)        # 4-byte Spill
.LBB15_218:                             # %cond.end.1220
	movl	-788(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_219:                             # %cond.false.1223
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_221
# BB#220:                               # %cond.true.1229
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB15_222
.LBB15_221:                             # %cond.false.1246
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB15_222:                             # %cond.end.1250
	movq	-800(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_224
# BB#223:                               # %land.lhs.true.1254
	cmpq	$0, -48(%rbp)
	jl	.LBB15_250
.LBB15_224:                             # %lor.lhs.false.1257
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_225
	jmp	.LBB15_236
.LBB15_225:                             # %cond.true.1258
	cmpq	$0, -48(%rbp)
	jge	.LBB15_230
# BB#226:                               # %cond.true.1261
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jge	.LBB15_228
# BB#227:                               # %cond.true.1267
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB15_229
.LBB15_228:                             # %cond.false.1275
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB15_229:                             # %cond.end.1279
	movq	-816(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	cqto
	movq	-824(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-808(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_250
	jmp	.LBB15_247
.LBB15_230:                             # %cond.false.1284
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_231
	jmp	.LBB15_232
.LBB15_231:                             # %cond.true.1285
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_250
	jmp	.LBB15_247
.LBB15_232:                             # %cond.false.1286
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_234
# BB#233:                               # %cond.true.1292
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB15_235
.LBB15_234:                             # %cond.false.1309
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB15_235:                             # %cond.end.1313
	movq	-832(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	cqto
	movq	-840(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_250
	jmp	.LBB15_247
.LBB15_236:                             # %cond.false.1318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_237
	jmp	.LBB15_238
.LBB15_237:                             # %cond.true.1319
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_250
	jmp	.LBB15_247
.LBB15_238:                             # %cond.false.1320
	cmpq	$0, -48(%rbp)
	jge	.LBB15_243
# BB#239:                               # %cond.true.1323
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jge	.LBB15_241
# BB#240:                               # %cond.true.1329
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB15_242
.LBB15_241:                             # %cond.false.1346
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB15_242:                             # %cond.end.1350
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_250
	jmp	.LBB15_247
.LBB15_243:                             # %cond.false.1355
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_245
# BB#244:                               # %cond.true.1361
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB15_246
.LBB15_245:                             # %cond.false.1369
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB15_246:                             # %cond.end.1373
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_250
.LBB15_247:                             # %lor.lhs.false.1378
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_249
# BB#248:                               # %land.lhs.true.1384
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB15_250
.LBB15_249:                             # %lor.lhs.false.1388
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB15_254
.LBB15_250:                             # %cond.true.1392
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB15_252
# BB#251:                               # %cond.true.1397
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -884(%rbp)        # 4-byte Spill
	jmp	.LBB15_253
.LBB15_252:                             # %cond.false.1400
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -884(%rbp)        # 4-byte Spill
.LBB15_253:                             # %cond.end.1405
	movl	-884(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_254:                             # %cond.false.1408
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB15_256
# BB#255:                               # %cond.true.1413
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -888(%rbp)        # 4-byte Spill
	jmp	.LBB15_257
.LBB15_256:                             # %cond.false.1416
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -888(%rbp)        # 4-byte Spill
.LBB15_257:                             # %cond.end.1421
	movl	-888(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_258:                             # %cond.false.1424
	movb	$1, %al
	testb	$1, %al
	jne	.LBB15_259
	jmp	.LBB15_338
.LBB15_259:                             # %cond.true.1425
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_260
	jmp	.LBB15_299
.LBB15_260:                             # %cond.true.1426
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_262
# BB#261:                               # %cond.true.1432
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB15_263
.LBB15_262:                             # %cond.false.1449
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB15_263:                             # %cond.end.1453
	movq	-896(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_265
# BB#264:                               # %land.lhs.true.1457
	cmpq	$0, -48(%rbp)
	jl	.LBB15_291
.LBB15_265:                             # %lor.lhs.false.1460
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_266
	jmp	.LBB15_277
.LBB15_266:                             # %cond.true.1461
	cmpq	$0, -48(%rbp)
	jge	.LBB15_271
# BB#267:                               # %cond.true.1464
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jge	.LBB15_269
# BB#268:                               # %cond.true.1470
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB15_270
.LBB15_269:                             # %cond.false.1478
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB15_270:                             # %cond.end.1482
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-904(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_291
	jmp	.LBB15_288
.LBB15_271:                             # %cond.false.1487
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_272
	jmp	.LBB15_273
.LBB15_272:                             # %cond.true.1488
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_291
	jmp	.LBB15_288
.LBB15_273:                             # %cond.false.1489
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_275
# BB#274:                               # %cond.true.1495
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB15_276
.LBB15_275:                             # %cond.false.1512
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB15_276:                             # %cond.end.1516
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_291
	jmp	.LBB15_288
.LBB15_277:                             # %cond.false.1521
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_278
	jmp	.LBB15_279
.LBB15_278:                             # %cond.true.1522
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_291
	jmp	.LBB15_288
.LBB15_279:                             # %cond.false.1523
	cmpq	$0, -48(%rbp)
	jge	.LBB15_284
# BB#280:                               # %cond.true.1526
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jge	.LBB15_282
# BB#281:                               # %cond.true.1532
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	jmp	.LBB15_283
.LBB15_282:                             # %cond.false.1549
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB15_283:                             # %cond.end.1553
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-944(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_291
	jmp	.LBB15_288
.LBB15_284:                             # %cond.false.1558
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_286
# BB#285:                               # %cond.true.1564
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB15_287
.LBB15_286:                             # %cond.false.1572
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB15_287:                             # %cond.end.1576
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	cqto
	movq	-976(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_291
.LBB15_288:                             # %lor.lhs.false.1581
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_290
# BB#289:                               # %land.lhs.true.1587
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB15_291
.LBB15_290:                             # %lor.lhs.false.1591
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB15_295
.LBB15_291:                             # %cond.true.1595
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_293
# BB#292:                               # %cond.true.1599
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB15_294
.LBB15_293:                             # %cond.false.1601
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB15_294:                             # %cond.end.1605
	movq	-984(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_295:                             # %cond.false.1607
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_297
# BB#296:                               # %cond.true.1611
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jmp	.LBB15_298
.LBB15_297:                             # %cond.false.1613
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB15_298:                             # %cond.end.1617
	movq	-992(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_299:                             # %cond.false.1619
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_301
# BB#300:                               # %cond.true.1625
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB15_302
.LBB15_301:                             # %cond.false.1642
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB15_302:                             # %cond.end.1646
	movq	-1000(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_304
# BB#303:                               # %land.lhs.true.1650
	cmpq	$0, -48(%rbp)
	jl	.LBB15_330
.LBB15_304:                             # %lor.lhs.false.1653
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_305
	jmp	.LBB15_316
.LBB15_305:                             # %cond.true.1654
	cmpq	$0, -48(%rbp)
	jge	.LBB15_310
# BB#306:                               # %cond.true.1657
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jge	.LBB15_308
# BB#307:                               # %cond.true.1663
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB15_309
.LBB15_308:                             # %cond.false.1671
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB15_309:                             # %cond.end.1675
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
	cqto
	movq	-1024(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_330
	jmp	.LBB15_327
.LBB15_310:                             # %cond.false.1680
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_311
	jmp	.LBB15_312
.LBB15_311:                             # %cond.true.1681
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_330
	jmp	.LBB15_327
.LBB15_312:                             # %cond.false.1682
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_314
# BB#313:                               # %cond.true.1688
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB15_315
.LBB15_314:                             # %cond.false.1705
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB15_315:                             # %cond.end.1709
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	cqto
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_330
	jmp	.LBB15_327
.LBB15_316:                             # %cond.false.1714
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_317
	jmp	.LBB15_318
.LBB15_317:                             # %cond.true.1715
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_330
	jmp	.LBB15_327
.LBB15_318:                             # %cond.false.1716
	cmpq	$0, -48(%rbp)
	jge	.LBB15_323
# BB#319:                               # %cond.true.1719
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jge	.LBB15_321
# BB#320:                               # %cond.true.1725
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB15_322
.LBB15_321:                             # %cond.false.1742
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB15_322:                             # %cond.end.1746
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	cqto
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_330
	jmp	.LBB15_327
.LBB15_323:                             # %cond.false.1751
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_325
# BB#324:                               # %cond.true.1757
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB15_326
.LBB15_325:                             # %cond.false.1765
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB15_326:                             # %cond.end.1769
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cqto
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_330
.LBB15_327:                             # %lor.lhs.false.1774
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_329
# BB#328:                               # %land.lhs.true.1780
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB15_330
.LBB15_329:                             # %lor.lhs.false.1784
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB15_334
.LBB15_330:                             # %cond.true.1788
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_332
# BB#331:                               # %cond.true.1792
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB15_333
.LBB15_332:                             # %cond.false.1794
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB15_333:                             # %cond.end.1798
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_334:                             # %cond.false.1800
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_336
# BB#335:                               # %cond.true.1804
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB15_337
.LBB15_336:                             # %cond.false.1806
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB15_337:                             # %cond.end.1810
	movq	-1096(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_338:                             # %cond.false.1812
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_339
	jmp	.LBB15_378
.LBB15_339:                             # %cond.true.1813
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_341
# BB#340:                               # %cond.true.1819
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB15_342
.LBB15_341:                             # %cond.false.1836
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB15_342:                             # %cond.end.1840
	movq	-1104(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_344
# BB#343:                               # %land.lhs.true.1844
	cmpq	$0, -48(%rbp)
	jl	.LBB15_370
.LBB15_344:                             # %lor.lhs.false.1847
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_345
	jmp	.LBB15_356
.LBB15_345:                             # %cond.true.1848
	cmpq	$0, -48(%rbp)
	jge	.LBB15_350
# BB#346:                               # %cond.true.1851
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jge	.LBB15_348
# BB#347:                               # %cond.true.1857
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB15_349
.LBB15_348:                             # %cond.false.1865
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB15_349:                             # %cond.end.1869
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	cqto
	movq	-1128(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_370
	jmp	.LBB15_367
.LBB15_350:                             # %cond.false.1874
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_351
	jmp	.LBB15_352
.LBB15_351:                             # %cond.true.1875
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_370
	jmp	.LBB15_367
.LBB15_352:                             # %cond.false.1876
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_354
# BB#353:                               # %cond.true.1882
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB15_355
.LBB15_354:                             # %cond.false.1899
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB15_355:                             # %cond.end.1903
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	cqto
	movq	-1144(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_370
	jmp	.LBB15_367
.LBB15_356:                             # %cond.false.1908
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_357
	jmp	.LBB15_358
.LBB15_357:                             # %cond.true.1909
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_370
	jmp	.LBB15_367
.LBB15_358:                             # %cond.false.1910
	cmpq	$0, -48(%rbp)
	jge	.LBB15_363
# BB#359:                               # %cond.true.1913
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jge	.LBB15_361
# BB#360:                               # %cond.true.1919
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB15_362
.LBB15_361:                             # %cond.false.1936
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB15_362:                             # %cond.end.1940
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	cqto
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_370
	jmp	.LBB15_367
.LBB15_363:                             # %cond.false.1945
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_365
# BB#364:                               # %cond.true.1951
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB15_366
.LBB15_365:                             # %cond.false.1959
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB15_366:                             # %cond.end.1963
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1184(%rbp)       # 8-byte Spill
	cqto
	movq	-1184(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_370
.LBB15_367:                             # %lor.lhs.false.1968
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_369
# BB#368:                               # %land.lhs.true.1974
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB15_370
.LBB15_369:                             # %lor.lhs.false.1978
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB15_374
.LBB15_370:                             # %cond.true.1982
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_372
# BB#371:                               # %cond.true.1986
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB15_373
.LBB15_372:                             # %cond.false.1988
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB15_373:                             # %cond.end.1992
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_374:                             # %cond.false.1994
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_376
# BB#375:                               # %cond.true.1998
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB15_377
.LBB15_376:                             # %cond.false.2000
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB15_377:                             # %cond.end.2004
	movq	-1200(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_378:                             # %cond.false.2006
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_380
# BB#379:                               # %cond.true.2012
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB15_381
.LBB15_380:                             # %cond.false.2029
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB15_381:                             # %cond.end.2033
	movq	-1208(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB15_383
# BB#382:                               # %land.lhs.true.2037
	cmpq	$0, -48(%rbp)
	jl	.LBB15_409
.LBB15_383:                             # %lor.lhs.false.2040
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_384
	jmp	.LBB15_395
.LBB15_384:                             # %cond.true.2041
	cmpq	$0, -48(%rbp)
	jge	.LBB15_389
# BB#385:                               # %cond.true.2044
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jge	.LBB15_387
# BB#386:                               # %cond.true.2050
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB15_388
.LBB15_387:                             # %cond.false.2058
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB15_388:                             # %cond.end.2062
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1232(%rbp)       # 8-byte Spill
	cqto
	movq	-1232(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_409
	jmp	.LBB15_406
.LBB15_389:                             # %cond.false.2067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_390
	jmp	.LBB15_391
.LBB15_390:                             # %cond.true.2068
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_409
	jmp	.LBB15_406
.LBB15_391:                             # %cond.false.2069
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_393
# BB#392:                               # %cond.true.2075
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB15_394
.LBB15_393:                             # %cond.false.2092
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB15_394:                             # %cond.end.2096
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	cqto
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_409
	jmp	.LBB15_406
.LBB15_395:                             # %cond.false.2101
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_396
	jmp	.LBB15_397
.LBB15_396:                             # %cond.true.2102
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB15_409
	jmp	.LBB15_406
.LBB15_397:                             # %cond.false.2103
	cmpq	$0, -48(%rbp)
	jge	.LBB15_402
# BB#398:                               # %cond.true.2106
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jge	.LBB15_400
# BB#399:                               # %cond.true.2112
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
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
	movq	-48(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB15_401
.LBB15_400:                             # %cond.false.2129
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB15_401:                             # %cond.end.2133
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	cqto
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB15_409
	jmp	.LBB15_406
.LBB15_402:                             # %cond.false.2138
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_404
# BB#403:                               # %cond.true.2144
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB15_405
.LBB15_404:                             # %cond.false.2152
	movq	-48(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB15_405:                             # %cond.end.2156
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-48(%rbp), %rax
	jl	.LBB15_409
.LBB15_406:                             # %lor.lhs.false.2161
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB15_408
# BB#407:                               # %land.lhs.true.2167
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB15_409
.LBB15_408:                             # %lor.lhs.false.2171
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB15_413
.LBB15_409:                             # %cond.true.2175
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_411
# BB#410:                               # %cond.true.2179
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB15_412
.LBB15_411:                             # %cond.false.2181
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB15_412:                             # %cond.end.2185
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -424(%rbp)
	testb	$1, %cl
	jne	.LBB15_418
	jmp	.LBB15_417
.LBB15_413:                             # %cond.false.2187
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-48(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB15_415
# BB#414:                               # %cond.true.2191
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB15_416
.LBB15_415:                             # %cond.false.2193
	movq	-48(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
.LBB15_416:                             # %cond.end.2197
	movq	-1304(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -424(%rbp)
	testb	$1, %dl
	jne	.LBB15_418
.LBB15_417:                             # %lor.lhs.false.2199
	movq	$-1, %rax
	cmpq	-424(%rbp), %rax
	jae	.LBB15_419
.LBB15_418:                             # %if.then.2202
	movq	$-1, %rdi
	callq	memory_full
.LBB15_419:                             # %if.else.2203
	movq	-424(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jg	.LBB15_421
# BB#420:                               # %if.then.2206
	movq	-424(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -80(%rbp)
	movq	-424(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB15_422
.LBB15_421:                             # %if.else.2208
	movq	-424(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -432(%rbp)
	movb	$1, -89(%rbp)
	movq	-432(%rbp), %rsi
	callq	record_unwind_protect
.LBB15_422:                             # %if.end.2211
	jmp	.LBB15_423
.LBB15_423:                             # %if.end.2212
	jmp	.LBB15_424
.LBB15_424:                             # %do.end.2213
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	overlays_around
	movq	%rax, -48(%rbp)
.LBB15_425:                             # %if.end.2215
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	sort_overlays
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdi
	callq	set_buffer_temp
.LBB15_426:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jl	.LBB15_448
# BB#427:                               # %while.body
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_447
# BB#428:                               # %if.then.2223
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-440(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -448(%rbp)
	movq	-440(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -456(%rbp)
	movq	-448(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB15_431
# BB#429:                               # %land.lhs.true.2231
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-448(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB15_431
# BB#430:                               # %cond.true.2235
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-448(%rbp), %rdi
	callq	marker_position
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB15_432
.LBB15_431:                             # %cond.false.2237
	callq	emacs_abort
.LBB15_432:                             # %cond.end.2238
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-1320(%rbp), %rax       # 8-byte Reload
	cmpq	-40(%rbp), %rax
	jne	.LBB15_434
# BB#433:                               # %land.lhs.true.2242
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-448(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$1, %ecx
	je	.LBB15_440
.LBB15_434:                             # %lor.lhs.false.2247
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-456(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB15_437
# BB#435:                               # %land.lhs.true.2252
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-456(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB15_437
# BB#436:                               # %cond.true.2256
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-456(%rbp), %rdi
	callq	marker_position
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB15_438
.LBB15_437:                             # %cond.false.2258
	callq	emacs_abort
.LBB15_438:                             # %cond.end.2259
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-1328(%rbp), %rax       # 8-byte Reload
	cmpq	-40(%rbp), %rax
	jne	.LBB15_441
# BB#439:                               # %land.lhs.true.2263
                                        #   in Loop: Header=BB15_426 Depth=1
	movq	-456(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	shrl	$31, %ecx
	movb	%cl, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_441
.LBB15_440:                             # %if.then.2271
                                        #   in Loop: Header=BB15_426 Depth=1
	jmp	.LBB15_446
.LBB15_441:                             # %if.else.2272
	jmp	.LBB15_442
.LBB15_442:                             # %do.body.2273
	testb	$1, -89(%rbp)
	je	.LBB15_444
# BB#443:                               # %if.then.2274
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB15_444:                             # %if.end.2277
	jmp	.LBB15_445
.LBB15_445:                             # %do.end.2278
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_464
.LBB15_446:                             # %if.end.2279
                                        #   in Loop: Header=BB15_426 Depth=1
	jmp	.LBB15_447
.LBB15_447:                             # %if.end.2280
                                        #   in Loop: Header=BB15_426 Depth=1
	jmp	.LBB15_426
.LBB15_448:                             # %while.end
	jmp	.LBB15_449
.LBB15_449:                             # %do.body.2281
	testb	$1, -89(%rbp)
	je	.LBB15_451
# BB#450:                               # %if.then.2283
	xorl	%edi, %edi
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1360(%rbp)       # 8-byte Spill
.LBB15_451:                             # %if.end.2286
	jmp	.LBB15_452
.LBB15_452:                             # %do.end.2287
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	text_property_stickiness
	movl	%eax, -460(%rbp)
	cmpl	$0, -460(%rbp)
	jle	.LBB15_454
# BB#453:                               # %if.then.2291
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	Fget_text_property
	movq	%rax, -8(%rbp)
	jmp	.LBB15_464
.LBB15_454:                             # %if.else.2293
	cmpl	$0, -460(%rbp)
	jge	.LBB15_463
# BB#455:                               # %land.lhs.true.2296
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB15_457
# BB#456:                               # %cond.true.2301
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB15_461
.LBB15_457:                             # %cond.false.2302
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	368(%rax), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1384(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_459
# BB#458:                               # %cond.true.2307
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	752(%rax), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB15_460
.LBB15_459:                             # %cond.false.2310
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -1392(%rbp)       # 8-byte Spill
.LBB15_460:                             # %cond.end.2314
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1376(%rbp)       # 8-byte Spill
.LBB15_461:                             # %cond.end.2316
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB15_463
# BB#462:                               # %if.then.2320
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	Fget_text_property
	movq	%rax, -8(%rbp)
	jmp	.LBB15_464
.LBB15_463:                             # %if.else.2326
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB15_464:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fget_pos_property, .Lfunc_end15-Fget_pos_property
	.cfi_endproc

	.align	16, 0x90
	.type	overlays_around,@function
overlays_around:                        # @overlays_around
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	current_buffer, %rdx
	movq	944(%rdx), %rdx
	movq	%rdx, -56(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB16_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB16_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false
	callq	emacs_abort
.LBB16_6:                               # %cond.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	jge	.LBB16_8
# BB#7:                                 # %if.then
	jmp	.LBB16_18
.LBB16_8:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB16_11
# BB#9:                                 # %land.lhs.true.16
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB16_11
# BB#10:                                # %cond.true.20
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB16_12
.LBB16_11:                              # %cond.false.22
	callq	emacs_abort
.LBB16_12:                              # %cond.end.23
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rcx
	cmpq	-8(%rbp), %rcx
	jg	.LBB16_16
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB16_15
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB16_15:                              # %if.end.31
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB16_16:                              # %if.end.32
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_17
.LBB16_17:                              # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_1
.LBB16_18:                              # %for.end
	movq	current_buffer, %rax
	movq	952(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB16_19:                              # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_36
# BB#20:                                # %for.body.35
                                        #   in Loop: Header=BB16_19 Depth=1
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XOVERLAY
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$1, %esi
	jne	.LBB16_23
# BB#21:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-40(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB16_23
# BB#22:                                # %cond.true.47
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-40(%rbp), %rdi
	callq	marker_position
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB16_24
.LBB16_23:                              # %cond.false.49
	callq	emacs_abort
.LBB16_24:                              # %cond.end.50
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-64(%rbp), %rcx
	jge	.LBB16_26
# BB#25:                                # %if.then.54
	jmp	.LBB16_36
.LBB16_26:                              # %if.end.55
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-32(%rbp), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB16_29
# BB#27:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-48(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB16_29
# BB#28:                                # %cond.true.66
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-48(%rbp), %rdi
	callq	marker_position
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB16_30
.LBB16_29:                              # %cond.false.68
	callq	emacs_abort
.LBB16_30:                              # %cond.end.69
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	jg	.LBB16_34
# BB#31:                                # %if.then.73
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-80(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB16_33
# BB#32:                                # %if.then.76
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB16_33:                              # %if.end.78
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB16_34:                              # %if.end.80
                                        #   in Loop: Header=BB16_19 Depth=1
	jmp	.LBB16_35
.LBB16_35:                              # %for.inc.81
                                        #   in Loop: Header=BB16_19 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB16_19
.LBB16_36:                              # %for.end.83
	movq	-80(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	overlays_around, .Lfunc_end16-overlays_around
	.cfi_endproc

	.globl	Fdelete_field
	.align	16, 0x90
	.type	Fdelete_field,@function
Fdelete_field:                          # @Fdelete_field
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	callq	find_field
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	del_range
.LBB17_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fdelete_field, .Lfunc_end17-Fdelete_field
	.cfi_endproc

	.align	16, 0x90
	.type	find_field,@function
find_field:                             # @find_field
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
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movb	$0, -65(%rbp)
	movb	$0, -66(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB18_12
.LBB18_2:                               # %if.else
	jmp	.LBB18_3
.LBB18_3:                               # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB18_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB18_10
.LBB18_6:                               # %if.else.10
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_8
# BB#7:                                 # %cond.true
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB18_9:                               # %cond.end
	jmp	.LBB18_10
.LBB18_10:                              # %if.end
	jmp	.LBB18_11
.LBB18_11:                              # %do.end
	jmp	.LBB18_12
.LBB18_12:                              # %if.end.17
	movl	$403, %edi              # imm = 0x193
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_char_property_and_overlay
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB18_14
# BB#13:                                # %cond.true.23
	movl	$403, %edi              # imm = 0x193
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	get_char_property_and_overlay
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false.29
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB18_15:                              # %cond.end.30
	movq	-144(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_25
# BB#16:                                # %if.then.34
	movl	$403, %edi              # imm = 0x193
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_pos_property
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB18_18
# BB#17:                                # %if.then.40
	movb	$1, -66(%rbp)
.LBB18_18:                              # %if.end.41
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB18_20
# BB#19:                                # %if.then.44
	movb	$1, -65(%rbp)
.LBB18_20:                              # %if.end.45
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_24
# BB#21:                                # %land.lhs.true.49
	testb	$1, -65(%rbp)
	je	.LBB18_24
# BB#22:                                # %land.lhs.true.51
	testb	$1, -66(%rbp)
	je	.LBB18_24
# BB#23:                                # %if.then.54
	movb	$0, -65(%rbp)
	movb	$0, -66(%rbp)
.LBB18_24:                              # %if.end.55
	jmp	.LBB18_25
.LBB18_25:                              # %if.end.56
	cmpq	$0, -32(%rbp)
	je	.LBB18_36
# BB#26:                                # %if.then.58
	testb	$1, -65(%rbp)
	je	.LBB18_28
# BB#27:                                # %if.then.60
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB18_35
.LBB18_28:                              # %if.else.62
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_31
# BB#29:                                # %land.lhs.true.66
	movl	$217, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_31
# BB#30:                                # %if.then.70
	movl	$403, %edi              # imm = 0x193
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fprevious_single_char_property_change
	movq	%rax, -88(%rbp)
.LBB18_31:                              # %if.end.74
	movl	$403, %edi              # imm = 0x193
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fprevious_single_char_property_change
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_33
# BB#32:                                # %cond.true.81
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB18_34
.LBB18_33:                              # %cond.false.83
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB18_34:                              # %cond.end.85
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB18_35:                              # %if.end.87
	jmp	.LBB18_36
.LBB18_36:                              # %if.end.88
	cmpq	$0, -48(%rbp)
	je	.LBB18_47
# BB#37:                                # %if.then.90
	testb	$1, -66(%rbp)
	je	.LBB18_39
# BB#38:                                # %if.then.92
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB18_46
.LBB18_39:                              # %if.else.94
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_42
# BB#40:                                # %land.lhs.true.98
	movl	$217, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_42
# BB#41:                                # %if.then.102
	movl	$403, %edi              # imm = 0x193
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fnext_single_char_property_change
	movq	%rax, -8(%rbp)
.LBB18_42:                              # %if.end.106
	movl	$403, %edi              # imm = 0x193
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fnext_single_char_property_change
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_44
# BB#43:                                # %cond.true.113
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB18_45
.LBB18_44:                              # %cond.false.114
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB18_45:                              # %cond.end.116
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB18_46:                              # %if.end.118
	jmp	.LBB18_47
.LBB18_47:                              # %if.end.119
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end18:
	.size	find_field, .Lfunc_end18-find_field
	.cfi_endproc

	.globl	Ffield_string
	.align	16, 0x90
	.type	Ffield_string,@function
Ffield_string:                          # @Ffield_string
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	callq	find_field
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_buffer_string
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Ffield_string, .Lfunc_end19-Ffield_string
	.cfi_endproc

	.globl	make_buffer_string
	.align	16, 0x90
	.type	make_buffer_string,@function
make_buffer_string:                     # @make_buffer_string
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movb	-17(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	make_buffer_string_both
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	make_buffer_string, .Lfunc_end20-make_buffer_string
	.cfi_endproc

	.globl	Ffield_string_no_properties
	.align	16, 0x90
	.type	Ffield_string_no_properties,@function
Ffield_string_no_properties:            # @Ffield_string_no_properties
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-16(%rbp), %rcx
	leaq	-24(%rbp), %r9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	callq	find_field
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_buffer_string
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Ffield_string_no_properties, .Lfunc_end21-Ffield_string_no_properties
	.cfi_endproc

	.globl	Ffield_beginning
	.align	16, 0x90
	.type	Ffield_beginning,@function
Ffield_beginning:                       # @Ffield_beginning
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-32(%rbp), %rcx
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	callq	find_field
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Ffield_beginning, .Lfunc_end22-Ffield_beginning
	.cfi_endproc

	.globl	Ffield_end
	.align	16, 0x90
	.type	Ffield_end,@function
Ffield_end:                             # @Ffield_end
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	leaq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	find_field
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Ffield_end, .Lfunc_end23-Ffield_end
	.cfi_endproc

	.globl	Fconstrain_to_field
	.align	16, 0x90
	.type	Fconstrain_to_field,@function
Fconstrain_to_field:                    # @Fconstrain_to_field
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
	subq	$336, %rsp              # imm = 0x150
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
.LBB24_2:                               # %if.end
	jmp	.LBB24_3
.LBB24_3:                               # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB24_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB24_10
.LBB24_6:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB24_8
# BB#7:                                 # %cond.true
	jmp	.LBB24_9
.LBB24_8:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB24_9:                               # %cond.end
	jmp	.LBB24_10
.LBB24_10:                              # %if.end.18
	jmp	.LBB24_11
.LBB24_11:                              # %do.end
	jmp	.LBB24_12
.LBB24_12:                              # %do.body.19
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB24_15
# BB#13:                                # %land.lhs.true.24
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB24_15
# BB#14:                                # %if.then.28
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB24_19
.LBB24_15:                              # %if.else.31
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB24_17
# BB#16:                                # %cond.true.37
	jmp	.LBB24_18
.LBB24_17:                              # %cond.false.38
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB24_18:                              # %cond.end.40
	jmp	.LBB24_19
.LBB24_19:                              # %if.end.41
	jmp	.LBB24_20
.LBB24_20:                              # %do.end.42
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setg	%dl
	andb	$1, %dl
	movb	%dl, -49(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	globals+1072, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_46
# BB#21:                                # %land.lhs.true.55
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB24_46
# BB#22:                                # %land.lhs.true.58
	movl	$403, %edi              # imm = 0x193
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_28
# BB#23:                                # %lor.lhs.false
	movl	$403, %edi              # imm = 0x193
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_28
# BB#24:                                # %lor.lhs.false.71
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB24_26
# BB#25:                                # %land.lhs.true.75
	movl	$403, %edi              # imm = 0x193
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_28
.LBB24_26:                              # %lor.lhs.false.82
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB24_46
# BB#27:                                # %land.lhs.true.87
	movl	$403, %edi              # imm = 0x193
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB24_46
.LBB24_28:                              # %land.lhs.true.94
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_33
# BB#29:                                # %lor.lhs.false.98
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_pos_property
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_46
# BB#30:                                # %land.lhs.true.104
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB24_33
# BB#31:                                # %lor.lhs.false.109
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB24_33
# BB#32:                                # %lor.lhs.false.115
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fget_char_property
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB24_46
.LBB24_33:                              # %if.then.121
	testb	$1, -49(%rbp)
	je	.LBB24_35
# BB#34:                                # %if.then.122
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	Ffield_end
	movq	%rax, -88(%rbp)
	jmp	.LBB24_36
.LBB24_35:                              # %if.else.124
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	Ffield_beginning
	movq	%rax, -88(%rbp)
.LBB24_36:                              # %if.end.126
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB24_38
# BB#37:                                # %cond.true.131
	testb	$1, -49(%rbp)
	jne	.LBB24_39
	jmp	.LBB24_42
.LBB24_38:                              # %cond.false.134
	testb	$1, -49(%rbp)
	jne	.LBB24_42
.LBB24_39:                              # %land.lhs.true.136
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_41
# BB#40:                                # %lor.lhs.false.140
	movq	$-1, %rax
	leaq	-80(%rbp), %r9
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	sarq	$2, %rdi
	movq	-88(%rbp), %r8
	sarq	$2, %r8
	movb	-49(%rbp), %r10b
	testb	$1, %r10b
	cmovnel	%esi, %ecx
	movslq	%ecx, %r11
	movq	%rax, %rsi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, %rcx
	movq	%r11, %r8
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	find_newline
	cmpq	$0, -80(%rbp)
	movq	%rax, -320(%rbp)        # 8-byte Spill
	je	.LBB24_42
.LBB24_41:                              # %if.then.149
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_42:                              # %if.end.150
	cmpq	$0, -48(%rbp)
	je	.LBB24_45
# BB#43:                                # %land.lhs.true.152
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	-48(%rbp), %rax
	je	.LBB24_45
# BB#44:                                # %if.then.156
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	set_point
.LBB24_45:                              # %if.end.158
	jmp	.LBB24_46
.LBB24_46:                              # %if.end.159
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fconstrain_to_field, .Lfunc_end24-Fconstrain_to_field
	.cfi_endproc

	.globl	Fline_beginning_position
	.align	16, 0x90
	.type	Fline_beginning_position,@function
Fline_beginning_position:               # @Fline_beginning_position
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB25_6
.LBB25_2:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB25_4
# BB#3:                                 # %cond.true
	jmp	.LBB25_5
.LBB25_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB25_5:                               # %cond.end
	jmp	.LBB25_6
.LBB25_6:                               # %if.end
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	scan_newline_from_point
	movq	-16(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-8(%rbp), %rdi
	sarq	$2, %rdi
	cmpq	$1, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	je	.LBB25_8
# BB#7:                                 # %cond.true.13
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB25_9:                               # %cond.end.17
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	Fconstrain_to_field
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fline_beginning_position, .Lfunc_end25-Fline_beginning_position
	.cfi_endproc

	.globl	Fline_end_position
	.align	16, 0x90
	.type	Fline_end_position,@function
Fline_end_position:                     # @Fline_end_position
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB26_6
.LBB26_2:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB26_4
# BB#3:                                 # %cond.true
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB26_5:                               # %cond.end
	jmp	.LBB26_6
.LBB26_6:                               # %if.end
	movabsq	$-9223372036854775807, %rdi # imm = 0x8000000000000001
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	clip_to_bounds
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setle	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	movslq	%ecx, %rsi
	subq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	find_before_next_newline
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	Fconstrain_to_field
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fline_end_position, .Lfunc_end26-Fline_end_position
	.cfi_endproc

	.globl	save_excursion_save
	.align	16, 0x90
	.type	save_excursion_save,@function
save_excursion_save:                    # @save_excursion_save
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
	subq	$48, %rsp
	callq	Fpoint_marker
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	selected_window, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	XWINDOW
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-24(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB27_2
# BB#1:                                 # %cond.true
	movq	selected_window, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB27_3
.LBB27_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB27_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	make_save_obj_obj_obj_obj
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	save_excursion_save, .Lfunc_end27-save_excursion_save
	.cfi_endproc

	.globl	save_excursion_restore
	.align	16, 0x90
	.type	save_excursion_restore,@function
save_excursion_restore:                 # @save_excursion_restore
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
	subq	$64, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XSAVE_OBJECT
	movq	%rax, %rdi
	callq	Fmarker_buffer
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_9
.LBB28_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	Fset_buffer
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	XSAVE_OBJECT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fgoto_char
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	XSAVE_OBJECT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB28_3
	jmp	.LBB28_8
.LBB28_3:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	selected_window, %rax
	je	.LBB28_8
# BB#4:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -49(%rbp)          # 1-byte Spill
	jne	.LBB28_5
	jmp	.LBB28_6
.LBB28_5:                               # %land.rhs
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	sete	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB28_6:                               # %land.end
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB28_7
	jmp	.LBB28_8
.LBB28_7:                               # %if.then.15
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	Fset_window_point
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB28_8:                               # %if.end.18
	jmp	.LBB28_9
.LBB28_9:                               # %out
	movq	-8(%rbp), %rdi
	callq	free_misc
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	save_excursion_restore, .Lfunc_end28-save_excursion_restore
	.cfi_endproc

	.globl	Fsave_excursion
	.align	16, 0x90
	.type	Fsave_excursion,@function
Fsave_excursion:                        # @Fsave_excursion
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	callq	save_excursion_save
	movabsq	$save_excursion_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-8(%rbp), %rdi
	callq	Fprogn
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unbind_to
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fsave_excursion, .Lfunc_end29-Fsave_excursion
	.cfi_endproc

	.globl	Fsave_current_buffer
	.align	16, 0x90
	.type	Fsave_current_buffer,@function
Fsave_current_buffer:                   # @Fsave_current_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -16(%rbp)
	callq	record_unwind_current_buffer
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fprogn
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fsave_current_buffer, .Lfunc_end30-Fsave_current_buffer
	.cfi_endproc

	.globl	Fbuffer_size
	.align	16, 0x90
	.type	Fbuffer_size,@function
Fbuffer_size:                           # @Fbuffer_size
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_BUFFER
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB31_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fbuffer_size, .Lfunc_end31-Fbuffer_size
	.cfi_endproc

	.globl	Fpoint_min
	.align	16, 0x90
	.type	Fpoint_min,@function
Fpoint_min:                             # @Fpoint_min
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
	subq	$16, %rsp
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fpoint_min, .Lfunc_end32-Fpoint_min
	.cfi_endproc

	.globl	Fpoint_min_marker
	.align	16, 0x90
	.type	Fpoint_min_marker,@function
Fpoint_min_marker:                      # @Fpoint_min_marker
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
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	752(%rax), %rsi
	movq	current_buffer, %rax
	movq	760(%rax), %rdx
	callq	build_marker
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fpoint_min_marker, .Lfunc_end33-Fpoint_min_marker
	.cfi_endproc

	.globl	Fpoint_max
	.align	16, 0x90
	.type	Fpoint_max,@function
Fpoint_max:                             # @Fpoint_max
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
	subq	$16, %rsp
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fpoint_max, .Lfunc_end34-Fpoint_max
	.cfi_endproc

	.globl	Fpoint_max_marker
	.align	16, 0x90
	.type	Fpoint_max_marker,@function
Fpoint_max_marker:                      # @Fpoint_max_marker
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
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	768(%rax), %rsi
	movq	current_buffer, %rax
	movq	776(%rax), %rdx
	callq	build_marker
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fpoint_max_marker, .Lfunc_end35-Fpoint_max_marker
	.cfi_endproc

	.globl	Fgap_position
	.align	16, 0x90
	.type	Fgap_position,@function
Fgap_position:                          # @Fgap_position
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
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fgap_position, .Lfunc_end36-Fgap_position
	.cfi_endproc

	.globl	Fgap_size
	.align	16, 0x90
	.type	Fgap_size,@function
Fgap_size:                              # @Fgap_size
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
	subq	$16, %rsp
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fgap_size, .Lfunc_end37-Fgap_size
	.cfi_endproc

	.globl	Fposition_bytes
	.align	16, 0x90
	.type	Fposition_bytes,@function
Fposition_bytes:                        # @Fposition_bytes
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB38_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB38_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB38_8
.LBB38_4:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB38_6
# BB#5:                                 # %cond.true
	jmp	.LBB38_7
.LBB38_6:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB38_7:                               # %cond.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end
	jmp	.LBB38_9
.LBB38_9:                               # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	jl	.LBB38_11
# BB#10:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jle	.LBB38_12
.LBB38_11:                              # %if.then.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_13
.LBB38_12:                              # %if.end.19
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB38_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fposition_bytes, .Lfunc_end38-Fposition_bytes
	.cfi_endproc

	.globl	Fbyte_to_position
	.align	16, 0x90
	.type	Fbyte_to_position,@function
Fbyte_to_position:                      # @Fbyte_to_position
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB39_2
# BB#1:                                 # %cond.true
	jmp	.LBB39_3
.LBB39_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB39_3:                               # %cond.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	cmpq	$1, -24(%rbp)
	jl	.LBB39_5
# BB#4:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	32(%rcx), %rax
	jle	.LBB39_6
.LBB39_5:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_15
.LBB39_6:                               # %if.end
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	32(%rcx), %rax
	je	.LBB39_14
# BB#7:                                 # %if.then.13
	jmp	.LBB39_8
.LBB39_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB39_10
# BB#9:                                 # %cond.true.17
                                        #   in Loop: Header=BB39_8 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB39_11
.LBB39_10:                              # %cond.false.19
                                        #   in Loop: Header=BB39_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB39_11
.LBB39_11:                              # %cond.end.20
                                        #   in Loop: Header=BB39_8 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	jne	.LBB39_12
	jmp	.LBB39_13
.LBB39_12:                              # %while.body
                                        #   in Loop: Header=BB39_8 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB39_8
.LBB39_13:                              # %while.end
	jmp	.LBB39_14
.LBB39_14:                              # %if.end.27
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB39_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fbyte_to_position, .Lfunc_end39-Fbyte_to_position
	.cfi_endproc

	.globl	Ffollowing_char
	.align	16, 0x90
	.type	Ffollowing_char,@function
Ffollowing_char:                        # @Ffollowing_char
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
	subq	$32, %rsp
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jl	.LBB40_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB40_9
.LBB40_2:                               # %if.else
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB40_8
.LBB40_4:                               # %cond.false
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB40_6
# BB#5:                                 # %cond.true.8
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB40_7
.LBB40_6:                               # %cond.false.10
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB40_7
.LBB40_7:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -20(%rbp)         # 4-byte Spill
.LBB40_8:                               # %cond.end.16
	movl	-20(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
.LBB40_9:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Ffollowing_char, .Lfunc_end40-Ffollowing_char
	.cfi_endproc

	.globl	Fprevious_char
	.align	16, 0x90
	.type	Fprevious_char,@function
Fprevious_char:                         # @Fprevious_char
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
	subq	$64, %rsp
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jg	.LBB41_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB41_23
.LBB41_2:                               # %if.else
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_18
# BB#3:                                 # %if.then.3
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %do.body
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB41_6
# BB#5:                                 # %if.then.6
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.9
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB41_9
	jmp	.LBB41_10
.LBB41_9:                               # %while.body
                                        #   in Loop: Header=BB41_8 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB41_8
.LBB41_10:                              # %while.end
	jmp	.LBB41_11
.LBB41_11:                              # %do.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_13
# BB#12:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB41_17
.LBB41_13:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB41_15
# BB#14:                                # %cond.true.28
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB41_16
.LBB41_15:                              # %cond.false.31
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB41_16
.LBB41_16:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
.LBB41_17:                              # %cond.end.38
	movl	-44(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB41_22
.LBB41_18:                              # %if.else.42
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB41_20
# BB#19:                                # %cond.true.49
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB41_21
.LBB41_20:                              # %cond.false.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB41_21
.LBB41_21:                              # %cond.end.53
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %edi
	callq	make_natnum
	movq	%rax, -8(%rbp)
.LBB41_22:                              # %if.end.65
	jmp	.LBB41_23
.LBB41_23:                              # %if.end.66
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Fprevious_char, .Lfunc_end41-Fprevious_char
	.cfi_endproc

	.globl	Fbobp
	.align	16, 0x90
	.type	Fbobp,@function
Fbobp:                                  # @Fbobp
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
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB42_3
.LBB42_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB42_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Fbobp, .Lfunc_end42-Fbobp
	.cfi_endproc

	.globl	Feobp
	.align	16, 0x90
	.type	Feobp,@function
Feobp:                                  # @Feobp
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
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jne	.LBB43_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_3
.LBB43_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB43_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Feobp, .Lfunc_end43-Feobp
	.cfi_endproc

	.globl	Fbolp
	.align	16, 0x90
	.type	Fbolp,@function
Fbolp:                                  # @Fbolp
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
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	je	.LBB44_5
# BB#1:                                 # %lor.lhs.false
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB44_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB44_4
.LBB44_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB44_4
.LBB44_4:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB44_6
.LBB44_5:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB44_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fbolp, .Lfunc_end44-Fbolp
	.cfi_endproc

	.globl	Feolp
	.align	16, 0x90
	.type	Feolp,@function
Feolp:                                  # @Feolp
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
	subq	$16, %rsp
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	je	.LBB45_5
# BB#1:                                 # %lor.lhs.false
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB45_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB45_4
.LBB45_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB45_4
.LBB45_4:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB45_6
.LBB45_5:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB45_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Feolp, .Lfunc_end45-Feolp
	.cfi_endproc

	.globl	Fchar_after
	.align	16, 0x90
	.type	Fchar_after,@function
Fchar_after:                            # @Fchar_after
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -24(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
.LBB46_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB46_8
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB46_8
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	marker_byte_position
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	760(%rdi), %rax
	jl	.LBB46_6
# BB#5:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	776(%rcx), %rax
	jl	.LBB46_7
.LBB46_6:                               # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB46_28
.LBB46_7:                               # %if.end.16
	jmp	.LBB46_21
.LBB46_8:                               # %if.else
	jmp	.LBB46_9
.LBB46_9:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB46_12
# BB#10:                                # %land.lhs.true.21
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB46_12
# BB#11:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB46_16
.LBB46_12:                              # %if.else.28
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB46_14
# BB#13:                                # %cond.true
	jmp	.LBB46_15
.LBB46_14:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB46_15:                              # %cond.end
	jmp	.LBB46_16
.LBB46_16:                              # %if.end.35
	jmp	.LBB46_17
.LBB46_17:                              # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jl	.LBB46_19
# BB#18:                                # %lor.lhs.false.38
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jl	.LBB46_20
.LBB46_19:                              # %if.then.42
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB46_28
.LBB46_20:                              # %if.end.44
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -24(%rbp)
.LBB46_21:                              # %if.end.47
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_23
# BB#22:                                # %cond.true.51
	movq	-24(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB46_27
.LBB46_23:                              # %cond.false.53
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB46_25
# BB#24:                                # %cond.true.56
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB46_26
.LBB46_25:                              # %cond.false.58
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB46_26
.LBB46_26:                              # %cond.end.59
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
.LBB46_27:                              # %cond.end.64
	movl	-52(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB46_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fchar_after, .Lfunc_end46-Fchar_after
	.cfi_endproc

	.globl	Fchar_before
	.align	16, 0x90
	.type	Fchar_before,@function
Fchar_before:                           # @Fchar_before
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
.LBB47_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB47_8
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB47_8
# BB#4:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	marker_byte_position
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rdi
	cmpq	760(%rdi), %rax
	jle	.LBB47_6
# BB#5:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	776(%rcx), %rax
	jle	.LBB47_7
.LBB47_6:                               # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB47_42
.LBB47_7:                               # %if.end.16
	jmp	.LBB47_21
.LBB47_8:                               # %if.else
	jmp	.LBB47_9
.LBB47_9:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB47_12
# BB#10:                                # %land.lhs.true.21
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB47_12
# BB#11:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB47_16
.LBB47_12:                              # %if.else.28
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB47_14
# BB#13:                                # %cond.true
	jmp	.LBB47_15
.LBB47_14:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB47_15:                              # %cond.end
	jmp	.LBB47_16
.LBB47_16:                              # %if.end.35
	jmp	.LBB47_17
.LBB47_17:                              # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jle	.LBB47_19
# BB#18:                                # %lor.lhs.false.38
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB47_20
.LBB47_19:                              # %if.then.42
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB47_42
.LBB47_20:                              # %if.end.44
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -32(%rbp)
.LBB47_21:                              # %if.end.47
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_37
# BB#22:                                # %if.then.51
	jmp	.LBB47_23
.LBB47_23:                              # %do.body.52
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB47_25
# BB#24:                                # %if.then.55
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB47_26
.LBB47_25:                              # %if.else.58
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB47_26:                              # %if.end.65
	jmp	.LBB47_27
.LBB47_27:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB47_28
	jmp	.LBB47_29
.LBB47_28:                              # %while.body
                                        #   in Loop: Header=BB47_27 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB47_27
.LBB47_29:                              # %while.end
	jmp	.LBB47_30
.LBB47_30:                              # %do.end.71
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_32
# BB#31:                                # %cond.true.76
	movq	-32(%rbp), %rdi
	callq	FETCH_MULTIBYTE_CHAR
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB47_36
.LBB47_32:                              # %cond.false.78
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB47_34
# BB#33:                                # %cond.true.83
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_35
.LBB47_34:                              # %cond.false.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_35
.LBB47_35:                              # %cond.end.87
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
.LBB47_36:                              # %cond.end.94
	movl	-76(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB47_41
.LBB47_37:                              # %if.else.98
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB47_39
# BB#38:                                # %cond.true.104
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB47_40
.LBB47_39:                              # %cond.false.107
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB47_40
.LBB47_40:                              # %cond.end.108
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %edi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB47_41:                              # %if.end.117
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB47_42:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fchar_before, .Lfunc_end47-Fchar_before
	.cfi_endproc

	.globl	Fuser_login_name
	.align	16, 0x90
	.type	Fuser_login_name,@function
Fuser_login_name:                       # @Fuser_login_name
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	globals+2568, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	init_editfns
.LBB48_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_4
# BB#3:                                 # %if.then.3
	movq	globals+2568, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_8
.LBB48_4:                               # %if.end.4
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	cons_to_unsigned
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	callq	block_input
	movl	-28(%rbp), %edi
	callq	getpwuid
	movq	%rax, -24(%rbp)
	callq	unblock_input
	cmpq	$0, -24(%rbp)
	je	.LBB48_6
# BB#5:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_string
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB48_7
.LBB48_6:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB48_7:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB48_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fuser_login_name, .Lfunc_end48-Fuser_login_name
	.cfi_endproc

	.globl	Fuser_real_login_name
	.align	16, 0x90
	.type	Fuser_real_login_name,@function
Fuser_real_login_name:                  # @Fuser_real_login_name
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
	xorl	%edi, %edi
	movq	globals+2568, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB49_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	init_editfns
.LBB49_2:                               # %if.end
	movq	globals+2576, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fuser_real_login_name, .Lfunc_end49-Fuser_real_login_name
	.cfi_endproc

	.globl	Fuser_uid
	.align	16, 0x90
	.type	Fuser_uid,@function
Fuser_uid:                              # @Fuser_uid
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
	subq	$16, %rsp
	callq	geteuid
	xorl	%ecx, %ecx
	movl	%eax, -4(%rbp)
	cmpl	-4(%rbp), %ecx
	jbe	.LBB50_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB50_3
.LBB50_2:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB50_4
.LBB50_3:                               # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB50_5
.LBB50_4:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
.LBB50_5:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fuser_uid, .Lfunc_end50-Fuser_uid
	.cfi_endproc

	.globl	Fuser_real_uid
	.align	16, 0x90
	.type	Fuser_real_uid,@function
Fuser_real_uid:                         # @Fuser_real_uid
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
	callq	getuid
	xorl	%ecx, %ecx
	movl	%eax, -4(%rbp)
	cmpl	-4(%rbp), %ecx
	jbe	.LBB51_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB51_3
.LBB51_2:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB51_4
.LBB51_3:                               # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB51_5
.LBB51_4:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
.LBB51_5:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fuser_real_uid, .Lfunc_end51-Fuser_real_uid
	.cfi_endproc

	.globl	Fgroup_gid
	.align	16, 0x90
	.type	Fgroup_gid,@function
Fgroup_gid:                             # @Fgroup_gid
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
	callq	getegid
	xorl	%ecx, %ecx
	movl	%eax, -4(%rbp)
	cmpl	-4(%rbp), %ecx
	jbe	.LBB52_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB52_3
.LBB52_2:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB52_4
.LBB52_3:                               # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB52_5
.LBB52_4:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
.LBB52_5:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fgroup_gid, .Lfunc_end52-Fgroup_gid
	.cfi_endproc

	.globl	Fgroup_real_gid
	.align	16, 0x90
	.type	Fgroup_real_gid,@function
Fgroup_real_gid:                        # @Fgroup_real_gid
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
	callq	getgid
	xorl	%ecx, %ecx
	movl	%eax, -4(%rbp)
	cmpl	-4(%rbp), %ecx
	jbe	.LBB53_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB53_3
.LBB53_2:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB53_4
.LBB53_3:                               # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB53_5
.LBB53_4:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
.LBB53_5:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fgroup_real_gid, .Lfunc_end53-Fgroup_real_gid
	.cfi_endproc

	.globl	Fsystem_name
	.align	16, 0x90
	.type	Fsystem_name,@function
Fsystem_name:                           # @Fsystem_name
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
	movq	globals+2280, %rax
	cmpq	cached_system_name, %rax
	jne	.LBB54_2
# BB#1:                                 # %if.then
	callq	init_and_cache_system_name
.LBB54_2:                               # %if.end
	movq	globals+2280, %rax
	popq	%rbp
	retq
.Lfunc_end54:
	.size	Fsystem_name, .Lfunc_end54-Fsystem_name
	.cfi_endproc

	.globl	Femacs_pid
	.align	16, 0x90
	.type	Femacs_pid,@function
Femacs_pid:                             # @Femacs_pid
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
	subq	$16, %rsp
	callq	getpid
	xorl	%ecx, %ecx
	movl	%eax, -4(%rbp)
	cmpl	-4(%rbp), %ecx
	jle	.LBB55_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB55_3
.LBB55_2:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB55_4
.LBB55_3:                               # %cond.true
	cvtsi2sdl	-4(%rbp), %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB55_5
.LBB55_4:                               # %cond.false
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB55_5:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Femacs_pid, .Lfunc_end55-Femacs_pid
	.cfi_endproc

	.globl	time_overflow
	.align	16, 0x90
	.type	time_overflow,@function
time_overflow:                          # @time_overflow
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
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	error
.Lfunc_end56:
	.size	time_overflow, .Lfunc_end56-time_overflow
	.cfi_endproc

	.globl	Fcurrent_time
	.align	16, 0x90
	.type	Fcurrent_time,@function
Fcurrent_time:                          # @Fcurrent_time
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
	subq	$16, %rsp
	callq	current_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	make_lisp_time
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Fcurrent_time, .Lfunc_end57-Fcurrent_time
	.cfi_endproc

	.globl	make_lisp_time
	.align	16, 0x90
	.type	make_lisp_time,@function
make_lisp_time:                         # @make_lisp_time
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movl	%esi, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	hi_time
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	lo_time
	movl	$1000, %ecx             # imm = 0x3E8
	movslq	%eax, %rsi
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rdi
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	imull	$1000, %edx, %ecx       # imm = 0x3E8
	movslq	%ecx, %rcx
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	list4i
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	make_lisp_time, .Lfunc_end58-make_lisp_time
	.cfi_endproc

	.globl	Ftime_add
	.align	16, 0x90
	.type	Ftime_add,@function
Ftime_add:                              # @Ftime_add
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
	subq	$16, %rsp
	movabsq	$time_add, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	time_arith
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	Ftime_add, .Lfunc_end59-Ftime_add
	.cfi_endproc

	.align	16, 0x90
	.type	time_arith,@function
time_arith:                             # @time_arith
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
	subq	$176, %rsp
	leaq	-56(%rbp), %rax
	leaq	-28(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	lisp_time_struct
	leaq	-80(%rbp), %rdi
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	callq	lisp_time_struct
	leaq	-104(%rbp), %rdi
	leaq	-56(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	(%rcx), %rax
	movq	%rax, 24(%rsp)
	movq	8(%rcx), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rcx), %rax
	movq	%rax, 40(%rsp)
	callq	*-24(%rbp)
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-104(%rbp), %rax
	jg	.LBB60_2
# BB#1:                                 # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -104(%rbp)
	jle	.LBB60_3
.LBB60_2:                               # %if.then
	callq	time_overflow
.LBB60_3:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)
	movl	-28(%rbp), %edi
	cmpl	-32(%rbp), %edi
	jle	.LBB60_5
# BB#4:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB60_6
.LBB60_5:                               # %cond.false
	movl	-32(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB60_6:                               # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	je	.LBB60_9
	jmp	.LBB60_11
.LBB60_11:                              # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB60_8
	jmp	.LBB60_7
.LBB60_7:                               # %sw.default
	movslq	-88(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -112(%rbp)
.LBB60_8:                               # %sw.bb
	movslq	-92(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -112(%rbp)
.LBB60_9:                               # %sw.bb.9
	movslq	-96(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -112(%rbp)
# BB#10:                                # %sw.epilog
	movq	-112(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	time_arith, .Lfunc_end60-time_arith
	.cfi_endproc

	.align	16, 0x90
	.type	time_add,@function
time_add:                               # @time_add
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
	pushq	%rbx
.Ltmp186:
	.cfi_offset %rbx, -24
	movq	%rdi, %rax
	leaq	40(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$65536, %esi            # imm = 0x10000
	movl	$1000000, %r8d          # imm = 0xF4240
	movq	(%rdx), %r9
	addq	(%rcx), %r9
	movq	%r9, -16(%rbp)
	movl	8(%rdx), %r10d
	addl	8(%rcx), %r10d
	movl	%r10d, -20(%rbp)
	movl	12(%rdx), %r10d
	addl	12(%rcx), %r10d
	movl	%r10d, -24(%rbp)
	movl	16(%rdx), %r10d
	addl	16(%rcx), %r10d
	movl	%r10d, -28(%rbp)
	cmpl	-28(%rbp), %r8d
	setle	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r10d
	addl	-24(%rbp), %r10d
	movl	%r10d, -24(%rbp)
	cmpl	-28(%rbp), %r8d
	setle	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r10d
	imull	$1000000, %r10d, %r10d  # imm = 0xF4240
	movl	-28(%rbp), %ebx
	subl	%r10d, %ebx
	movl	%ebx, -28(%rbp)
	cmpl	-24(%rbp), %r8d
	setle	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r10d
	addl	-20(%rbp), %r10d
	movl	%r10d, -20(%rbp)
	cmpl	-24(%rbp), %r8d
	setle	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r8d
	imull	$1000000, %r8d, %r8d    # imm = 0xF4240
	movl	-24(%rbp), %r10d
	subl	%r8d, %r10d
	movl	%r10d, -24(%rbp)
	cmpl	-20(%rbp), %esi
	setle	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r8d
	movslq	%r8d, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	cmpl	-20(%rbp), %esi
	setle	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %esi
	shll	$16, %esi
	movl	-20(%rbp), %r8d
	subl	%esi, %r8d
	movl	%r8d, -20(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rdi)
	movl	-20(%rbp), %esi
	movl	%esi, 8(%rdi)
	movl	-24(%rbp), %esi
	movl	%esi, 12(%rdi)
	movl	-28(%rbp), %esi
	movl	%esi, 16(%rdi)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end61:
	.size	time_add, .Lfunc_end61-time_add
	.cfi_endproc

	.globl	Ftime_subtract
	.align	16, 0x90
	.type	Ftime_subtract,@function
Ftime_subtract:                         # @Ftime_subtract
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$time_subtract, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	time_arith
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Ftime_subtract, .Lfunc_end62-Ftime_subtract
	.cfi_endproc

	.align	16, 0x90
	.type	time_subtract,@function
time_subtract:                          # @time_subtract
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	40(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movq	(%rdx), %rsi
	subq	(%rcx), %rsi
	movq	%rsi, -8(%rbp)
	movl	8(%rdx), %r8d
	subl	8(%rcx), %r8d
	movl	%r8d, -12(%rbp)
	movl	12(%rdx), %r8d
	subl	12(%rcx), %r8d
	movl	%r8d, -16(%rbp)
	movl	16(%rdx), %r8d
	subl	16(%rcx), %r8d
	movl	%r8d, -20(%rbp)
	cmpl	$0, -20(%rbp)
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movl	-16(%rbp), %r10d
	subl	%r8d, %r10d
	movl	%r10d, -16(%rbp)
	cmpl	$0, -20(%rbp)
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	imull	$1000000, %r8d, %r8d    # imm = 0xF4240
	addl	-20(%rbp), %r8d
	movl	%r8d, -20(%rbp)
	cmpl	$0, -16(%rbp)
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movl	-12(%rbp), %r10d
	subl	%r8d, %r10d
	movl	%r10d, -12(%rbp)
	cmpl	$0, -16(%rbp)
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	imull	$1000000, %r8d, %r8d    # imm = 0xF4240
	addl	-16(%rbp), %r8d
	movl	%r8d, -16(%rbp)
	cmpl	$0, -12(%rbp)
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	movq	-8(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -8(%rbp)
	cmpl	$0, -12(%rbp)
	setl	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	shll	$16, %r8d
	addl	-12(%rbp), %r8d
	movl	%r8d, -12(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rdi)
	movl	-12(%rbp), %r8d
	movl	%r8d, 8(%rdi)
	movl	-16(%rbp), %r8d
	movl	%r8d, 12(%rdi)
	movl	-20(%rbp), %r8d
	movl	%r8d, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end63:
	.size	time_subtract, .Lfunc_end63-time_subtract
	.cfi_endproc

	.globl	Ftime_less_p
	.align	16, 0x90
	.type	Ftime_less_p,@function
Ftime_less_p:                           # @Ftime_less_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-48(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	lisp_time_struct
	leaq	-72(%rbp), %rdi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	callq	lisp_time_struct
	movq	-48(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB64_2
# BB#1:                                 # %cond.true
	movq	-48(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jl	.LBB64_7
	jmp	.LBB64_8
.LBB64_2:                               # %cond.false
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB64_4
# BB#3:                                 # %cond.true.7
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.LBB64_7
	jmp	.LBB64_8
.LBB64_4:                               # %cond.false.11
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB64_6
# BB#5:                                 # %cond.true.14
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB64_7
	jmp	.LBB64_8
.LBB64_6:                               # %cond.false.18
	movl	-32(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB64_8
.LBB64_7:                               # %cond.true.21
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB64_9
.LBB64_8:                               # %cond.false.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB64_9:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Ftime_less_p, .Lfunc_end64-Ftime_less_p
	.cfi_endproc

	.align	16, 0x90
	.type	lisp_time_struct,@function
lisp_time_struct:                       # @lisp_time_struct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, %rax
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %r8
	leaq	-40(%rbp), %r9
	leaq	-48(%rbp), %r10
	movq	%rsi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%r10, %r8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	disassemble_lisp_time
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	callq	invalid_time
.LBB65_2:                               # %if.end
	leaq	-72(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	decode_time_components
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %edi
	callq	check_time_validity
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	-64(%rbp), %rcx
	movq	%rcx, 8(%rdx)
	movq	-56(%rbp), %rcx
	movq	%rcx, 16(%rdx)
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	lisp_time_struct, .Lfunc_end65-lisp_time_struct
	.cfi_endproc

	.globl	Fget_internal_run_time
	.align	16, 0x90
	.type	Fget_internal_run_time,@function
Fget_internal_run_time:                 # @Fget_internal_run_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%edi, %edi
	leaq	-144(%rbp), %rsi
	callq	getrusage
	cmpl	$0, %eax
	jge	.LBB66_2
# BB#1:                                 # %if.then
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	xsignal0
.LBB66_2:                               # %if.end
	movq	-144(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	addq	-120(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$1000000, -156(%rbp)    # imm = 0xF4240
	jl	.LBB66_4
# BB#3:                                 # %if.then.9
	movl	-156(%rbp), %eax
	subl	$1000000, %eax          # imm = 0xF4240
	movl	%eax, -156(%rbp)
	movq	-152(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
.LBB66_4:                               # %if.end.10
	movq	-152(%rbp), %rdi
	imull	$1000, -156(%rbp), %eax # imm = 0x3E8
	movslq	%eax, %rsi
	callq	make_timespec
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	make_lisp_time
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fget_internal_run_time, .Lfunc_end66-Fget_internal_run_time
	.cfi_endproc

	.align	16, 0x90
	.type	hi_time,@function
hi_time:                                # @hi_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$16, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end67:
	.size	hi_time, .Lfunc_end67-hi_time
	.cfi_endproc

	.align	16, 0x90
	.type	lo_time,@function
lo_time:                                # @lo_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$65535, %rdi            # imm = 0xFFFF
	movl	%edi, %eax
	popq	%rbp
	retq
.Lfunc_end68:
	.size	lo_time, .Lfunc_end68-lo_time
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI69_0:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI69_1:
	.quad	4679240012837945344     # double 65536
.LCPI69_2:
	.quad	4786511204640096256     # double 1.0E+12
.LCPI69_3:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	decode_time_components
	.align	16, 0x90
	.type	decode_time_components,@function
decode_time_components:                 # @decode_time_components
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB69_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB69_3
# BB#2:                                 # %land.lhs.true.8
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB69_4
.LBB69_3:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB69_27
.LBB69_4:                               # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB69_19
# BB#5:                                 # %if.then.19
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB69_12
# BB#6:                                 # %if.then.24
	movq	-24(%rbp), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -96(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB69_9
# BB#7:                                 # %land.lhs.true.25
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	decode_float_time
	testb	$1, %al
	jne	.LBB69_9
# BB#8:                                 # %if.then.27
	movl	$-1, -4(%rbp)
	jmp	.LBB69_27
.LBB69_9:                               # %if.end.28
	cmpq	$0, -56(%rbp)
	je	.LBB69_11
# BB#10:                                # %if.then.30
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB69_11:                              # %if.end.31
	movl	$1, -4(%rbp)
	jmp	.LBB69_27
.LBB69_12:                              # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_18
# BB#13:                                # %if.then.35
	callq	current_timespec
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB69_15
# BB#14:                                # %if.then.38
	movq	-112(%rbp), %rdi
	callq	hi_time
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-112(%rbp), %rdi
	callq	lo_time
	movl	$1000, %ecx             # imm = 0x3E8
	movl	%ecx, %edi
	movq	-48(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-104(%rbp), %rax
	cqto
	idivq	%rdi
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-104(%rbp), %rax
	cqto
	idivq	%rdi
	imulq	$1000, %rdx, %rdx       # imm = 0x3E8
	movl	%edx, %ecx
	movq	-48(%rbp), %rdx
	movl	%ecx, 16(%rdx)
.LBB69_15:                              # %if.end.49
	cmpq	$0, -56(%rbp)
	je	.LBB69_17
# BB#16:                                # %if.then.51
	movsd	.LCPI69_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdq	-112(%rbp), %xmm1
	cvtsi2sdq	-104(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-56(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB69_17:                              # %if.end.57
	movl	$1, -4(%rbp)
	jmp	.LBB69_27
.LBB69_18:                              # %if.else.58
	movl	$0, -4(%rbp)
	jmp	.LBB69_27
.LBB69_19:                              # %if.end.59
	movl	$1000000, %eax          # imm = 0xF4240
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -72(%rbp)
	movq	-32(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -80(%rbp)
	movq	-40(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rax
	cqto
	idivq	%rcx
	movq	-88(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	setl	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %rdx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	subq	%rdx, %rsi
	addq	-80(%rbp), %rsi
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movq	-80(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	setl	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %rdx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	subq	%rdx, %rsi
	addq	-72(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movq	-72(%rbp), %rdx
	sarq	$16, %rdx
	addq	-64(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-88(%rbp), %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movq	-88(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	setl	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	imull	$1000000, %r8d, %r8d    # imm = 0xF4240
	movslq	%r8d, %rdx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rsi, -88(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movq	-80(%rbp), %rsi
	movq	%rsi, %rax
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	setl	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	imull	$1000000, %r8d, %r8d    # imm = 0xF4240
	movslq	%r8d, %rcx
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, -80(%rbp)
	movq	-72(%rbp), %rcx
	andq	$65535, %rcx            # imm = 0xFFFF
	movq	%rcx, -72(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB69_24
# BB#20:                                # %if.then.94
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-64(%rbp), %rax
	jg	.LBB69_22
# BB#21:                                # %land.lhs.true.97
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -64(%rbp)
	jle	.LBB69_23
.LBB69_22:                              # %if.then.100
	movl	$-1, -4(%rbp)
	jmp	.LBB69_27
.LBB69_23:                              # %if.end.101
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
.LBB69_24:                              # %if.end.109
	cmpq	$0, -56(%rbp)
	je	.LBB69_26
# BB#25:                                # %if.then.111
	movsd	.LCPI69_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI69_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI69_3, %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdq	-64(%rbp), %xmm3
	movsd	%xmm3, -120(%rbp)
	cvtsi2sdq	-80(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	cvtsi2sdq	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	cvtsi2sdq	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	mulsd	-120(%rbp), %xmm0
	addsd	%xmm0, %xmm3
	movq	-56(%rbp), %rax
	movsd	%xmm3, (%rax)
.LBB69_26:                              # %if.end.122
	movl	$1, -4(%rbp)
.LBB69_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	decode_time_components, .Lfunc_end69-decode_time_components
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI70_0:
	.quad	-4341470040785158144    # double -2.305843009213694E+18
.LCPI70_1:
	.quad	4679240012837945344     # double 65536
.LCPI70_2:
	.quad	4786511204640096256     # double 1.0E+12
	.text
	.align	16, 0x90
	.type	decode_float_time,@function
decode_float_time:                      # @decode_float_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	.LCPI70_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI70_1, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	mulsd	-32(%rbp), %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB70_2
# BB#1:                                 # %land.lhs.true
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB70_3
.LBB70_2:                               # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB70_4
.LBB70_3:                               # %if.end
	movl	$1000000, %eax          # imm = 0xF4240
	movl	%eax, %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvttsd2si	%xmm0, %rdx
	movq	%rdx, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdq	%rdx, %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	fldl	-128(%rbp)
	fldl	.LCPI70_2(%rip)
	fmulp	%st(1)
	fld	%st(0)
	fstpt	-96(%rbp)
	fnstcw	-130(%rbp)
	movw	-130(%rbp), %si
	movw	$3199, -130(%rbp)       # imm = 0xC7F
	fldcw	-130(%rbp)
	movw	%si, -130(%rbp)
	fistpll	-120(%rbp)
	fldcw	-130(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	-104(%rbp), %rax
	cqto
	idivq	%rcx
	movl	%eax, %edi
	movl	%edi, -108(%rbp)
	movq	-104(%rbp), %rax
	cqto
	idivq	%rcx
	movl	%edx, %edi
	movl	%edi, -112(%rbp)
	cmpl	$0, -112(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	movl	-108(%rbp), %r9d
	subl	%edi, %r9d
	movl	%r9d, -108(%rbp)
	cmpl	$0, -112(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	imull	$1000000, %edi, %edi    # imm = 0xF4240
	addl	-112(%rbp), %edi
	movl	%edi, -112(%rbp)
	cmpl	$0, -108(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	movl	-68(%rbp), %r9d
	subl	%edi, %r9d
	movl	%r9d, -68(%rbp)
	cmpl	$0, -108(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	imull	$1000000, %edi, %edi    # imm = 0xF4240
	addl	-108(%rbp), %edi
	movl	%edi, -108(%rbp)
	cmpl	$0, -68(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	movslq	%edi, %rcx
	movq	-56(%rbp), %rdx
	subq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	cmpl	$0, -68(%rbp)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edi
	shll	$16, %edi
	addl	-68(%rbp), %edi
	movl	%edi, -68(%rbp)
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	-68(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	%edi, 8(%rcx)
	movl	-108(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	%edi, 12(%rcx)
	movl	-112(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	%edi, 16(%rcx)
	movb	$1, -1(%rbp)
.LBB70_4:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	decode_float_time, .Lfunc_end70-decode_float_time
	.cfi_endproc

	.globl	lisp_to_timespec
	.align	16, 0x90
	.type	lisp_to_timespec,@function
lisp_to_timespec:                       # @lisp_to_timespec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %dl
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB71_2
# BB#1:                                 # %cond.true
	movabsq	$-140737488355328, %rax # imm = 0xFFFF800000000000
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	(%rcx), %rax
	jle	.LBB71_3
	jmp	.LBB71_4
.LBB71_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	(%rdx), %rcx
	jg	.LBB71_4
.LBB71_3:                               # %land.lhs.true
	movabsq	$140737488355327, %rax  # imm = 0x7FFFFFFFFFFF
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, (%rcx)
	jle	.LBB71_5
.LBB71_4:                               # %if.then
	callq	invalid_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	jmp	.LBB71_6
.LBB71_5:                               # %if.end
	movl	$1000, %eax             # imm = 0x3E8
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	shlq	$16, %rdx
	movslq	8(%rcx), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	imull	$1000, 12(%rcx), %edi   # imm = 0x3E8
	movl	16(%rcx), %r8d
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-44(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	addl	%eax, %edi
	movl	%edi, -28(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
.LBB71_6:                               # %return
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	lisp_to_timespec, .Lfunc_end71-lisp_to_timespec
	.cfi_endproc

	.globl	lisp_time_argument
	.align	16, 0x90
	.type	lisp_time_argument,@function
lisp_time_argument:                     # @lisp_time_argument
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-56(%rbp), %rax
	leaq	-28(%rbp), %rdx
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	lisp_time_struct
	leaq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	lisp_to_timespec
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB72_2
# BB#1:                                 # %if.then
	callq	time_overflow
.LBB72_2:                               # %if.end
	movups	-72(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	lisp_time_argument, .Lfunc_end72-lisp_time_argument
	.cfi_endproc

	.globl	Ffloat_time
	.align	16, 0x90
	.type	Ffloat_time,@function
Ffloat_time:                            # @Ffloat_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-24(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	disassemble_lisp_time
	cmpl	$0, %eax
	je	.LBB73_2
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-16(%rbp), %r9
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	decode_time_components
	cmpl	$0, %eax
	jne	.LBB73_3
.LBB73_2:                               # %if.then
	callq	invalid_time
.LBB73_3:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Ffloat_time, .Lfunc_end73-Ffloat_time
	.cfi_endproc

	.align	16, 0x90
	.type	disassemble_lisp_time,@function
disassemble_lisp_time:                  # @disassemble_lisp_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	$2, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	$2, -72(%rbp)
	movq	$2, -80(%rbp)
	movl	$4, -84(%rbp)
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB74_16
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_12
# BB#2:                                 # %if.then.7
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_7
# BB#3:                                 # %if.then.17
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_5
# BB#4:                                 # %if.then.27
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB74_6
.LBB74_5:                               # %if.else
	movl	$3, -84(%rbp)
.LBB74_6:                               # %if.end
	jmp	.LBB74_11
.LBB74_7:                               # %if.else.30
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_9
# BB#8:                                 # %if.then.33
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$3, -84(%rbp)
	jmp	.LBB74_10
.LBB74_9:                               # %if.else.34
	movl	$2, -84(%rbp)
.LBB74_10:                              # %if.end.35
	jmp	.LBB74_11
.LBB74_11:                              # %if.end.36
	jmp	.LBB74_13
.LBB74_12:                              # %if.else.37
	movl	$2, -84(%rbp)
.LBB74_13:                              # %if.end.38
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB74_15
# BB#14:                                # %if.then.44
	movl	$0, -4(%rbp)
	jmp	.LBB74_20
.LBB74_15:                              # %if.end.45
	jmp	.LBB74_19
.LBB74_16:                              # %if.else.46
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_18
# BB#17:                                # %if.then.52
	movl	$2, -84(%rbp)
.LBB74_18:                              # %if.end.53
	jmp	.LBB74_19
.LBB74_19:                              # %if.end.54
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-84(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB74_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	disassemble_lisp_time, .Lfunc_end74-disassemble_lisp_time
	.cfi_endproc

	.align	16, 0x90
	.type	invalid_time,@function
invalid_time:                           # @invalid_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.36, %rdi
	movb	$0, %al
	callq	error
.Lfunc_end75:
	.size	invalid_time, .Lfunc_end75-invalid_time
	.cfi_endproc

	.globl	Fformat_time_string
	.align	16, 0x90
	.type	Fformat_time_string,@function
Fformat_time_string:                    # @Fformat_time_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	lisp_time_argument
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	SBYTES
	leaq	-96(%rbp), %r9
	movq	-24(%rbp), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	format_time_string
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fformat_time_string, .Lfunc_end76-Fformat_time_string
	.cfi_endproc

	.align	16, 0x90
	.type	format_time_string,@function
format_time_string:                     # @format_time_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$4144, %rsp             # imm = 0x1030
	leaq	-4048(%rbp), %rax
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -4056(%rbp)
	movq	$4000, -4064(%rbp)      # imm = 0xFA0
	movq	-8(%rbp), %rax
	movl	%eax, %r10d
	movl	%r10d, -4084(%rbp)
	movq	$16384, -4096(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%esi, %esi
	movq	%rax, -4104(%rbp)
	movb	$0, -4105(%rbp)
	movq	-40(%rbp), %rdi
	callq	tzlookup
	leaq	-16(%rbp), %rsi
	movq	%rax, -4120(%rbp)
	movq	-4120(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	emacs_localtime_rz
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB77_2
# BB#1:                                 # %if.then
	movq	-4120(%rbp), %rdi
	callq	xtzfree
	callq	time_overflow
.LBB77_2:                               # %if.end
	callq	synchronize_system_time_locale
.LBB77_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-4056(%rbp), %rax
	movb	$1, (%rax)
	movq	-4056(%rbp), %rdi
	movq	-4064(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-4120(%rbp), %r9
	movl	-4084(%rbp), %r10d
	subq	$16, %rsp
	movl	%r10d, (%rsp)
	callq	emacs_nmemftime
	addq	$16, %rsp
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -4072(%rbp)
	cmpq	-4072(%rbp), %rcx
	jae	.LBB77_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB77_3 Depth=1
	movq	-4072(%rbp), %rax
	cmpq	-4064(%rbp), %rax
	jb	.LBB77_7
.LBB77_5:                               # %lor.lhs.false
                                        #   in Loop: Header=BB77_3 Depth=1
	cmpq	$0, -4072(%rbp)
	jne	.LBB77_8
# BB#6:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB77_3 Depth=1
	movq	-4056(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB77_8
.LBB77_7:                               # %if.then.24
	jmp	.LBB77_14
.LBB77_8:                               # %if.end.25
                                        #   in Loop: Header=BB77_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	$-1, %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-4120(%rbp), %r9
	movl	-4084(%rbp), %eax
	subq	$16, %rsp
	movl	%eax, (%rsp)
	callq	emacs_nmemftime
	addq	$16, %rsp
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -4072(%rbp)
	cmpq	-4072(%rbp), %rcx
	ja	.LBB77_10
# BB#9:                                 # %if.then.29
	movq	-4120(%rbp), %rdi
	callq	xtzfree
	callq	string_overflow
.LBB77_10:                              # %if.end.30
                                        #   in Loop: Header=BB77_3 Depth=1
	movq	-4072(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4064(%rbp)
	movq	-4064(%rbp), %rax
	cmpq	-4096(%rbp), %rax
	jg	.LBB77_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB77_3 Depth=1
	movq	-4064(%rbp), %rax
	movq	-4096(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -4096(%rbp)
	movq	-4064(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -4128(%rbp)       # 8-byte Spill
	jmp	.LBB77_13
.LBB77_12:                              # %cond.false
                                        #   in Loop: Header=BB77_3 Depth=1
	movb	$1, -4105(%rbp)
	movq	-4064(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -4128(%rbp)       # 8-byte Spill
.LBB77_13:                              # %cond.end
                                        #   in Loop: Header=BB77_3 Depth=1
	movq	-4128(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4056(%rbp)
	jmp	.LBB77_3
.LBB77_14:                              # %while.end
	movq	-4120(%rbp), %rdi
	callq	xtzfree
	movq	-4056(%rbp), %rdi
	movq	-4072(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -4080(%rbp)
# BB#15:                                # %do.body
	testb	$1, -4105(%rbp)
	je	.LBB77_17
# BB#16:                                # %if.then.36
	xorl	%edi, %edi
	movb	$0, -4105(%rbp)
	movq	-4104(%rbp), %rax
	movq	%rax, -4136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -4144(%rbp)       # 8-byte Spill
.LBB77_17:                              # %if.end.39
	jmp	.LBB77_18
.LBB77_18:                              # %do.end
	xorl	%edx, %edx
	movq	-4080(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	format_time_string, .Lfunc_end77-format_time_string
	.cfi_endproc

	.globl	Fdecode_time
	.align	16, 0x90
	.type	Fdecode_time,@function
Fdecode_time:                           # @Fdecode_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	lisp_seconds_argument
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	tzlookup
	leaq	-24(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	emacs_localtime_rz
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rdi
	callq	xtzfree
	cmpq	$0, -152(%rbp)
	je	.LBB78_3
# BB#1:                                 # %land.lhs.true
	movabsq	$-2305843009213695852, %rax # imm = 0xDFFFFFFFFFFFF894
	movslq	-60(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB78_3
# BB#2:                                 # %land.lhs.true.4
	movabsq	$2305843009213692051, %rax # imm = 0x1FFFFFFFFFFFF893
	movslq	-60(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB78_4
.LBB78_3:                               # %if.then
	callq	time_overflow
.LBB78_4:                               # %if.end
	leaq	-232(%rbp), %rax
	movq	$1900, -160(%rbp)       # imm = 0x76C
	movslq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -232(%rbp)
	addq	$8, %rax
	movslq	-76(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -224(%rbp)
	addq	$8, %rax
	movslq	-72(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -216(%rbp)
	addq	$8, %rax
	movslq	-68(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -208(%rbp)
	addq	$8, %rax
	movl	-64(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -200(%rbp)
	addq	$8, %rax
	movslq	-60(%rbp), %rcx
	addq	-160(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -192(%rbp)
	addq	$8, %rax
	movslq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -184(%rbp)
	addq	$8, %rax
	cmpl	$0, -48(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	je	.LBB78_6
# BB#5:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB78_7
.LBB78_6:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB78_7:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	leaq	-80(%rbp), %rdi
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	callq	tm_gmtoff
	movl	$9, %edx
	movl	%edx, %edi
	leaq	-232(%rbp), %rsi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 8(%rcx)
	callq	Flist
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fdecode_time, .Lfunc_end78-Fdecode_time
	.cfi_endproc

	.align	16, 0x90
	.type	lisp_seconds_argument,@function
lisp_seconds_argument:                  # @lisp_seconds_argument
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	disassemble_lisp_time
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB79_8
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	%eax, %ecx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdx
	callq	decode_time_components
	xorl	%r10d, %r10d
	movl	%eax, -68(%rbp)
	cmpl	-68(%rbp), %r10d
	jge	.LBB79_7
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB79_4
	jmp	.LBB79_3
.LBB79_3:                               # %cond.true
	movabsq	$-140737488355328, %rax # imm = 0xFFFF800000000000
	cmpq	-64(%rbp), %rax
	jle	.LBB79_5
	jmp	.LBB79_6
.LBB79_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jg	.LBB79_6
.LBB79_5:                               # %land.lhs.true.6
	movabsq	$140737488355327, %rax  # imm = 0x7FFFFFFFFFFF
	cmpq	%rax, -64(%rbp)
	jle	.LBB79_7
.LBB79_6:                               # %if.then.9
	movl	$-1, -68(%rbp)
.LBB79_7:                               # %if.end
	jmp	.LBB79_8
.LBB79_8:                               # %if.end.10
	movl	-68(%rbp), %edi
	callq	check_time_validity
	movq	-64(%rbp), %rax
	shlq	$16, %rax
	movslq	-56(%rbp), %rcx
	addq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	lisp_seconds_argument, .Lfunc_end79-lisp_seconds_argument
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_localtime_rz,@function
emacs_localtime_rz:                     # @emacs_localtime_rz
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	localtime_rz
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB80_3
# BB#1:                                 # %land.lhs.true
	callq	__errno_location
	cmpl	$12, (%rax)
	jne	.LBB80_3
# BB#2:                                 # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB80_3:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	emacs_localtime_rz, .Lfunc_end80-emacs_localtime_rz
	.cfi_endproc

	.align	16, 0x90
	.type	xtzfree,@function
xtzfree:                                # @xtzfree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	local_tz, %rdi
	je	.LBB81_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tzfree
.LBB81_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	xtzfree, .Lfunc_end81-xtzfree
	.cfi_endproc

	.align	16, 0x90
	.type	tm_gmtoff,@function
tm_gmtoff:                              # @tm_gmtoff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end82:
	.size	tm_gmtoff, .Lfunc_end82-tm_gmtoff
	.cfi_endproc

	.globl	Fencode_time
	.align	16, 0x90
	.type	Fencode_time,@function
Fencode_time:                           # @Fencode_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$6, -8(%rbp)
	jle	.LBB83_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB83_3
.LBB83_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB83_3:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	xorl	%esi, %esi
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	check_tm_member
	xorl	%esi, %esi
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	check_tm_member
	xorl	%esi, %esi
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	check_tm_member
	xorl	%esi, %esi
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	check_tm_member
	movl	$1, %esi
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	check_tm_member
	movl	$1900, %esi             # imm = 0x76C
	movl	%eax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	check_tm_member
	movl	%eax, -60(%rbp)
	movl	$-1, -48(%rbp)
	movq	-88(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB83_5
# BB#4:                                 # %if.then
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB83_5:                               # %if.end
	xorl	%esi, %esi
	movq	-88(%rbp), %rdi
	callq	tzlookup
	leaq	-80(%rbp), %rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	emacs_mktime_z
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rdi
	callq	xtzfree
	cmpq	$-1, -24(%rbp)
	jne	.LBB83_7
# BB#6:                                 # %if.then.20
	callq	time_overflow
.LBB83_7:                               # %if.end.21
	movq	-24(%rbp), %rdi
	callq	hi_time
	movq	-24(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	lo_time
	movslq	%eax, %rsi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	list2i
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fencode_time, .Lfunc_end83-Fencode_time
	.cfi_endproc

	.align	16, 0x90
	.type	check_tm_member,@function
check_tm_member:                        # @check_tm_member
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB84_2
# BB#1:                                 # %cond.true
	jmp	.LBB84_3
.LBB84_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB84_3:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	addl	$2147483648, %ecx       # imm = 0x80000000
	movslq	%ecx, %rax
	cmpq	-24(%rbp), %rax
	jg	.LBB84_5
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB84_6
.LBB84_5:                               # %if.then
	callq	time_overflow
.LBB84_6:                               # %if.end
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	check_tm_member, .Lfunc_end84-check_tm_member
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_mktime_z,@function
emacs_mktime_z:                         # @emacs_mktime_z
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	mktime_z
	movq	%rax, -24(%rbp)
	cmpq	$-1, -24(%rbp)
	jne	.LBB85_3
# BB#1:                                 # %land.lhs.true
	callq	__errno_location
	cmpl	$12, (%rax)
	jne	.LBB85_3
# BB#2:                                 # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB85_3:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	emacs_mktime_z, .Lfunc_end85-emacs_mktime_z
	.cfi_endproc

	.globl	Fcurrent_time_string
	.align	16, 0x90
	.type	Fcurrent_time_string,@function
Fcurrent_time_string:                   # @Fcurrent_time_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	lisp_seconds_argument
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	tzlookup
	leaq	-24(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	emacs_localtime_rz
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	callq	xtzfree
	cmpq	$0, -96(%rbp)
	jne	.LBB86_2
# BB#1:                                 # %if.then
	callq	time_overflow
.LBB86_2:                               # %if.end
	movabsq	$.L.str.8, %rsi
	movabsq	$Fcurrent_time_string.mon_name, %rax
	movabsq	$Fcurrent_time_string.wday_name, %rcx
	leaq	-144(%rbp), %rdi
	movq	$1900, -104(%rbp)       # imm = 0x76C
	movslq	-64(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movslq	-72(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-84(%rbp), %r10d
	movl	-88(%rbp), %r11d
	movslq	-68(%rbp), %rdx
	addq	-104(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	sprintf
	leaq	-144(%rbp), %rdi
	movl	%eax, -148(%rbp)
	movslq	-148(%rbp), %rsi
	callq	make_unibyte_string
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fcurrent_time_string, .Lfunc_end86-Fcurrent_time_string
	.cfi_endproc

	.globl	Fcurrent_time_zone
	.align	16, 0x90
	.type	Fcurrent_time_zone,@function
Fcurrent_time_zone:                     # @Fcurrent_time_zone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rdi
	callq	lisp_seconds_argument
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	make_timespec
	movabsq	$.L.str.9, %rdi
	movl	$2, %ecx
	movl	%ecx, %esi
	leaq	-88(%rbp), %r9
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %r8
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	format_time_string
	leaq	-88(%rbp), %rdi
	movq	%rax, -160(%rbp)
	callq	tm_gmtoff
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB87_5
# BB#1:                                 # %if.then
	movl	$60, %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jge	.LBB87_3
# BB#2:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-192(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB87_4
.LBB87_3:                               # %cond.false
	movq	-192(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB87_4:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.10, %rsi
	movl	$43, %ecx
	movl	$45, %edx
	leaq	-240(%rbp), %rdi
	movl	$60, %r8d
	movl	%r8d, %r9d
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movl	%edx, -252(%rbp)        # 4-byte Spill
	cqto
	idivq	%r9
	movq	%rax, -208(%rbp)
	movq	-200(%rbp), %rax
	cqto
	idivq	%r9
	movl	%edx, %r8d
	movl	%r8d, -212(%rbp)
	cmpq	$0, -184(%rbp)
	movl	-252(%rbp), %r8d        # 4-byte Reload
	cmovll	%r8d, %ecx
	movq	-208(%rbp), %rdx
	movl	-212(%rbp), %r8d
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	make_formatted_string
	movq	%rax, -160(%rbp)
.LBB87_5:                               # %if.end
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	list2
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Fcurrent_time_zone, .Lfunc_end87-Fcurrent_time_zone
	.cfi_endproc

	.globl	Fset_time_zone_rule
	.align	16, 0x90
	.type	Fset_time_zone_rule,@function
Fset_time_zone_rule:                    # @Fset_time_zone_rule
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB88_2
# BB#1:                                 # %cond.true
	movl	$1011, %edi             # imm = 0x3F3
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB88_3
.LBB88_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB88_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	$1, %esi
	movq	%rax, %rdi
	callq	tzlookup
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	Fset_time_zone_rule, .Lfunc_end88-Fset_time_zone_rule
	.cfi_endproc

	.globl	emacs_getenv_TZ
	.align	16, 0x90
	.type	emacs_getenv_TZ,@function
emacs_getenv_TZ:                        # @emacs_getenv_TZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	movq	tzvalbuf, %rax
	movsbl	(%rax), %ecx
	cmpl	$84, %ecx
	jne	.LBB89_2
# BB#1:                                 # %cond.true
	movq	tzvalbuf, %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB89_3
.LBB89_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB89_3
.LBB89_3:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end89:
	.size	emacs_getenv_TZ, .Lfunc_end89-emacs_getenv_TZ
	.cfi_endproc

	.globl	emacs_setenv_TZ
	.align	16, 0x90
	.type	emacs_setenv_TZ,@function
emacs_setenv_TZ:                        # @emacs_setenv_TZ
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp273:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB90_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
.LBB90_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB90_3
.LBB90_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	tzvalbuf, %rax
	movq	%rax, -24(%rbp)
	movq	emacs_setenv_TZ.tzvalbufsize, %rax
	movq	-16(%rbp), %rcx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	andb	$1, %dl
	movb	%dl, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB90_5
# BB#4:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$emacs_setenv_TZ.tzvalbufsize, %rsi
	movq	$-1, %rcx
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-16(%rbp), %rdx
	addq	$3, %rdx
	subq	emacs_setenv_TZ.tzvalbufsize, %rdx
	addq	$1, %rdx
	callq	xpalloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, tzvalbuf
	movq	-24(%rbp), %rax
	movb	$90, 1(%rax)
	movq	-24(%rbp), %rax
	movb	$61, 2(%rax)
.LBB90_5:                               # %if.end
	cmpq	$0, -8(%rbp)
	je	.LBB90_7
# BB#6:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movb	$84, (%rax)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB90_8
.LBB90_7:                               # %if.else
	movq	-24(%rbp), %rax
	movb	$116, (%rax)
	movq	-24(%rbp), %rax
	movb	$0, 3(%rax)
.LBB90_8:                               # %if.end.12
	testb	$1, -25(%rbp)
	je	.LBB90_10
# BB#9:                                 # %if.then.14
	movq	-24(%rbp), %rdi
	callq	xputenv
.LBB90_10:                              # %if.end.15
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	emacs_setenv_TZ, .Lfunc_end90-emacs_setenv_TZ
	.cfi_endproc

	.globl	insert1
	.align	16, 0x90
	.type	insert1,@function
insert1:                                # @insert1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-8(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	Finsert
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	insert1, .Lfunc_end91-insert1
	.cfi_endproc

	.globl	Finsert
	.align	16, 0x90
	.type	Finsert,@function
Finsert:                                # @Finsert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp277:
	.cfi_def_cfa_offset 16
.Ltmp278:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp279:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$insert, %rax
	movabsq	$insert_from_string, %rcx
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	general_insert_function
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	Finsert, .Lfunc_end92-Finsert
	.cfi_endproc

	.align	16, 0x90
	.type	general_insert_function,@function
general_insert_function:                # @general_insert_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB93_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB93_32
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB93_3
	jmp	.LBB93_26
.LBB93_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB93_26
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB93_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB93_21
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB93_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB93_6
	jmp	.LBB93_7
.LBB93_6:                               # %cond.true
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB93_8
	jmp	.LBB93_9
.LBB93_7:                               # %cond.false
                                        #   in Loop: Header=BB93_1 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB93_9
.LBB93_8:                               # %cond.true.13
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	$1, %eax
	movl	-60(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB93_20
.LBB93_9:                               # %cond.false.16
                                        #   in Loop: Header=BB93_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB93_10
	jmp	.LBB93_11
.LBB93_10:                              # %cond.true.17
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB93_12
	jmp	.LBB93_13
.LBB93_11:                              # %cond.false.21
                                        #   in Loop: Header=BB93_1 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB93_13
.LBB93_12:                              # %cond.true.26
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	$2, %eax
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -64(%rbp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB93_19
.LBB93_13:                              # %cond.false.33
                                        #   in Loop: Header=BB93_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB93_14
	jmp	.LBB93_15
.LBB93_14:                              # %cond.true.34
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB93_16
	jmp	.LBB93_17
.LBB93_15:                              # %cond.false.38
                                        #   in Loop: Header=BB93_1 Depth=1
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB93_17
.LBB93_16:                              # %cond.true.43
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	$3, %eax
	movl	-60(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -65(%rbp)
	movl	-60(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -64(%rbp)
	movl	-60(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -63(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB93_18
.LBB93_17:                              # %cond.false.57
                                        #   in Loop: Header=BB93_1 Depth=1
	leaq	-65(%rbp), %rsi
	movl	-60(%rbp), %edi
	callq	char_string
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB93_18:                              # %cond.end
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB93_19:                              # %cond.end.59
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB93_20:                              # %cond.end.61
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
	jmp	.LBB93_25
.LBB93_21:                              # %if.else
                                        #   in Loop: Header=BB93_1 Depth=1
	cmpl	$4194175, -60(%rbp)     # imm = 0x3FFF7F
	jle	.LBB93_23
# BB#22:                                # %cond.true.65
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-60(%rbp), %eax
	subl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB93_24
.LBB93_23:                              # %cond.false.66
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-60(%rbp), %eax
	andl	$255, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB93_24:                              # %cond.end.68
                                        #   in Loop: Header=BB93_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -65(%rbp)
	movl	$1, -72(%rbp)
.LBB93_25:                              # %if.end
                                        #   in Loop: Header=BB93_1 Depth=1
	leaq	-65(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-72(%rbp), %rsi
	callq	*%rax
	jmp	.LBB93_30
.LBB93_26:                              # %if.else.74
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB93_27
	jmp	.LBB93_28
.LBB93_27:                              # %if.then.76
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	SBYTES
	xorl	%edx, %edx
	movl	%edx, %ecx
	movb	-17(%rbp), %sil
	andb	$1, %sil
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movb	%sil, -121(%rbp)        # 1-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	-121(%rbp), %r9b        # 1-byte Reload
	movzbl	%r9b, %r9d
	movq	-112(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	jmp	.LBB93_29
.LBB93_28:                              # %if.else.79
	movl	$255, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB93_29:                              # %if.end.81
                                        #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_30
.LBB93_30:                              # %if.end.82
                                        #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_31
.LBB93_31:                              # %for.inc
                                        #   in Loop: Header=BB93_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB93_1
.LBB93_32:                              # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	general_insert_function, .Lfunc_end93-general_insert_function
	.cfi_endproc

	.globl	Finsert_and_inherit
	.align	16, 0x90
	.type	Finsert_and_inherit,@function
Finsert_and_inherit:                    # @Finsert_and_inherit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp285:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$insert_and_inherit, %rax
	movabsq	$insert_from_string, %rcx
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	general_insert_function
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	Finsert_and_inherit, .Lfunc_end94-Finsert_and_inherit
	.cfi_endproc

	.globl	Finsert_before_markers
	.align	16, 0x90
	.type	Finsert_before_markers,@function
Finsert_before_markers:                 # @Finsert_before_markers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$insert_before_markers, %rax
	movabsq	$insert_from_string_before_markers, %rcx
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	general_insert_function
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	Finsert_before_markers, .Lfunc_end95-Finsert_before_markers
	.cfi_endproc

	.globl	Finsert_and_inherit_before_markers
	.align	16, 0x90
	.type	Finsert_and_inherit_before_markers,@function
Finsert_and_inherit_before_markers:     # @Finsert_and_inherit_before_markers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$insert_before_markers_and_inherit, %rax
	movabsq	$insert_from_string_before_markers, %rcx
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	general_insert_function
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	Finsert_and_inherit_before_markers, .Lfunc_end96-Finsert_and_inherit_before_markers
	.cfi_endproc

	.globl	Finsert_char
	.align	16, 0x90
	.type	Finsert_char,@function
Finsert_char:                           # @Finsert_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	subq	$4176, %rsp             # imm = 0x1050
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB97_1
	jmp	.LBB97_3
.LBB97_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB97_3
# BB#2:                                 # %cond.true
	jmp	.LBB97_4
.LBB97_3:                               # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -4072(%rbp)       # 8-byte Spill
.LBB97_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -4080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4080(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB97_6
# BB#5:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB97_6:                               # %if.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB97_8
# BB#7:                                 # %cond.true.8
	jmp	.LBB97_9
.LBB97_8:                               # %cond.false.9
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -4088(%rbp)       # 8-byte Spill
.LBB97_9:                               # %cond.end.11
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -4096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4096(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB97_26
# BB#10:                                # %if.then.17
	movb	$1, %al
	testb	$1, %al
	jne	.LBB97_11
	jmp	.LBB97_12
.LBB97_11:                              # %cond.true.18
	movl	-52(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB97_13
	jmp	.LBB97_14
.LBB97_12:                              # %cond.false.21
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB97_14
.LBB97_13:                              # %cond.true.26
	movl	$1, %eax
	movl	-52(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -61(%rbp)
	movl	%eax, -4100(%rbp)       # 4-byte Spill
	jmp	.LBB97_25
.LBB97_14:                              # %cond.false.28
	movb	$1, %al
	testb	$1, %al
	jne	.LBB97_15
	jmp	.LBB97_16
.LBB97_15:                              # %cond.true.29
	movl	-52(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB97_17
	jmp	.LBB97_18
.LBB97_16:                              # %cond.false.33
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB97_18
.LBB97_17:                              # %cond.true.38
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -61(%rbp)
	movl	-52(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -60(%rbp)
	movl	%eax, -4104(%rbp)       # 4-byte Spill
	jmp	.LBB97_24
.LBB97_18:                              # %cond.false.46
	movb	$1, %al
	testb	$1, %al
	jne	.LBB97_19
	jmp	.LBB97_20
.LBB97_19:                              # %cond.true.47
	movl	-52(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB97_21
	jmp	.LBB97_22
.LBB97_20:                              # %cond.false.51
	movslq	-52(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB97_22
.LBB97_21:                              # %cond.true.56
	movl	$3, %eax
	movl	-52(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -61(%rbp)
	movl	-52(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -60(%rbp)
	movl	-52(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -59(%rbp)
	movl	%eax, -4108(%rbp)       # 4-byte Spill
	jmp	.LBB97_23
.LBB97_22:                              # %cond.false.70
	leaq	-61(%rbp), %rsi
	movl	-52(%rbp), %edi
	callq	char_string
	movl	%eax, -4108(%rbp)       # 4-byte Spill
.LBB97_23:                              # %cond.end.72
	movl	-4108(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4104(%rbp)       # 4-byte Spill
.LBB97_24:                              # %cond.end.73
	movl	-4104(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4100(%rbp)       # 4-byte Spill
.LBB97_25:                              # %cond.end.75
	movl	-4100(%rbp), %eax       # 4-byte Reload
	movl	%eax, -56(%rbp)
	jmp	.LBB97_27
.LBB97_26:                              # %if.else
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -61(%rbp)
	movl	$1, -56(%rbp)
.LBB97_27:                              # %if.end.79
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jg	.LBB97_29
# BB#28:                                # %if.then.83
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB97_56
.LBB97_29:                              # %if.end.85
	movabsq	$2305843009213693950, %rax # imm = 0x1FFFFFFFFFFFFFFE
	movslq	-56(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB97_31
# BB#30:                                # %if.then.90
	callq	buffer_overflow
.LBB97_31:                              # %if.end.91
	movl	$4000, %eax             # imm = 0xFA0
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movslq	-56(%rbp), %rsi
	imulq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movslq	-56(%rbp), %rsi
	movq	%rcx, %rax
	xorl	%edi, %edi
	movq	%rdx, -4120(%rbp)       # 8-byte Spill
	movl	%edi, %edx
	divq	%rsi
	subq	%rdx, %rcx
	movq	-4120(%rbp), %rdx       # 8-byte Reload
	cmpq	%rcx, %rdx
	jae	.LBB97_33
# BB#32:                                # %cond.true.97
	movq	-48(%rbp), %rax
	movq	%rax, -4128(%rbp)       # 8-byte Spill
	jmp	.LBB97_34
.LBB97_33:                              # %cond.false.98
	movl	$4000, %eax             # imm = 0xFA0
	movl	%eax, %ecx
	movslq	-56(%rbp), %rdx
	movq	%rcx, %rax
	xorl	%esi, %esi
	movq	%rdx, -4136(%rbp)       # 8-byte Spill
	movl	%esi, %edx
	movq	-4136(%rbp), %rdi       # 8-byte Reload
	divq	%rdi
	subq	%rdx, %rcx
	movq	%rcx, -4128(%rbp)       # 8-byte Spill
.LBB97_34:                              # %cond.end.102
	movq	-4128(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB97_35:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB97_38
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB97_35 Depth=1
	movl	-36(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	movslq	%edx, %rcx
	movb	-61(%rbp,%rcx), %sil
	movslq	-36(%rbp), %rcx
	movb	%sil, -4064(%rbp,%rcx)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB97_35 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB97_35
.LBB97_38:                              # %for.end
	jmp	.LBB97_39
.LBB97_39:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movslq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB97_52
# BB#40:                                # %while.body
                                        #   in Loop: Header=BB97_39 Depth=1
	jmp	.LBB97_41
.LBB97_41:                              # %do.body
                                        #   in Loop: Header=BB97_39 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -4144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB97_44
# BB#42:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB97_39 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -4152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB97_44
# BB#43:                                # %if.then.121
                                        #   in Loop: Header=BB97_39 Depth=1
	callq	process_quit_flag
	jmp	.LBB97_47
.LBB97_44:                              # %if.else.122
                                        #   in Loop: Header=BB97_39 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB97_46
# BB#45:                                # %if.then.123
                                        #   in Loop: Header=BB97_39 Depth=1
	callq	process_pending_signals
.LBB97_46:                              # %if.end.124
                                        #   in Loop: Header=BB97_39 Depth=1
	jmp	.LBB97_47
.LBB97_47:                              # %if.end.125
                                        #   in Loop: Header=BB97_39 Depth=1
	jmp	.LBB97_48
.LBB97_48:                              # %do.end
                                        #   in Loop: Header=BB97_39 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -4160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB97_50
# BB#49:                                # %if.then.129
                                        #   in Loop: Header=BB97_39 Depth=1
	leaq	-4064(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	insert_and_inherit
	jmp	.LBB97_51
.LBB97_50:                              # %if.else.132
                                        #   in Loop: Header=BB97_39 Depth=1
	leaq	-4064(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	callq	insert
.LBB97_51:                              # %if.end.135
                                        #   in Loop: Header=BB97_39 Depth=1
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB97_39
.LBB97_52:                              # %while.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -4168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB97_54
# BB#53:                                # %if.then.141
	leaq	-4064(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	insert_and_inherit
	jmp	.LBB97_55
.LBB97_54:                              # %if.else.143
	leaq	-4064(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	insert
.LBB97_55:                              # %if.end.145
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB97_56:                              # %return
	movq	-8(%rbp), %rax
	addq	$4176, %rsp             # imm = 0x1050
	popq	%rbp
	retq
.Lfunc_end97:
	.size	Finsert_char, .Lfunc_end97-Finsert_char
	.cfi_endproc

	.globl	Finsert_byte
	.align	16, 0x90
	.type	Finsert_byte,@function
Finsert_byte:                           # @Finsert_byte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp295:
	.cfi_def_cfa_offset 16
.Ltmp296:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp297:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB98_2
# BB#1:                                 # %cond.true
	jmp	.LBB98_3
.LBB98_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB98_3:                               # %cond.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB98_5
# BB#4:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jle	.LBB98_6
.LBB98_5:                               # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	args_out_of_range_3
.LBB98_6:                               # %if.end
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	cmpq	$128, %rax
	jl	.LBB98_9
# BB#7:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB98_9
# BB#8:                                 # %if.then.14
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	addq	$4194048, %rax          # imm = 0x3FFF00
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
.LBB98_9:                               # %if.end.17
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Finsert_char
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	Finsert_byte, .Lfunc_end98-Finsert_byte
	.cfi_endproc

	.globl	make_buffer_string_both
	.align	16, 0x90
	.type	make_buffer_string_both,@function
make_buffer_string_both:                # @make_buffer_string_both
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp298:
	.cfi_def_cfa_offset 16
.Ltmp299:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp300:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	jge	.LBB99_3
# BB#1:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB99_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB99_4
.LBB99_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	$-1, -88(%rbp)
	movq	$-1, -96(%rbp)
.LBB99_4:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB99_6
# BB#5:                                 # %if.then.14
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -48(%rbp)
	jmp	.LBB99_7
.LBB99_6:                               # %if.else.18
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_uninit_string
	movq	%rax, -48(%rbp)
.LBB99_7:                               # %if.end.21
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rdi
	callq	SDATA
	movq	-72(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jl	.LBB99_9
# BB#8:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB99_10
.LBB99_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB99_10
.LBB99_10:                              # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	cmpq	$-1, -88(%rbp)
	je	.LBB99_12
# BB#11:                                # %if.then.33
	movq	-48(%rbp), %rdi
	callq	SDATA
	addq	-104(%rbp), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	(%rdi), %rdi
	addq	-88(%rbp), %rdi
	movq	-96(%rbp), %rcx
	subq	-88(%rbp), %rcx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	callq	memcpy
.LBB99_12:                              # %if.end.40
	testb	$1, -33(%rbp)
	je	.LBB99_17
# BB#13:                                # %if.then.41
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	update_buffer_properties
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	Fnext_property_change
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ftext_properties_at
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB99_15
# BB#14:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB99_16
.LBB99_15:                              # %if.then.54
	movq	-48(%rbp), %rdi
	movq	current_buffer, %rsi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	copy_intervals_to_string
.LBB99_16:                              # %if.end.56
	jmp	.LBB99_17
.LBB99_17:                              # %if.end.57
	movq	-48(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	make_buffer_string_both, .Lfunc_end99-make_buffer_string_both
	.cfi_endproc

	.align	16, 0x90
	.type	update_buffer_properties,@function
update_buffer_properties:               # @update_buffer_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
.Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp303:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	globals+136, %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB100_6
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	globals+128, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB100_5
# BB#2:                                 # %if.then.3
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	globals+128, %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	Ftext_property_any
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB100_4
# BB#3:                                 # %if.then.11
	jmp	.LBB100_6
.LBB100_4:                              # %if.end
	jmp	.LBB100_5
.LBB100_5:                              # %if.end.12
	movl	$220, %edi
	callq	builtin_lisp_symbol
	movl	$3, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-48(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	callq	Frun_hook_with_args
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB100_6:                              # %if.end.20
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	update_buffer_properties, .Lfunc_end100-update_buffer_properties
	.cfi_endproc

	.globl	Fbuffer_substring
	.align	16, 0x90
	.type	Fbuffer_substring,@function
Fbuffer_substring:                      # @Fbuffer_substring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
.Ltmp305:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp306:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	validate_region
	movl	$1, %edx
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_buffer_string
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	Fbuffer_substring, .Lfunc_end101-Fbuffer_substring
	.cfi_endproc

	.globl	Fbuffer_substring_no_properties
	.align	16, 0x90
	.type	Fbuffer_substring_no_properties,@function
Fbuffer_substring_no_properties:        # @Fbuffer_substring_no_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp309:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	validate_region
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_buffer_string
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	Fbuffer_substring_no_properties, .Lfunc_end102-Fbuffer_substring_no_properties
	.cfi_endproc

	.globl	Fbuffer_string
	.align	16, 0x90
	.type	Fbuffer_string,@function
Fbuffer_string:                         # @Fbuffer_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
.Ltmp311:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp312:
	.cfi_def_cfa_register %rbp
	movl	$1, %r8d
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	movq	current_buffer, %rax
	movq	760(%rax), %rsi
	movq	current_buffer, %rax
	movq	768(%rax), %rdx
	movq	current_buffer, %rax
	movq	776(%rax), %rcx
	callq	make_buffer_string_both
	popq	%rbp
	retq
.Lfunc_end103:
	.size	Fbuffer_string, .Lfunc_end103-Fbuffer_string
	.cfi_endproc

	.globl	Finsert_buffer_substring
	.align	16, 0x90
	.type	Finsert_buffer_substring,@function
Finsert_buffer_substring:               # @Finsert_buffer_substring
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB104_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	nsberror
.LBB104_2:                              # %if.end
	movq	-72(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB104_4:                              # %if.end.6
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_12
# BB#5:                                 # %if.then.9
	movq	-56(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB104_7
# BB#6:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB104_11
.LBB104_7:                              # %cond.false
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_9
# BB#8:                                 # %cond.true.13
	movq	-56(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB104_10
.LBB104_9:                              # %cond.false.15
	movq	-56(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB104_10:                             # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB104_11:                             # %cond.end.18
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB104_22
.LBB104_12:                             # %if.else
	jmp	.LBB104_13
.LBB104_13:                             # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB104_16
# BB#14:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB104_16
# BB#15:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB104_20
.LBB104_16:                             # %if.else.28
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB104_18
# BB#17:                                # %cond.true.34
	jmp	.LBB104_19
.LBB104_18:                             # %cond.false.35
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB104_19:                             # %cond.end.37
	jmp	.LBB104_20
.LBB104_20:                             # %if.end.38
	jmp	.LBB104_21
.LBB104_21:                             # %do.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
.LBB104_22:                             # %if.end.39
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_30
# BB#23:                                # %if.then.43
	movq	-56(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB104_25
# BB#24:                                # %cond.true.46
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB104_29
.LBB104_25:                             # %cond.false.47
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_27
# BB#26:                                # %cond.true.51
	movq	-56(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB104_28
.LBB104_27:                             # %cond.false.53
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB104_28:                             # %cond.end.56
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB104_29:                             # %cond.end.58
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB104_40
.LBB104_30:                             # %if.else.60
	jmp	.LBB104_31
.LBB104_31:                             # %do.body.61
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB104_34
# BB#32:                                # %land.lhs.true.66
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB104_34
# BB#33:                                # %if.then.70
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB104_38
.LBB104_34:                             # %if.else.73
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB104_36
# BB#35:                                # %cond.true.79
	jmp	.LBB104_37
.LBB104_36:                             # %cond.false.80
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB104_37:                             # %cond.end.82
	jmp	.LBB104_38
.LBB104_38:                             # %if.end.83
	jmp	.LBB104_39
.LBB104_39:                             # %do.end.84
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
.LBB104_40:                             # %if.end.86
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.LBB104_42
# BB#41:                                # %if.then.89
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB104_42:                             # %if.end.90
	movq	-56(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB104_44
# BB#43:                                # %cond.true.93
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB104_48
.LBB104_44:                             # %cond.false.95
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_46
# BB#45:                                # %cond.true.100
	movq	-56(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB104_47
.LBB104_46:                             # %cond.false.102
	movq	-56(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB104_47:                             # %cond.end.105
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB104_48:                             # %cond.end.107
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	-32(%rbp), %rax
	jg	.LBB104_56
# BB#49:                                # %land.lhs.true.111
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB104_51
# BB#50:                                # %cond.true.114
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB104_55
.LBB104_51:                             # %cond.false.116
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB104_53
# BB#52:                                # %cond.true.121
	movq	-56(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB104_54
.LBB104_53:                             # %cond.false.123
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB104_54:                             # %cond.end.126
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB104_55:                             # %cond.end.128
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB104_57
.LBB104_56:                             # %if.then.132
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	args_out_of_range
.LBB104_57:                             # %if.end.133
	movq	current_buffer, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	set_buffer_internal_1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	update_buffer_properties
	movq	-64(%rbp), %rdi
	callq	set_buffer_internal_1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rdx
	callq	insert_from_buffer
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	Finsert_buffer_substring, .Lfunc_end104-Finsert_buffer_substring
	.cfi_endproc

	.globl	Fcompare_buffer_substrings
	.align	16, 0x90
	.type	Fcompare_buffer_substrings,@function
Fcompare_buffer_substrings:             # @Fcompare_buffer_substrings
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
	subq	$704, %rsp              # imm = 0x2C0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	current_buffer, %rcx
	movq	144(%rcx), %rcx
	movl	%eax, %edi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB105_2
# BB#1:                                 # %cond.true
	movq	current_buffer, %rax
	movq	200(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB105_3
.LBB105_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB105_3:                              # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_5
# BB#4:                                 # %if.then
	movq	current_buffer, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB105_10
.LBB105_5:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_7
# BB#6:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	callq	nsberror
.LBB105_7:                              # %if.end
	movq	-168(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_9
# BB#8:                                 # %if.then.11
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB105_9:                              # %if.end.12
	jmp	.LBB105_10
.LBB105_10:                             # %if.end.13
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_18
# BB#11:                                # %if.then.16
	movq	-104(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB105_13
# BB#12:                                # %cond.true.18
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB105_17
.LBB105_13:                             # %cond.false.19
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_15
# BB#14:                                # %cond.true.22
	movq	-104(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB105_16
.LBB105_15:                             # %cond.false.24
	movq	-104(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB105_16:                             # %cond.end.27
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB105_17:                             # %cond.end.29
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB105_28
.LBB105_18:                             # %if.else.31
	jmp	.LBB105_19
.LBB105_19:                             # %do.body
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB105_22
# BB#20:                                # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_22
# BB#21:                                # %if.then.37
	movq	-24(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
	jmp	.LBB105_26
.LBB105_22:                             # %if.else.40
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB105_24
# BB#23:                                # %cond.true.46
	jmp	.LBB105_25
.LBB105_24:                             # %cond.false.47
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB105_25:                             # %cond.end.49
	jmp	.LBB105_26
.LBB105_26:                             # %if.end.50
	jmp	.LBB105_27
.LBB105_27:                             # %do.end
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB105_28:                             # %if.end.51
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_36
# BB#29:                                # %if.then.55
	movq	-104(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB105_31
# BB#30:                                # %cond.true.58
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB105_35
.LBB105_31:                             # %cond.false.59
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_33
# BB#32:                                # %cond.true.63
	movq	-104(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB105_34
.LBB105_33:                             # %cond.false.65
	movq	-104(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB105_34:                             # %cond.end.68
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB105_35:                             # %cond.end.70
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB105_46
.LBB105_36:                             # %if.else.72
	jmp	.LBB105_37
.LBB105_37:                             # %do.body.73
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB105_40
# BB#38:                                # %land.lhs.true.78
	movq	-32(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_40
# BB#39:                                # %if.then.82
	movq	-32(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -32(%rbp)
	jmp	.LBB105_44
.LBB105_40:                             # %if.else.85
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB105_42
# BB#41:                                # %cond.true.91
	jmp	.LBB105_43
.LBB105_42:                             # %cond.false.92
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB105_43:                             # %cond.end.94
	jmp	.LBB105_44
.LBB105_44:                             # %if.end.95
	jmp	.LBB105_45
.LBB105_45:                             # %do.end.96
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
.LBB105_46:                             # %if.end.98
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB105_48
# BB#47:                                # %if.then.101
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB105_48:                             # %if.end.102
	movq	-104(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB105_50
# BB#49:                                # %cond.true.105
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB105_54
.LBB105_50:                             # %cond.false.107
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_52
# BB#51:                                # %cond.true.112
	movq	-104(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB105_53
.LBB105_52:                             # %cond.false.114
	movq	-104(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB105_53:                             # %cond.end.117
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB105_54:                             # %cond.end.119
	movq	-328(%rbp), %rax        # 8-byte Reload
	cmpq	-64(%rbp), %rax
	jg	.LBB105_63
# BB#55:                                # %land.lhs.true.123
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jg	.LBB105_63
# BB#56:                                # %land.lhs.true.126
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB105_58
# BB#57:                                # %cond.true.129
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB105_62
.LBB105_58:                             # %cond.false.131
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_60
# BB#59:                                # %cond.true.136
	movq	-104(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB105_61
.LBB105_60:                             # %cond.false.138
	movq	-104(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB105_61:                             # %cond.end.141
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB105_62:                             # %cond.end.143
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB105_64
.LBB105_63:                             # %if.then.147
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	args_out_of_range
.LBB105_64:                             # %if.end.148
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_66
# BB#65:                                # %if.then.152
	movq	current_buffer, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB105_71
.LBB105_66:                             # %if.else.153
	movq	-40(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_68
# BB#67:                                # %if.then.158
	movq	-40(%rbp), %rdi
	callq	nsberror
.LBB105_68:                             # %if.end.159
	movq	-176(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_70
# BB#69:                                # %if.then.165
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB105_70:                             # %if.end.166
	jmp	.LBB105_71
.LBB105_71:                             # %if.end.167
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_79
# BB#72:                                # %if.then.171
	movq	-112(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB105_74
# BB#73:                                # %cond.true.174
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB105_78
.LBB105_74:                             # %cond.false.176
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_76
# BB#75:                                # %cond.true.181
	movq	-112(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB105_77
.LBB105_76:                             # %cond.false.183
	movq	-112(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB105_77:                             # %cond.end.186
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB105_78:                             # %cond.end.188
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB105_89
.LBB105_79:                             # %if.else.190
	jmp	.LBB105_80
.LBB105_80:                             # %do.body.191
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB105_83
# BB#81:                                # %land.lhs.true.196
	movq	-48(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_83
# BB#82:                                # %if.then.200
	movq	-48(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -48(%rbp)
	jmp	.LBB105_87
.LBB105_83:                             # %if.else.203
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB105_85
# BB#84:                                # %cond.true.209
	jmp	.LBB105_86
.LBB105_85:                             # %cond.false.210
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB105_86:                             # %cond.end.212
	jmp	.LBB105_87
.LBB105_87:                             # %if.end.213
	jmp	.LBB105_88
.LBB105_88:                             # %do.end.214
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
.LBB105_89:                             # %if.end.216
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_97
# BB#90:                                # %if.then.220
	movq	-112(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB105_92
# BB#91:                                # %cond.true.223
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB105_96
.LBB105_92:                             # %cond.false.225
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_94
# BB#93:                                # %cond.true.230
	movq	-112(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB105_95
.LBB105_94:                             # %cond.false.232
	movq	-112(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB105_95:                             # %cond.end.235
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB105_96:                             # %cond.end.237
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB105_107
.LBB105_97:                             # %if.else.239
	jmp	.LBB105_98
.LBB105_98:                             # %do.body.240
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB105_101
# BB#99:                                # %land.lhs.true.245
	movq	-56(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB105_101
# BB#100:                               # %if.then.249
	movq	-56(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -56(%rbp)
	jmp	.LBB105_105
.LBB105_101:                            # %if.else.252
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB105_103
# BB#102:                               # %cond.true.258
	jmp	.LBB105_104
.LBB105_103:                            # %cond.false.259
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB105_104:                            # %cond.end.261
	jmp	.LBB105_105
.LBB105_105:                            # %if.end.262
	jmp	.LBB105_106
.LBB105_106:                            # %do.end.263
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -88(%rbp)
.LBB105_107:                            # %if.end.265
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.LBB105_109
# BB#108:                               # %if.then.268
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB105_109:                            # %if.end.269
	movq	-112(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB105_111
# BB#110:                               # %cond.true.272
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB105_115
.LBB105_111:                            # %cond.false.274
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_113
# BB#112:                               # %cond.true.279
	movq	-112(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB105_114
.LBB105_113:                            # %cond.false.281
	movq	-112(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB105_114:                            # %cond.end.284
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB105_115:                            # %cond.end.286
	movq	-488(%rbp), %rax        # 8-byte Reload
	cmpq	-80(%rbp), %rax
	jg	.LBB105_124
# BB#116:                               # %land.lhs.true.290
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB105_124
# BB#117:                               # %land.lhs.true.293
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB105_119
# BB#118:                               # %cond.true.296
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB105_123
.LBB105_119:                            # %cond.false.298
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_121
# BB#120:                               # %cond.true.303
	movq	-112(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB105_122
.LBB105_121:                            # %cond.false.305
	movq	-112(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB105_122:                            # %cond.end.308
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB105_123:                            # %cond.end.310
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jle	.LBB105_125
.LBB105_124:                            # %if.then.314
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	args_out_of_range
.LBB105_125:                            # %if.end.315
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -160(%rbp)
.LBB105_126:                            # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-136(%rbp), %rdx
	cmpq	-72(%rbp), %rdx
	movb	%cl, -537(%rbp)         # 1-byte Spill
	jge	.LBB105_128
# BB#127:                               # %land.rhs
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-88(%rbp), %rax
	setl	%cl
	movb	%cl, -537(%rbp)         # 1-byte Spill
.LBB105_128:                            # %land.end
                                        #   in Loop: Header=BB105_126 Depth=1
	movb	-537(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB105_129
	jmp	.LBB105_194
.LBB105_129:                            # %while.body
                                        #   in Loop: Header=BB105_126 Depth=1
	jmp	.LBB105_130
.LBB105_130:                            # %do.body.322
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB105_133
# BB#131:                               # %land.lhs.true.326
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_133
# BB#132:                               # %if.then.330
                                        #   in Loop: Header=BB105_126 Depth=1
	callq	process_quit_flag
	jmp	.LBB105_136
.LBB105_133:                            # %if.else.331
                                        #   in Loop: Header=BB105_126 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB105_135
# BB#134:                               # %if.then.332
                                        #   in Loop: Header=BB105_126 Depth=1
	callq	process_pending_signals
.LBB105_135:                            # %if.end.333
                                        #   in Loop: Header=BB105_126 Depth=1
	jmp	.LBB105_136
.LBB105_136:                            # %if.end.334
                                        #   in Loop: Header=BB105_126 Depth=1
	jmp	.LBB105_137
.LBB105_137:                            # %do.end.335
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB105_153
# BB#138:                               # %if.then.339
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-104(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	BUF_FETCH_MULTIBYTE_CHAR
	movl	%eax, -180(%rbp)
# BB#139:                               # %do.body.341
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-104(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-152(%rbp), %rax
	addq	$-1, %rax
	movq	-152(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jl	.LBB105_141
# BB#140:                               # %cond.true.346
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-104(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB105_142
.LBB105_141:                            # %cond.false.348
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB105_142
.LBB105_142:                            # %cond.end.349
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	-576(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB105_144
# BB#143:                               # %cond.true.355
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$1, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB105_151
.LBB105_144:                            # %cond.false.356
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB105_146
# BB#145:                               # %cond.true.360
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$2, %eax
	movl	%eax, -592(%rbp)        # 4-byte Spill
	jmp	.LBB105_150
.LBB105_146:                            # %cond.false.361
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB105_148
# BB#147:                               # %cond.true.365
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$3, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB105_149
.LBB105_148:                            # %cond.false.366
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-192(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB105_149:                            # %cond.end.371
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB105_150:                            # %cond.end.373
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-592(%rbp), %eax        # 4-byte Reload
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB105_151:                            # %cond.end.375
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-588(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-152(%rbp), %rcx
	movq	%rcx, -152(%rbp)
# BB#152:                               # %do.end.378
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB105_162
.LBB105_153:                            # %if.else.379
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-104(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-136(%rbp), %rax
	addq	$-1, %rax
	movq	-136(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jl	.LBB105_155
# BB#154:                               # %cond.true.388
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-104(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB105_156
.LBB105_155:                            # %cond.false.391
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB105_156
.LBB105_156:                            # %cond.end.392
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-616(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	-608(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movl	%esi, -180(%rbp)
	testb	$1, %cl
	jne	.LBB105_157
	jmp	.LBB105_158
.LBB105_157:                            # %cond.true.396
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-180(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB105_159
	jmp	.LBB105_160
.LBB105_158:                            # %cond.false.400
                                        #   in Loop: Header=BB105_126 Depth=1
	movslq	-180(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB105_160
.LBB105_159:                            # %cond.true.405
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB105_161
.LBB105_160:                            # %cond.false.406
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-180(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB105_161:                            # %cond.end.408
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)
	movq	-136(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -136(%rbp)
.LBB105_162:                            # %if.end.411
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB105_178
# BB#163:                               # %if.then.416
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-112(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	BUF_FETCH_MULTIBYTE_CHAR
	movl	%eax, -184(%rbp)
# BB#164:                               # %do.body.418
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-160(%rbp), %rax
	addq	$-1, %rax
	movq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jl	.LBB105_166
# BB#165:                               # %cond.true.428
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB105_167
.LBB105_166:                            # %cond.false.431
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB105_167
.LBB105_167:                            # %cond.end.432
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	-640(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -200(%rbp)
	movq	-200(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB105_169
# BB#168:                               # %cond.true.438
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$1, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB105_176
.LBB105_169:                            # %cond.false.439
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB105_171
# BB#170:                               # %cond.true.443
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$2, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB105_175
.LBB105_171:                            # %cond.false.444
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB105_173
# BB#172:                               # %cond.true.448
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$3, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB105_174
.LBB105_173:                            # %cond.false.449
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB105_174:                            # %cond.end.455
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-660(%rbp), %eax        # 4-byte Reload
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB105_175:                            # %cond.end.457
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-656(%rbp), %eax        # 4-byte Reload
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB105_176:                            # %cond.end.459
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-652(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-160(%rbp), %rcx
	movq	%rcx, -160(%rbp)
# BB#177:                               # %do.end.463
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB105_187
.LBB105_178:                            # %if.else.465
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-144(%rbp), %rax
	addq	$-1, %rax
	movq	-144(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jl	.LBB105_180
# BB#179:                               # %cond.true.474
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-112(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB105_181
.LBB105_180:                            # %cond.false.477
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB105_181
.LBB105_181:                            # %cond.end.478
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	-672(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rax), %esi
	movl	%esi, -184(%rbp)
	testb	$1, %cl
	jne	.LBB105_182
	jmp	.LBB105_183
.LBB105_182:                            # %cond.true.482
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-184(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB105_184
	jmp	.LBB105_185
.LBB105_183:                            # %cond.false.486
                                        #   in Loop: Header=BB105_126 Depth=1
	movslq	-184(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB105_185
.LBB105_184:                            # %cond.true.491
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-184(%rbp), %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	jmp	.LBB105_186
.LBB105_185:                            # %cond.false.492
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-184(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -684(%rbp)        # 4-byte Spill
.LBB105_186:                            # %cond.end.494
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-684(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)
	movq	-144(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
.LBB105_187:                            # %if.end.497
                                        #   in Loop: Header=BB105_126 Depth=1
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB105_189
# BB#188:                               # %if.then.501
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-120(%rbp), %rdi
	movl	-180(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -180(%rbp)
	movq	-120(%rbp), %rdi
	movl	-184(%rbp), %esi
	callq	char_table_translate
	movl	%eax, -184(%rbp)
.LBB105_189:                            # %if.end.504
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-180(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB105_191
# BB#190:                               # %if.then.507
	movq	$-1, %rax
	subq	-128(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB105_200
.LBB105_191:                            # %if.end.509
                                        #   in Loop: Header=BB105_126 Depth=1
	movl	-180(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jle	.LBB105_193
# BB#192:                               # %if.then.512
	movq	-128(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB105_200
.LBB105_193:                            # %if.end.516
                                        #   in Loop: Header=BB105_126 Depth=1
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB105_126
.LBB105_194:                            # %while.end
	movq	-128(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_196
# BB#195:                               # %if.then.521
	movq	-128(%rbp), %rax
	addq	$1, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB105_200
.LBB105_196:                            # %if.else.525
	movq	-128(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB105_198
# BB#197:                               # %if.then.529
	xorl	%eax, %eax
	movl	%eax, %ecx
	subq	-128(%rbp), %rcx
	subq	$1, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB105_200
.LBB105_198:                            # %if.end.534
	jmp	.LBB105_199
.LBB105_199:                            # %if.end.535
	movq	$2, -8(%rbp)
.LBB105_200:                            # %return
	movq	-8(%rbp), %rax
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end105:
	.size	Fcompare_buffer_substrings, .Lfunc_end105-Fcompare_buffer_substrings
	.cfi_endproc

	.globl	Fsubst_char_in_region
	.align	16, 0x90
	.type	Fsubst_char_in_region,@function
Fsubst_char_in_region:                  # @Fsubst_char_in_region
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -96(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movl	$0, -132(%rbp)
	movq	$0, -144(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movb	%r9b, -145(%rbp)
.LBB106_1:                              # %restart
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB106_71 Depth 2
                                        #       Child Loop BB106_159 Depth 3
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	validate_region
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB106_2
	jmp	.LBB106_4
.LBB106_2:                              # %land.lhs.true
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB106_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_5
.LBB106_4:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB106_5:                              # %cond.end
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB106_6
	jmp	.LBB106_8
.LBB106_6:                              # %land.lhs.true.6
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB106_8
# BB#7:                                 # %cond.true.9
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_9
.LBB106_8:                              # %cond.false.10
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB106_9:                              # %cond.end.12
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -152(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -156(%rbp)
	testb	$1, -145(%rbp)
	je	.LBB106_61
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB106_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_11
	jmp	.LBB106_12
.LBB106_11:                             # %cond.true.16
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-152(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB106_13
	jmp	.LBB106_14
.LBB106_12:                             # %cond.false.19
                                        #   in Loop: Header=BB106_1 Depth=1
	movslq	-152(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB106_14
.LBB106_13:                             # %cond.true.24
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$1, %eax
	movl	-152(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB106_25
.LBB106_14:                             # %cond.false.26
                                        #   in Loop: Header=BB106_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_15
	jmp	.LBB106_16
.LBB106_15:                             # %cond.true.27
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-152(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB106_17
	jmp	.LBB106_18
.LBB106_16:                             # %cond.false.31
                                        #   in Loop: Header=BB106_1 Depth=1
	movslq	-152(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB106_18
.LBB106_17:                             # %cond.true.36
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$2, %eax
	movl	-152(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	-152(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -100(%rbp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB106_24
.LBB106_18:                             # %cond.false.43
                                        #   in Loop: Header=BB106_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_19
	jmp	.LBB106_20
.LBB106_19:                             # %cond.true.44
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-152(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB106_21
	jmp	.LBB106_22
.LBB106_20:                             # %cond.false.48
                                        #   in Loop: Header=BB106_1 Depth=1
	movslq	-152(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB106_22
.LBB106_21:                             # %cond.true.53
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$3, %eax
	movl	-152(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	-152(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -100(%rbp)
	movl	-152(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -99(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB106_23
.LBB106_22:                             # %cond.false.67
                                        #   in Loop: Header=BB106_1 Depth=1
	leaq	-101(%rbp), %rsi
	movl	-152(%rbp), %edi
	callq	char_string
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB106_23:                             # %cond.end.69
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB106_24:                             # %cond.end.70
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB106_25:                             # %cond.end.72
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB106_26
	jmp	.LBB106_27
.LBB106_26:                             # %cond.true.75
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-156(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB106_28
	jmp	.LBB106_29
.LBB106_27:                             # %cond.false.79
                                        #   in Loop: Header=BB106_1 Depth=1
	movslq	-156(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB106_29
.LBB106_28:                             # %cond.true.84
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$1, %eax
	movl	-156(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -106(%rbp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB106_40
.LBB106_29:                             # %cond.false.87
                                        #   in Loop: Header=BB106_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_30
	jmp	.LBB106_31
.LBB106_30:                             # %cond.true.88
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-156(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB106_32
	jmp	.LBB106_33
.LBB106_31:                             # %cond.false.92
                                        #   in Loop: Header=BB106_1 Depth=1
	movslq	-156(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB106_33
.LBB106_32:                             # %cond.true.97
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$2, %eax
	movl	-156(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -106(%rbp)
	movl	-156(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -105(%rbp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB106_39
.LBB106_33:                             # %cond.false.106
                                        #   in Loop: Header=BB106_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_34
	jmp	.LBB106_35
.LBB106_34:                             # %cond.true.107
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-156(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB106_36
	jmp	.LBB106_37
.LBB106_35:                             # %cond.false.111
                                        #   in Loop: Header=BB106_1 Depth=1
	movslq	-156(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB106_37
.LBB106_36:                             # %cond.true.116
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$3, %eax
	movl	-156(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -106(%rbp)
	movl	-156(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -105(%rbp)
	movl	-156(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -104(%rbp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB106_38
.LBB106_37:                             # %cond.false.130
                                        #   in Loop: Header=BB106_1 Depth=1
	leaq	-106(%rbp), %rsi
	movl	-156(%rbp), %edi
	callq	char_string
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB106_38:                             # %cond.end.133
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB106_39:                             # %cond.end.135
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB106_40:                             # %cond.end.137
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	cmpq	-80(%rbp), %rcx
	je	.LBB106_42
# BB#41:                                # %if.then.142
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	error
.LBB106_42:                             # %if.end
                                        #   in Loop: Header=BB106_1 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_43
	jmp	.LBB106_44
.LBB106_43:                             # %cond.true.143
                                        #   in Loop: Header=BB106_1 Depth=1
	movzbl	-106(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB106_60
	jmp	.LBB106_45
.LBB106_44:                             # %cond.false.149
                                        #   in Loop: Header=BB106_1 Depth=1
	movzbl	-106(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jb	.LBB106_60
.LBB106_45:                             # %if.then.155
                                        #   in Loop: Header=BB106_1 Depth=1
	movzbl	-106(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB106_47
# BB#46:                                # %if.then.161
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$3, -132(%rbp)
	jmp	.LBB106_59
.LBB106_47:                             # %if.else
                                        #   in Loop: Header=BB106_1 Depth=1
	movzbl	-106(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB106_49
# BB#48:                                # %cond.true.166
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB106_56
.LBB106_49:                             # %cond.false.167
                                        #   in Loop: Header=BB106_1 Depth=1
	movzbl	-106(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	jne	.LBB106_51
# BB#50:                                # %cond.true.172
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$2, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB106_55
.LBB106_51:                             # %cond.false.173
                                        #   in Loop: Header=BB106_1 Depth=1
	movzbl	-106(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	jne	.LBB106_53
# BB#52:                                # %cond.true.178
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$3, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB106_54
.LBB106_53:                             # %cond.false.179
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movzbl	-106(%rbp), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB106_54:                             # %cond.end.186
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB106_55:                             # %cond.end.188
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB106_56:                             # %cond.end.190
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	cmpq	-80(%rbp), %rcx
	jle	.LBB106_58
# BB#57:                                # %if.then.195
                                        #   in Loop: Header=BB106_1 Depth=1
	movl	$2, -132(%rbp)
.LBB106_58:                             # %if.end.196
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_59
.LBB106_59:                             # %if.end.197
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_60
.LBB106_60:                             # %if.end.198
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_62
.LBB106_61:                             # %if.else.199
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	$1, -80(%rbp)
	movl	-152(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -101(%rbp)
	movl	-156(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -106(%rbp)
.LBB106_62:                             # %if.end.204
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rdi
	movq	-48(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB106_65
# BB#63:                                # %land.lhs.true.210
                                        #   in Loop: Header=BB106_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB106_65
# BB#64:                                # %if.then.214
                                        #   in Loop: Header=BB106_1 Depth=1
	movabsq	$subst_char_in_region_unwind, %rdi
	movq	current_buffer, %rax
	movq	968(%rax), %rsi
	callq	record_unwind_protect
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	movabsq	$subst_char_in_region_unwind_1, %rdi
	movq	current_buffer, %rax
	movq	16(%rax), %rsi
	callq	record_unwind_protect
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_filename
.LBB106_65:                             # %if.end.217
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB106_70
# BB#66:                                # %if.then.220
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB106_68
# BB#67:                                # %cond.true.225
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB106_69
.LBB106_68:                             # %cond.false.226
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB106_69:                             # %cond.end.229
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB106_70:                             # %if.end.231
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_71
.LBB106_71:                             # %while.body
                                        #   Parent Loop BB106_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB106_159 Depth 3
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jl	.LBB106_75
# BB#72:                                # %if.then.234
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-56(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jl	.LBB106_74
# BB#73:                                # %if.then.237
	jmp	.LBB106_165
.LBB106_74:                             # %if.end.238
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB106_75:                             # %if.end.239
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_77
# BB#76:                                # %cond.true.244
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB106_78
.LBB106_77:                             # %cond.false.246
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB106_78
.LBB106_78:                             # %cond.end.247
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	addq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -120(%rbp)
	testb	$1, -145(%rbp)
	je	.LBB106_94
# BB#79:                                # %if.then.253
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_80
.LBB106_80:                             # %do.body
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_82
# BB#81:                                # %cond.true.258
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB106_83
.LBB106_82:                             # %cond.false.261
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB106_83
.LBB106_83:                             # %cond.end.262
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-312(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB106_85
# BB#84:                                # %cond.true.272
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB106_92
.LBB106_85:                             # %cond.false.273
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB106_87
# BB#86:                                # %cond.true.277
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$2, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB106_91
.LBB106_87:                             # %cond.false.278
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB106_89
# BB#88:                                # %cond.true.282
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$3, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB106_90
.LBB106_89:                             # %cond.false.283
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-176(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB106_90:                             # %cond.end.289
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB106_91:                             # %cond.end.291
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB106_92:                             # %cond.end.293
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-168(%rbp), %rcx
	movq	%rcx, -168(%rbp)
# BB#93:                                # %do.end
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_95
.LBB106_94:                             # %if.else.297
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)
.LBB106_95:                             # %if.end.298
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	subq	-56(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB106_164
# BB#96:                                # %land.lhs.true.301
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-101(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB106_164
# BB#97:                                # %land.lhs.true.308
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpq	$1, -80(%rbp)
	je	.LBB106_103
# BB#98:                                # %lor.lhs.false
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-120(%rbp), %rax
	movzbl	1(%rax), %ecx
	movzbl	-100(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB106_164
# BB#99:                                # %land.lhs.true.317
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpq	$2, -80(%rbp)
	je	.LBB106_103
# BB#100:                               # %lor.lhs.false.320
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-120(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	-99(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB106_164
# BB#101:                               # %land.lhs.true.327
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpq	$3, -80(%rbp)
	je	.LBB106_103
# BB#102:                               # %lor.lhs.false.330
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-120(%rbp), %rax
	movzbl	3(%rax), %ecx
	movzbl	-98(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB106_164
.LBB106_103:                            # %if.then.337
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpq	$0, -96(%rbp)
	jge	.LBB106_105
# BB#104:                               # %if.then.340
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB106_114
.LBB106_105:                            # %if.else.341
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpq	$0, -96(%rbp)
	jne	.LBB106_113
# BB#106:                               # %if.then.343
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	$-1, -96(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	modify_text
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB106_112
# BB#107:                               # %if.then.348
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	64(%rcx), %rax
	jne	.LBB106_109
# BB#108:                               # %if.then.354
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rax)
.LBB106_109:                            # %if.end.358
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	cmpq	880(%rcx), %rax
	jne	.LBB106_111
# BB#110:                               # %if.then.364
                                        #   in Loop: Header=BB106_1 Depth=1
	movq	current_buffer, %rax
	movq	880(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 880(%rax)
.LBB106_111:                            # %if.end.367
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_112
.LBB106_112:                            # %if.end.368
                                        #   in Loop: Header=BB106_1 Depth=1
	jmp	.LBB106_1
.LBB106_113:                            # %if.end.369
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_114
.LBB106_114:                            # %if.end.370
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpl	$0, -132(%rbp)
	je	.LBB106_156
# BB#115:                               # %land.lhs.true.372
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpl	$2, -132(%rbp)
	jne	.LBB106_121
# BB#116:                               # %cond.true.375
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	32(%rcx), %rax
	jge	.LBB106_156
# BB#117:                               # %land.lhs.true.379
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_119
# BB#118:                               # %cond.true.384
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB106_120
.LBB106_119:                            # %cond.false.387
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB106_120
.LBB106_120:                            # %cond.end.388
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-344(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	jne	.LBB106_156
	jmp	.LBB106_136
.LBB106_121:                            # %cond.false.399
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	32(%rcx), %rax
	jge	.LBB106_126
# BB#122:                               # %land.lhs.true.404
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_124
# BB#123:                               # %cond.true.409
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB106_125
.LBB106_124:                            # %cond.false.412
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB106_125
.LBB106_125:                            # %cond.end.413
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	je	.LBB106_136
.LBB106_126:                            # %lor.lhs.false.424
                                        #   in Loop: Header=BB106_71 Depth=2
	cmpq	$1, -56(%rbp)
	jle	.LBB106_156
# BB#127:                               # %land.lhs.true.427
                                        #   in Loop: Header=BB106_71 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB106_128
	jmp	.LBB106_132
.LBB106_128:                            # %cond.true.428
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_130
# BB#129:                               # %cond.true.434
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB106_131
.LBB106_130:                            # %cond.false.437
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB106_131
.LBB106_131:                            # %cond.end.438
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	addl	$0, %edx
	cmpl	$128, %edx
	jb	.LBB106_156
	jmp	.LBB106_136
.LBB106_132:                            # %cond.false.450
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_134
# BB#133:                               # %cond.true.456
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB106_135
.LBB106_134:                            # %cond.false.459
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB106_135
.LBB106_135:                            # %cond.end.460
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	%edx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB106_156
.LBB106_136:                            # %if.then.472
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-106(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	968(%rcx), %rcx
	movq	%rcx, -184(%rbp)
	movq	-80(%rbp), %rdx
	callq	make_multibyte_string
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -192(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	-192(%rbp), %rdx
	movq	%rax, %rsi
	movl	%r8d, %ecx
	movl	$0, (%rsp)
	callq	replace_range
	movq	current_buffer, %rdi
	movq	-48(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB106_138
# BB#137:                               # %if.then.480
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB106_153
.LBB106_138:                            # %if.else.481
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_139
.LBB106_139:                            # %do.body.482
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB106_141
# BB#140:                               # %cond.true.488
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB106_142
.LBB106_141:                            # %cond.false.491
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB106_142
.LBB106_142:                            # %cond.end.492
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-376(%rbp), %rax        # 8-byte Reload
	addq	-168(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB106_144
# BB#143:                               # %cond.true.502
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$1, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB106_151
.LBB106_144:                            # %cond.false.503
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB106_146
# BB#145:                               # %cond.true.507
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$2, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB106_150
.LBB106_146:                            # %cond.false.508
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-200(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB106_148
# BB#147:                               # %cond.true.512
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$3, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB106_149
.LBB106_148:                            # %cond.false.513
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$5, %eax
	movl	$4, %ecx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB106_149:                            # %cond.end.519
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB106_150:                            # %cond.end.521
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	%eax, -380(%rbp)        # 4-byte Spill
.LBB106_151:                            # %cond.end.523
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	-380(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-168(%rbp), %rcx
	movq	%rcx, -168(%rbp)
# BB#152:                               # %do.end.527
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_153
.LBB106_153:                            # %if.end.528
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB106_155
# BB#154:                               # %if.then.532
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	current_buffer, %rdi
	movq	-184(%rbp), %rsi
	callq	bset_undo_list
.LBB106_155:                            # %if.end.533
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_163
.LBB106_156:                            # %if.else.534
                                        #   in Loop: Header=BB106_71 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB106_158
# BB#157:                               # %if.then.538
                                        #   in Loop: Header=BB106_71 Depth=2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	record_change
.LBB106_158:                            # %if.end.539
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	$0, -72(%rbp)
.LBB106_159:                            # %for.cond
                                        #   Parent Loop BB106_1 Depth=1
                                        #     Parent Loop BB106_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB106_162
# BB#160:                               # %for.body
                                        #   in Loop: Header=BB106_159 Depth=3
	movq	-72(%rbp), %rax
	movb	-106(%rbp,%rax), %cl
	movq	-120(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)
	movb	%cl, (%rax)
# BB#161:                               # %for.inc
                                        #   in Loop: Header=BB106_159 Depth=3
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB106_159
.LBB106_162:                            # %for.end
                                        #   in Loop: Header=BB106_71 Depth=2
	jmp	.LBB106_163
.LBB106_163:                            # %if.end.544
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB106_164:                            # %if.end.546
                                        #   in Loop: Header=BB106_71 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB106_71
.LBB106_165:                            # %while.end
	cmpq	$0, -96(%rbp)
	jle	.LBB106_167
# BB#166:                               # %if.then.550
	movq	-96(%rbp), %rdi
	movq	-144(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	-96(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	signal_after_change
	movl	$7, %edx
	movq	-96(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	update_compositions
.LBB106_167:                            # %if.end.553
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end106:
	.size	Fsubst_char_in_region, .Lfunc_end106-Fsubst_char_in_region
	.cfi_endproc

	.align	16, 0x90
	.type	subst_char_in_region_unwind,@function
subst_char_in_region_unwind:            # @subst_char_in_region_unwind
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	bset_undo_list
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	subst_char_in_region_unwind, .Lfunc_end107-subst_char_in_region_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	subst_char_in_region_unwind_1,@function
subst_char_in_region_unwind_1:          # @subst_char_in_region_unwind_1
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rsi
	callq	bset_filename
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	subst_char_in_region_unwind_1, .Lfunc_end108-subst_char_in_region_unwind_1
	.cfi_endproc

	.globl	Ftranslate_region_internal
	.align	16, 0x90
	.type	Ftranslate_region_internal,@function
Ftranslate_region_internal:             # @Ftranslate_region_internal
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
	subq	$256, %rsp              # imm = 0x100
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	current_buffer, %rdx
	movq	312(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -73(%rbp)
	callq	validate_region
	movq	-24(%rbp), %rdi
	callq	CHAR_TABLE_P
	testb	$1, %al
	jne	.LBB109_1
	jmp	.LBB109_4
.LBB109_1:                              # %if.then
	movq	-24(%rbp), %rdi
	callq	XCHAR_TABLE
	movl	$934, %edi              # imm = 0x3A6
	movq	24(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB109_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB109_3:                              # %if.end
	movq	$4194303, -48(%rbp)     # imm = 0x3FFFFF
	movq	$0, -32(%rbp)
	jmp	.LBB109_8
.LBB109_4:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	testb	$1, -73(%rbp)
	jne	.LBB109_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	-24(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB109_7
# BB#6:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	string_make_unibyte
	movq	%rax, -24(%rbp)
.LBB109_7:                              # %if.end.11
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-176(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	setl	%cl
	andb	$1, %cl
	movb	%cl, -74(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	%rax, -32(%rbp)
.LBB109_8:                              # %if.end.18
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	modify_text
	movl	$0, -40(%rbp)
.LBB109_9:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB109_74 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB109_91
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB109_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB109_13
.LBB109_12:                             # %cond.false
                                        #   in Loop: Header=BB109_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB109_13
.LBB109_13:                             # %cond.end
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	-64(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	testb	$1, -73(%rbp)
	je	.LBB109_24
# BB#14:                                # %if.then.27
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB109_16
# BB#15:                                # %cond.true.29
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, -108(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB109_23
.LBB109_16:                             # %cond.false.32
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB109_18
# BB#17:                                # %cond.true.37
                                        #   in Loop: Header=BB109_9 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -108(%rbp)
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-88(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-88(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	jmp	.LBB109_22
.LBB109_18:                             # %cond.false.50
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB109_20
# BB#19:                                # %cond.true.55
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$3, -108(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-88(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-88(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB109_21
.LBB109_20:                             # %cond.false.69
                                        #   in Loop: Header=BB109_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-108(%rbp), %rdx
	movq	-88(%rbp), %rdi
	callq	string_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB109_21:                             # %cond.end.71
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB109_22:                             # %cond.end.73
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB109_23:                             # %cond.end.75
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	jmp	.LBB109_25
.LBB109_24:                             # %if.else.77
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movl	$1, -108(%rbp)
.LBB109_25:                             # %if.end.79
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-116(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB109_90
# BB#26:                                # %if.then.83
                                        #   in Loop: Header=BB109_9 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB109_46
# BB#27:                                # %if.then.85
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-24(%rbp), %rdi
	callq	SDATA
	movq	%rax, -32(%rbp)
	testb	$1, -74(%rbp)
	je	.LBB109_38
# BB#28:                                # %if.then.88
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movslq	-116(%rbp), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	string_char_to_byte
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB109_30
# BB#29:                                # %cond.true.96
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, -112(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB109_37
.LBB109_30:                             # %cond.false.99
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB109_32
# BB#31:                                # %cond.true.104
                                        #   in Loop: Header=BB109_9 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -112(%rbp)
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-96(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-96(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	jmp	.LBB109_36
.LBB109_32:                             # %cond.false.119
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB109_34
# BB#33:                                # %cond.true.124
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$3, -112(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB109_35
.LBB109_34:                             # %cond.false.138
                                        #   in Loop: Header=BB109_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-112(%rbp), %rdx
	movq	-96(%rbp), %rdi
	callq	string_char
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB109_35:                             # %cond.end.140
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB109_36:                             # %cond.end.142
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB109_37:                             # %cond.end.144
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	jmp	.LBB109_45
.LBB109_38:                             # %if.else.146
                                        #   in Loop: Header=BB109_9 Depth=1
	movb	$1, %al
	movslq	-116(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, -36(%rbp)
	testb	$1, %al
	jne	.LBB109_39
	jmp	.LBB109_40
.LBB109_39:                             # %cond.true.149
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB109_43
	jmp	.LBB109_41
.LBB109_40:                             # %cond.false.153
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB109_43
.LBB109_41:                             # %land.lhs.true.158
                                        #   in Loop: Header=BB109_9 Depth=1
	testb	$1, -73(%rbp)
	je	.LBB109_43
# BB#42:                                # %if.then.161
                                        #   in Loop: Header=BB109_9 Depth=1
	leaq	-101(%rbp), %rax
	movl	-36(%rbp), %ecx
	sarl	$6, %ecx
	andl	$1, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	-36(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -100(%rbp)
	movl	$2, -112(%rbp)
	movq	%rax, -96(%rbp)
	jmp	.LBB109_44
.LBB109_43:                             # %if.else.171
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, -112(%rbp)
	movq	-32(%rbp), %rax
	movslq	-116(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
.LBB109_44:                             # %if.end.173
                                        #   in Loop: Header=BB109_9 Depth=1
	jmp	.LBB109_45
.LBB109_45:                             # %if.end.174
                                        #   in Loop: Header=BB109_9 Depth=1
	jmp	.LBB109_69
.LBB109_46:                             # %if.else.175
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	CHAR_TABLE_REF
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB109_47
	jmp	.LBB109_64
.LBB109_47:                             # %land.lhs.true.179
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-128(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB109_64
# BB#48:                                # %if.then.183
                                        #   in Loop: Header=BB109_9 Depth=1
	movb	$1, %al
	movq	-128(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -36(%rbp)
	testb	$1, %al
	jne	.LBB109_49
	jmp	.LBB109_50
.LBB109_49:                             # %cond.true.186
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB109_51
	jmp	.LBB109_52
.LBB109_50:                             # %cond.false.190
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB109_52
.LBB109_51:                             # %cond.true.195
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, %eax
	movl	-36(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB109_63
.LBB109_52:                             # %cond.false.198
                                        #   in Loop: Header=BB109_9 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB109_53
	jmp	.LBB109_54
.LBB109_53:                             # %cond.true.199
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB109_55
	jmp	.LBB109_56
.LBB109_54:                             # %cond.false.203
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB109_56
.LBB109_55:                             # %cond.true.208
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	-36(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -100(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB109_62
.LBB109_56:                             # %cond.false.217
                                        #   in Loop: Header=BB109_9 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB109_57
	jmp	.LBB109_58
.LBB109_57:                             # %cond.true.218
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB109_59
	jmp	.LBB109_60
.LBB109_58:                             # %cond.false.222
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-36(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB109_60
.LBB109_59:                             # %cond.true.227
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$3, %eax
	movl	-36(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -101(%rbp)
	movl	-36(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -100(%rbp)
	movl	-36(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -99(%rbp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB109_61
.LBB109_60:                             # %cond.false.241
                                        #   in Loop: Header=BB109_9 Depth=1
	leaq	-101(%rbp), %rsi
	movl	-36(%rbp), %edi
	callq	char_string
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB109_61:                             # %cond.end.244
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB109_62:                             # %cond.end.246
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB109_63:                             # %cond.end.248
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	leaq	-101(%rbp), %rcx
	movl	%eax, -112(%rbp)
	movq	%rcx, -96(%rbp)
	jmp	.LBB109_68
.LBB109_64:                             # %if.else.251
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-128(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB109_66
# BB#65:                                # %lor.lhs.false
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB109_67
.LBB109_66:                             # %if.then.258
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$-1, -36(%rbp)
.LBB109_67:                             # %if.end.259
                                        #   in Loop: Header=BB109_9 Depth=1
	jmp	.LBB109_68
.LBB109_68:                             # %if.end.260
                                        #   in Loop: Header=BB109_9 Depth=1
	jmp	.LBB109_69
.LBB109_69:                             # %if.end.261
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-116(%rbp), %eax
	je	.LBB109_78
# BB#70:                                # %land.lhs.true.264
                                        #   in Loop: Header=BB109_9 Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB109_78
# BB#71:                                # %if.then.267
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	je	.LBB109_73
# BB#72:                                # %if.then.270
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	movslq	-112(%rbp), %rdx
	callq	make_multibyte_string
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	-136(%rbp), %rdx
	movq	%rax, %rsi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	replace_range
	movl	-112(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	jmp	.LBB109_77
.LBB109_73:                             # %if.else.274
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	record_change
.LBB109_74:                             # %while.cond
                                        #   Parent Loop BB109_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-112(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$0, %eax
	jle	.LBB109_76
# BB#75:                                # %while.body
                                        #   in Loop: Header=BB109_74 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB109_74
.LBB109_76:                             # %while.end
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	signal_after_change
	movl	$3, %edx
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rsi
	callq	update_compositions
.LBB109_77:                             # %if.end.279
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB109_89
.LBB109_78:                             # %if.else.280
                                        #   in Loop: Header=BB109_9 Depth=1
	cmpl	$0, -36(%rbp)
	jge	.LBB109_88
# BB#79:                                # %if.then.283
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-128(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB109_83
# BB#80:                                # %if.then.289
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-128(%rbp), %rcx
	callq	check_translation
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB109_82
# BB#81:                                # %if.then.294
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-108(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB109_9
.LBB109_82:                             # %if.end.298
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movq	-128(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB109_84
.LBB109_83:                             # %if.else.302
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, -108(%rbp)
.LBB109_84:                             # %if.end.303
                                        #   in Loop: Header=BB109_9 Depth=1
	movq	-128(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB109_85
	jmp	.LBB109_86
.LBB109_85:                             # %if.then.305
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	leaq	-128(%rbp), %rsi
	callq	Fconcat
	movq	%rax, -144(%rbp)
	jmp	.LBB109_87
.LBB109_86:                             # %if.else.307
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-128(%rbp), %rsi
	callq	Fmake_string
	movq	%rax, -144(%rbp)
.LBB109_87:                             # %if.end.309
                                        #   in Loop: Header=BB109_9 Depth=1
	movl	$1, %eax
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movslq	-108(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, %rsi
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	replace_range
	movq	-144(%rbp), %rdi
	callq	SBYTES
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-144(%rbp), %rdi
	callq	SCHARS
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rdi
	callq	SCHARS
	movslq	-40(%rbp), %rdx
	addq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, -40(%rbp)
	movq	-144(%rbp), %rdi
	callq	SCHARS
	movslq	-108(%rbp), %rdx
	subq	%rdx, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB109_9
.LBB109_88:                             # %if.end.324
                                        #   in Loop: Header=BB109_9 Depth=1
	jmp	.LBB109_89
.LBB109_89:                             # %if.end.325
                                        #   in Loop: Header=BB109_9 Depth=1
	jmp	.LBB109_90
.LBB109_90:                             # %if.end.326
                                        #   in Loop: Header=BB109_9 Depth=1
	movslq	-108(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB109_9
.LBB109_91:                             # %for.end
	movslq	-40(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end109:
	.size	Ftranslate_region_internal, .Lfunc_end109-Ftranslate_region_internal
	.cfi_endproc

	.align	16, 0x90
	.type	check_translation,@function
check_translation:                      # @check_translation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp331:
	.cfi_def_cfa_offset 16
.Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp333:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	leaq	-96(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -104(%rbp)
	movq	$16, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)
.LBB110_1:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_8 Depth 2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB110_36
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB110_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB110_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_35
.LBB110_4:                              # %if.end
                                        #   in Loop: Header=BB110_1 Depth=1
	movq	-144(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB110_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_35
.LBB110_6:                              # %if.end.10
                                        #   in Loop: Header=BB110_1 Depth=1
	movq	-144(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %rdi
	subq	-8(%rbp), %rdi
	cmpq	%rdi, %rax
	jg	.LBB110_34
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB110_1 Depth=1
	movq	$0, -160(%rbp)
.LBB110_8:                              # %for.cond.16
                                        #   Parent Loop BB110_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jge	.LBB110_31
# BB#9:                                 # %for.body.19
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-128(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jg	.LBB110_27
# BB#10:                                # %if.then.22
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB110_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB110_13
.LBB110_12:                             # %cond.false
                                        #   in Loop: Header=BB110_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB110_13
.LBB110_13:                             # %cond.end
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	-16(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB110_17
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB110_8 Depth=2
	leaq	-112(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$4, %eax
	movl	%eax, %r8d
	movq	-120(%rbp), %rdi
	callq	xpalloc
	leaq	-96(%rbp), %rcx
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	cmpq	%rcx, %rax
	jne	.LBB110_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB110_8 Depth=2
	movl	$64, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB110_16:                             # %if.end.36
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB110_17:                             # %if.end.37
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB110_19
# BB#18:                                # %cond.true.40
                                        #   in Loop: Header=BB110_8 Depth=2
	movl	$1, -172(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB110_26
.LBB110_19:                             # %cond.false.43
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB110_21
# BB#20:                                # %cond.true.48
                                        #   in Loop: Header=BB110_8 Depth=2
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -172(%rbp)
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-168(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-168(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	jmp	.LBB110_25
.LBB110_21:                             # %cond.false.61
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB110_23
# BB#22:                                # %cond.true.66
                                        #   in Loop: Header=BB110_8 Depth=2
	movl	$3, -172(%rbp)
	movq	-168(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-168(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-168(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB110_24
.LBB110_23:                             # %cond.false.80
                                        #   in Loop: Header=BB110_8 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-172(%rbp), %rdx
	movq	-168(%rbp), %rdi
	callq	string_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB110_24:                             # %cond.end.82
                                        #   in Loop: Header=BB110_8 Depth=2
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB110_25:                             # %cond.end.84
                                        #   in Loop: Header=BB110_8 Depth=2
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB110_26:                             # %cond.end.86
                                        #   in Loop: Header=BB110_8 Depth=2
	movl	-188(%rbp), %eax        # 4-byte Reload
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -128(%rbp)
	movq	-104(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-172(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
.LBB110_27:                             # %if.end.91
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-144(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	AREF
	sarq	$2, %rax
	movq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movslq	(%rdi,%rsi,4), %rsi
	cmpq	%rsi, %rax
	je	.LBB110_29
# BB#28:                                # %if.then.97
                                        #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_31
.LBB110_29:                             # %if.end.98
                                        #   in Loop: Header=BB110_8 Depth=2
	jmp	.LBB110_30
.LBB110_30:                             # %for.inc
                                        #   in Loop: Header=BB110_8 Depth=2
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB110_8
.LBB110_31:                             # %for.end
                                        #   in Loop: Header=BB110_1 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB110_33
# BB#32:                                # %if.then.102
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB110_36
.LBB110_33:                             # %if.end.105
                                        #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_34
.LBB110_34:                             # %if.end.106
                                        #   in Loop: Header=BB110_1 Depth=1
	jmp	.LBB110_35
.LBB110_35:                             # %for.inc.107
                                        #   in Loop: Header=BB110_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB110_1
.LBB110_36:                             # %for.end.109
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-136(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	check_translation, .Lfunc_end110-check_translation
	.cfi_endproc

	.globl	Fdelete_region
	.align	16, 0x90
	.type	Fdelete_region,@function
Fdelete_region:                         # @Fdelete_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp334:
	.cfi_def_cfa_offset 16
.Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp336:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	leaq	-16(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	validate_region
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	del_range
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	Fdelete_region, .Lfunc_end111-Fdelete_region
	.cfi_endproc

	.globl	Fdelete_and_extract_region
	.align	16, 0x90
	.type	Fdelete_and_extract_region,@function
Fdelete_and_extract_region:             # @Fdelete_and_extract_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp337:
	.cfi_def_cfa_offset 16
.Ltmp338:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp339:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-16(%rbp), %rax
	leaq	-24(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	validate_region
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB112_2
# BB#1:                                 # %if.then
	movq	empty_unibyte_string, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB112_3
.LBB112_2:                              # %if.end
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	del_range_1
	movq	%rax, -8(%rbp)
.LBB112_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	Fdelete_and_extract_region, .Lfunc_end112-Fdelete_and_extract_region
	.cfi_endproc

	.globl	Fwiden
	.align	16, 0x90
	.type	Fwiden,@function
Fwiden:                                 # @Fwiden
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp340:
	.cfi_def_cfa_offset 16
.Ltmp341:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp342:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	current_buffer, %rdx
	cmpq	752(%rdx), %rcx
	jne	.LBB113_2
# BB#1:                                 # %lor.lhs.false
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	je	.LBB113_3
.LBB113_2:                              # %if.then
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 936(%rax)
.LBB113_3:                              # %if.end
	movq	current_buffer, %rax
	movq	$1, 752(%rax)
	movq	current_buffer, %rax
	movq	$1, 760(%rax)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	current_buffer, %rcx
	movq	%rax, 768(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	current_buffer, %rcx
	movq	%rax, 776(%rcx)
	callq	invalidate_current_column
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end113:
	.size	Fwiden, .Lfunc_end113-Fwiden
	.cfi_endproc

	.globl	Fnarrow_to_region
	.align	16, 0x90
	.type	Fnarrow_to_region,@function
Fnarrow_to_region:                      # @Fnarrow_to_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp343:
	.cfi_def_cfa_offset 16
.Ltmp344:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp345:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB114_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB114_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	jmp	.LBB114_8
.LBB114_4:                              # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB114_6
# BB#5:                                 # %cond.true
	jmp	.LBB114_7
.LBB114_6:                              # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB114_7:                              # %cond.end
	jmp	.LBB114_8
.LBB114_8:                              # %if.end
	jmp	.LBB114_9
.LBB114_9:                              # %do.end
	jmp	.LBB114_10
.LBB114_10:                             # %do.body.12
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB114_13
# BB#11:                                # %land.lhs.true.17
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB114_13
# BB#12:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	marker_position
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	jmp	.LBB114_17
.LBB114_13:                             # %if.else.24
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB114_15
# BB#14:                                # %cond.true.30
	jmp	.LBB114_16
.LBB114_15:                             # %cond.false.31
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB114_16:                             # %cond.end.33
	jmp	.LBB114_17
.LBB114_17:                             # %if.end.34
	jmp	.LBB114_18
.LBB114_18:                             # %do.end.35
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB114_20
# BB#19:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB114_20:                             # %if.end.40
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB114_23
# BB#21:                                # %land.lhs.true.44
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB114_23
# BB#22:                                # %land.lhs.true.49
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jle	.LBB114_24
.LBB114_23:                             # %if.then.53
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	args_out_of_range
.LBB114_24:                             # %if.end.54
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB114_26
# BB#25:                                # %lor.lhs.false
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	je	.LBB114_27
.LBB114_26:                             # %if.then.61
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 936(%rax)
.LBB114_27:                             # %if.end.62
	movq	current_buffer, %rdi
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	current_buffer, %rsi
	movq	%rax, 760(%rsi)
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rsi
	movq	%rax, 752(%rsi)
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	current_buffer, %rsi
	movq	%rax, 776(%rsi)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rsi
	movq	%rax, 768(%rsi)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-8(%rbp), %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rax
	jge	.LBB114_29
# BB#28:                                # %if.then.74
	movq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	set_point
.LBB114_29:                             # %if.end.76
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB114_31
# BB#30:                                # %if.then.82
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	set_point
.LBB114_31:                             # %if.end.84
	callq	invalidate_current_column
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	Fnarrow_to_region, .Lfunc_end114-Fnarrow_to_region
	.cfi_endproc

	.globl	save_restriction_save
	.align	16, 0x90
	.type	save_restriction_save,@function
save_restriction_save:                  # @save_restriction_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp346:
	.cfi_def_cfa_offset 16
.Ltmp347:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp348:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	current_buffer, %rax
	cmpq	$1, 752(%rax)
	jne	.LBB115_3
# BB#1:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB115_3
# BB#2:                                 # %if.then
	callq	Fcurrent_buffer
	movq	%rax, -8(%rbp)
	jmp	.LBB115_4
.LBB115_3:                              # %if.else
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	752(%rax), %rsi
	movq	current_buffer, %rax
	movq	760(%rax), %rdx
	callq	build_marker
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	768(%rax), %rsi
	movq	current_buffer, %rax
	movq	776(%rax), %rdx
	callq	build_marker
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	orl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB115_4:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	save_restriction_save, .Lfunc_end115-save_restriction_save
	.cfi_endproc

	.globl	save_restriction_restore
	.align	16, 0x90
	.type	save_restriction_restore,@function
save_restriction_restore:               # @save_restriction_restore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp349:
	.cfi_def_cfa_offset 16
.Ltmp350:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp351:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$3, %eax
	jne	.LBB116_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	XMARKER
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB116_3
.LBB116_2:                              # %cond.false
	movq	-8(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB116_3:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB116_7
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	je	.LBB116_7
# BB#5:                                 # %land.lhs.true.5
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_7
# BB#6:                                 # %if.then
	movq	current_buffer, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
.LBB116_7:                              # %if.end
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB116_40
# BB#8:                                 # %if.then.13
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	XMARKER
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XMARKER
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB116_39
# BB#9:                                 # %land.lhs.true.20
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB116_11
# BB#10:                                # %cond.true.23
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB116_15
.LBB116_11:                             # %cond.false.24
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_13
# BB#12:                                # %cond.true.28
	movq	-24(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB116_14
.LBB116_13:                             # %cond.false.30
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB116_14:                             # %cond.end.33
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB116_15:                             # %cond.end.35
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_23
# BB#16:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB116_18
# BB#17:                                # %cond.true.42
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB116_22
.LBB116_18:                             # %cond.false.43
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_20
# BB#19:                                # %cond.true.47
	movq	-24(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB116_21
.LBB116_20:                             # %cond.false.49
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB116_21:                             # %cond.end.52
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB116_22:                             # %cond.end.54
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB116_39
.LBB116_23:                             # %if.then.58
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB116_25
# BB#24:                                # %cond.true.61
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB116_29
.LBB116_25:                             # %cond.false.63
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_27
# BB#26:                                # %cond.true.68
	movq	-24(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB116_28
.LBB116_27:                             # %cond.false.70
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB116_28:                             # %cond.end.73
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB116_29:                             # %cond.end.75
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 752(%rcx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 760(%rcx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 768(%rcx)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 776(%rcx)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB116_31
# BB#30:                                # %lor.lhs.false.85
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jle	.LBB116_38
.LBB116_31:                             # %if.then.89
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	callq	clip_to_bounds
	movq	-24(%rbp), %rdx
	movq	%rax, 736(%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	jne	.LBB116_33
# BB#32:                                # %cond.true.97
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB116_37
.LBB116_33:                             # %cond.false.99
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_35
# BB#34:                                # %cond.true.104
	movq	-24(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB116_36
.LBB116_35:                             # %cond.false.106
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB116_36:                             # %cond.end.109
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB116_37:                             # %cond.end.111
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	clip_to_bounds
	movq	-24(%rbp), %rcx
	movq	%rax, 744(%rcx)
.LBB116_38:                             # %if.end.116
	movq	-24(%rbp), %rax
	movb	936(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 936(%rax)
.LBB116_39:                             # %if.end.117
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	free_marker
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	free_marker
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	%rax, %rdi
	callq	free_cons
	jmp	.LBB116_57
.LBB116_40:                             # %if.else
	cmpq	$0, -24(%rbp)
	je	.LBB116_56
# BB#41:                                # %land.lhs.true.125
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB116_43
# BB#42:                                # %cond.true.128
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB116_47
.LBB116_43:                             # %cond.false.130
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_45
# BB#44:                                # %cond.true.135
	movq	-24(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB116_46
.LBB116_45:                             # %cond.false.137
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB116_46:                             # %cond.end.140
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB116_47:                             # %cond.end.142
	movq	-192(%rbp), %rax        # 8-byte Reload
	cmpq	$1, %rax
	jne	.LBB116_55
# BB#48:                                # %lor.lhs.false.146
	movq	-24(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB116_50
# BB#49:                                # %cond.true.149
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB116_54
.LBB116_50:                             # %cond.false.151
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB116_52
# BB#51:                                # %cond.true.156
	movq	-24(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB116_53
.LBB116_52:                             # %cond.false.158
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB116_53:                             # %cond.end.161
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB116_54:                             # %cond.end.163
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB116_56
.LBB116_55:                             # %if.then.167
	movq	-24(%rbp), %rax
	movq	$1, 752(%rax)
	movq	-24(%rbp), %rax
	movq	$1, 760(%rax)
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 768(%rcx)
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 776(%rcx)
	movq	-24(%rbp), %rax
	movb	936(%rax), %dl
	andb	$-3, %dl
	orb	$2, %dl
	movb	%dl, 936(%rax)
.LBB116_56:                             # %if.end.179
	jmp	.LBB116_57
.LBB116_57:                             # %if.end.180
	callq	invalidate_current_column
	cmpq	$0, -16(%rbp)
	je	.LBB116_59
# BB#58:                                # %if.then.182
	movq	-16(%rbp), %rdi
	callq	set_buffer_internal
.LBB116_59:                             # %if.end.183
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	save_restriction_restore, .Lfunc_end116-save_restriction_restore
	.cfi_endproc

	.globl	Fsave_restriction
	.align	16, 0x90
	.type	Fsave_restriction,@function
Fsave_restriction:                      # @Fsave_restriction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp352:
	.cfi_def_cfa_offset 16
.Ltmp353:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp354:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	callq	save_restriction_save
	movabsq	$save_restriction_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	movq	-8(%rbp), %rdi
	callq	Fprogn
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	unbind_to
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	Fsave_restriction, .Lfunc_end117-Fsave_restriction
	.cfi_endproc

	.globl	Fmessage
	.align	16, 0x90
	.type	Fmessage,@function
Fmessage:                               # @Fmessage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp355:
	.cfi_def_cfa_offset 16
.Ltmp356:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp357:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB118_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB118_2
	jmp	.LBB118_4
.LBB118_2:                              # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jne	.LBB118_4
.LBB118_3:                              # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	message1
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB118_5
.LBB118_4:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fformat_message
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	message3
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB118_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	Fmessage, .Lfunc_end118-Fmessage
	.cfi_endproc

	.globl	Fformat_message
	.align	16, 0x90
	.type	Fformat_message,@function
Fformat_message:                        # @Fformat_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp358:
	.cfi_def_cfa_offset 16
.Ltmp359:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp360:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	styled_format
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	Fformat_message, .Lfunc_end119-Fformat_message
	.cfi_endproc

	.globl	Fmessage_box
	.align	16, 0x90
	.type	Fmessage_box,@function
Fmessage_box:                           # @Fmessage_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp361:
	.cfi_def_cfa_offset 16
.Ltmp362:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp363:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB120_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	message1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB120_3
.LBB120_2:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fformat_message
	movabsq	$.L.str.14, %rdi
	movq	%rax, -32(%rbp)
	callq	build_string
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fcons
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fx_popup_dialog
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB120_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	Fmessage_box, .Lfunc_end120-Fmessage_box
	.cfi_endproc

	.globl	Fmessage_or_box
	.align	16, 0x90
	.type	Fmessage_or_box,@function
Fmessage_or_box:                        # @Fmessage_or_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp364:
	.cfi_def_cfa_offset 16
.Ltmp365:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp366:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	globals+3016, %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB121_2
# BB#1:                                 # %lor.lhs.false
	movq	globals+3016, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB121_4
.LBB121_2:                              # %land.lhs.true
	testb	$1, globals+3433
	je	.LBB121_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fmessage_box
	movq	%rax, -8(%rbp)
	jmp	.LBB121_5
.LBB121_4:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fmessage
	movq	%rax, -8(%rbp)
.LBB121_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	Fmessage_or_box, .Lfunc_end121-Fmessage_or_box
	.cfi_endproc

	.globl	Fcurrent_message
	.align	16, 0x90
	.type	Fcurrent_message,@function
Fcurrent_message:                       # @Fcurrent_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp367:
	.cfi_def_cfa_offset 16
.Ltmp368:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp369:
	.cfi_def_cfa_register %rbp
	callq	current_message
	popq	%rbp
	retq
.Lfunc_end122:
	.size	Fcurrent_message, .Lfunc_end122-Fcurrent_message
	.cfi_endproc

	.globl	Fpropertize
	.align	16, 0x90
	.type	Fpropertize,@function
Fpropertize:                            # @Fpropertize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp370:
	.cfi_def_cfa_offset 16
.Ltmp371:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp372:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	.LBB123_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	error
.LBB123_2:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fcopy_sequence
	movq	%rax, -32(%rbp)
	movq	$1, -40(%rbp)
.LBB123_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB123_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB123_3 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	-24(%rbp), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -24(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB123_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB123_3
.LBB123_6:                              # %for.end
	movq	-32(%rbp), %rdi
	callq	SCHARS
	movl	$2, %ecx
	movl	%ecx, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	callq	Fadd_text_properties
	movq	-32(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	Fpropertize, .Lfunc_end123-Fpropertize
	.cfi_endproc

	.globl	Fformat
	.align	16, 0x90
	.type	Fformat,@function
Fformat:                                # @Fformat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp373:
	.cfi_def_cfa_offset 16
.Ltmp374:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp375:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	styled_format
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	Fformat, .Lfunc_end124-Fformat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI125_0:
	.quad	-4341470040785158144    # double -2.305843009213694E+18
.LCPI125_1:
	.quad	4881901996069617664     # double 2.305843009213694E+18
.LCPI125_2:
	.quad	-4616189618054758400    # double -1
.LCPI125_3:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI125_4:
	.quad	4895412794951729152     # double 1.8446744073709552E+19
	.text
	.align	16, 0x90
	.type	styled_format,@function
styled_format:                          # @styled_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp376:
	.cfi_def_cfa_offset 16
.Ltmp377:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp378:
	.cfi_def_cfa_register %rbp
	subq	$7760, %rsp             # imm = 0x1E50
	movb	%dl, %al
	movabsq	$2305843009213693952, %rcx # imm = 0x2000000000000000
	leaq	-4032(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%r8, -4040(%rbp)
	movq	$4000, -4048(%rbp)      # imm = 0xFA0
	movq	%rcx, -4056(%rbp)
	movb	$0, -4098(%rbp)
	movq	$16384, -4112(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -4120(%rbp)
	movb	$0, -4121(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movq	%rax, -4144(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	SBYTES
	xorl	%edx, %edx
	movb	%dl, %r9b
	movq	%rax, -4152(%rbp)
	testb	$1, %r9b
	jne	.LBB125_1
	jmp	.LBB125_80
.LBB125_1:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_2
	jmp	.LBB125_41
.LBB125_2:                              # %cond.true.5
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_4
# BB#3:                                 # %cond.true.8
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -5996(%rbp)       # 4-byte Spill
	jmp	.LBB125_5
.LBB125_4:                              # %cond.false
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -5996(%rbp)       # 4-byte Spill
.LBB125_5:                              # %cond.end
	movl	-5996(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB125_7
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB125_33
.LBB125_7:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_8
	jmp	.LBB125_19
.LBB125_8:                              # %cond.true.37
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_13
# BB#9:                                 # %cond.true.42
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -6000(%rbp)       # 4-byte Spill
	jge	.LBB125_11
# BB#10:                                # %cond.true.52
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -6004(%rbp)       # 4-byte Spill
	jmp	.LBB125_12
.LBB125_11:                             # %cond.false.62
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -6004(%rbp)       # 4-byte Spill
.LBB125_12:                             # %cond.end.68
	movl	-6004(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movl	-6000(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB125_33
	jmp	.LBB125_30
.LBB125_13:                             # %cond.false.72
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_14
	jmp	.LBB125_15
.LBB125_14:                             # %cond.true.73
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_33
	jmp	.LBB125_30
.LBB125_15:                             # %cond.false.74
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_17
# BB#16:                                # %cond.true.82
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6008(%rbp)       # 4-byte Spill
	jmp	.LBB125_18
.LBB125_17:                             # %cond.false.102
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6008(%rbp)       # 4-byte Spill
.LBB125_18:                             # %cond.end.108
	movl	-6008(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB125_33
	jmp	.LBB125_30
.LBB125_19:                             # %cond.false.115
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_20
	jmp	.LBB125_21
.LBB125_20:                             # %cond.true.116
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_33
	jmp	.LBB125_30
.LBB125_21:                             # %cond.false.117
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_26
# BB#22:                                # %cond.true.122
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -6012(%rbp)       # 4-byte Spill
	jge	.LBB125_24
# BB#23:                                # %cond.true.132
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6016(%rbp)       # 4-byte Spill
	jmp	.LBB125_25
.LBB125_24:                             # %cond.false.152
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6016(%rbp)       # 4-byte Spill
.LBB125_25:                             # %cond.end.158
	movl	-6016(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movl	-6012(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB125_33
	jmp	.LBB125_30
.LBB125_26:                             # %cond.false.163
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_28
# BB#27:                                # %cond.true.171
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -6020(%rbp)       # 4-byte Spill
	jmp	.LBB125_29
.LBB125_28:                             # %cond.false.181
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -6020(%rbp)       # 4-byte Spill
.LBB125_29:                             # %cond.end.187
	movl	-6020(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB125_33
.LBB125_30:                             # %lor.lhs.false.194
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$24, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_32
# BB#31:                                # %land.lhs.true.202
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$24, %edx, %edx
	cmpl	$-128, %edx
	jl	.LBB125_33
.LBB125_32:                             # %lor.lhs.false.208
	movl	$127, %eax
	movq	-8(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$24, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB125_37
.LBB125_33:                             # %cond.true.214
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB125_35
# BB#34:                                # %cond.true.220
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6024(%rbp)       # 4-byte Spill
	jmp	.LBB125_36
.LBB125_35:                             # %cond.false.226
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6024(%rbp)       # 4-byte Spill
.LBB125_36:                             # %cond.end.234
	movl	-6024(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_37:                             # %cond.false.237
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB125_39
# BB#38:                                # %cond.true.243
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6028(%rbp)       # 4-byte Spill
	jmp	.LBB125_40
.LBB125_39:                             # %cond.false.249
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6028(%rbp)       # 4-byte Spill
.LBB125_40:                             # %cond.end.257
	movl	-6028(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_41:                             # %cond.false.260
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_43
# BB#42:                                # %cond.true.266
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6040(%rbp)       # 8-byte Spill
	jmp	.LBB125_44
.LBB125_43:                             # %cond.false.283
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6040(%rbp)       # 8-byte Spill
.LBB125_44:                             # %cond.end.287
	movq	-6040(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_46
# BB#45:                                # %land.lhs.true.291
	cmpq	$0, -8(%rbp)
	jl	.LBB125_72
.LBB125_46:                             # %lor.lhs.false.294
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_47
	jmp	.LBB125_58
.LBB125_47:                             # %cond.true.295
	cmpq	$0, -8(%rbp)
	jge	.LBB125_52
# BB#48:                                # %cond.true.298
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6048(%rbp)       # 8-byte Spill
	jae	.LBB125_50
# BB#49:                                # %cond.true.304
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6056(%rbp)       # 8-byte Spill
	jmp	.LBB125_51
.LBB125_50:                             # %cond.false.312
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6056(%rbp)       # 8-byte Spill
.LBB125_51:                             # %cond.end.316
	movq	-6056(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6064(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6064(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6048(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_72
	jmp	.LBB125_69
.LBB125_52:                             # %cond.false.321
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_53
	jmp	.LBB125_54
.LBB125_53:                             # %cond.true.322
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_72
	jmp	.LBB125_69
.LBB125_54:                             # %cond.false.323
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_56
# BB#55:                                # %cond.true.329
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6072(%rbp)       # 8-byte Spill
	jmp	.LBB125_57
.LBB125_56:                             # %cond.false.346
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6072(%rbp)       # 8-byte Spill
.LBB125_57:                             # %cond.end.350
	movq	-6072(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6080(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6080(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_72
	jmp	.LBB125_69
.LBB125_58:                             # %cond.false.355
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_59
	jmp	.LBB125_60
.LBB125_59:                             # %cond.true.356
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_72
	jmp	.LBB125_69
.LBB125_60:                             # %cond.false.357
	cmpq	$0, -8(%rbp)
	jge	.LBB125_65
# BB#61:                                # %cond.true.360
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6088(%rbp)       # 8-byte Spill
	jae	.LBB125_63
# BB#62:                                # %cond.true.366
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6096(%rbp)       # 8-byte Spill
	jmp	.LBB125_64
.LBB125_63:                             # %cond.false.383
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6096(%rbp)       # 8-byte Spill
.LBB125_64:                             # %cond.end.387
	movq	-6096(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6104(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6104(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6088(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_72
	jmp	.LBB125_69
.LBB125_65:                             # %cond.false.392
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_67
# BB#66:                                # %cond.true.398
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6112(%rbp)       # 8-byte Spill
	jmp	.LBB125_68
.LBB125_67:                             # %cond.false.406
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6112(%rbp)       # 8-byte Spill
.LBB125_68:                             # %cond.end.410
	movq	-6112(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6120(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6120(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_72
.LBB125_69:                             # %lor.lhs.false.415
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_71
# BB#70:                                # %land.lhs.true.421
	imulq	$24, -8(%rbp), %rax
	cmpq	$-128, %rax
	jb	.LBB125_72
.LBB125_71:                             # %lor.lhs.false.425
	movl	$127, %eax
	movl	%eax, %ecx
	imulq	$24, -8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB125_76
.LBB125_72:                             # %cond.true.429
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB125_74
# BB#73:                                # %cond.true.435
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6124(%rbp)       # 4-byte Spill
	jmp	.LBB125_75
.LBB125_74:                             # %cond.false.441
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6124(%rbp)       # 4-byte Spill
.LBB125_75:                             # %cond.end.449
	movl	-6124(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_76:                             # %cond.false.452
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB125_78
# BB#77:                                # %cond.true.458
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6128(%rbp)       # 4-byte Spill
	jmp	.LBB125_79
.LBB125_78:                             # %cond.false.464
	movq	-8(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$24, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6128(%rbp)       # 4-byte Spill
.LBB125_79:                             # %cond.end.472
	movl	-6128(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_80:                             # %cond.false.475
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_81
	jmp	.LBB125_160
.LBB125_81:                             # %cond.true.476
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_82
	jmp	.LBB125_121
.LBB125_82:                             # %cond.true.477
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_84
# BB#83:                                # %cond.true.485
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6132(%rbp)       # 4-byte Spill
	jmp	.LBB125_85
.LBB125_84:                             # %cond.false.505
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6132(%rbp)       # 4-byte Spill
.LBB125_85:                             # %cond.end.511
	movl	-6132(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB125_87
# BB#86:                                # %land.lhs.true.515
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB125_113
.LBB125_87:                             # %lor.lhs.false.520
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_88
	jmp	.LBB125_99
.LBB125_88:                             # %cond.true.521
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_93
# BB#89:                                # %cond.true.526
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -6136(%rbp)       # 4-byte Spill
	jge	.LBB125_91
# BB#90:                                # %cond.true.536
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -6140(%rbp)       # 4-byte Spill
	jmp	.LBB125_92
.LBB125_91:                             # %cond.false.546
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -6140(%rbp)       # 4-byte Spill
.LBB125_92:                             # %cond.end.552
	movl	-6140(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movl	-6136(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB125_113
	jmp	.LBB125_110
.LBB125_93:                             # %cond.false.557
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_94
	jmp	.LBB125_95
.LBB125_94:                             # %cond.true.558
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_113
	jmp	.LBB125_110
.LBB125_95:                             # %cond.false.559
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_97
# BB#96:                                # %cond.true.567
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6144(%rbp)       # 4-byte Spill
	jmp	.LBB125_98
.LBB125_97:                             # %cond.false.587
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6144(%rbp)       # 4-byte Spill
.LBB125_98:                             # %cond.end.593
	movl	-6144(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB125_113
	jmp	.LBB125_110
.LBB125_99:                             # %cond.false.600
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_100
	jmp	.LBB125_101
.LBB125_100:                            # %cond.true.601
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_113
	jmp	.LBB125_110
.LBB125_101:                            # %cond.false.602
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_106
# BB#102:                               # %cond.true.607
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -6148(%rbp)       # 4-byte Spill
	jge	.LBB125_104
# BB#103:                               # %cond.true.617
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6152(%rbp)       # 4-byte Spill
	jmp	.LBB125_105
.LBB125_104:                            # %cond.false.637
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6152(%rbp)       # 4-byte Spill
.LBB125_105:                            # %cond.end.643
	movl	-6152(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movl	-6148(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB125_113
	jmp	.LBB125_110
.LBB125_106:                            # %cond.false.648
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_108
# BB#107:                               # %cond.true.656
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -6156(%rbp)       # 4-byte Spill
	jmp	.LBB125_109
.LBB125_108:                            # %cond.false.666
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -6156(%rbp)       # 4-byte Spill
.LBB125_109:                            # %cond.end.672
	movl	-6156(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB125_113
.LBB125_110:                            # %lor.lhs.false.679
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$24, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_112
# BB#111:                               # %land.lhs.true.687
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$24, %edx, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB125_113
.LBB125_112:                            # %lor.lhs.false.693
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-8(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$24, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB125_117
.LBB125_113:                            # %cond.true.699
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_115
# BB#114:                               # %cond.true.705
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6160(%rbp)       # 4-byte Spill
	jmp	.LBB125_116
.LBB125_115:                            # %cond.false.711
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6160(%rbp)       # 4-byte Spill
.LBB125_116:                            # %cond.end.719
	movl	-6160(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_117:                            # %cond.false.722
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_119
# BB#118:                               # %cond.true.728
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6164(%rbp)       # 4-byte Spill
	jmp	.LBB125_120
.LBB125_119:                            # %cond.false.734
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6164(%rbp)       # 4-byte Spill
.LBB125_120:                            # %cond.end.742
	movl	-6164(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_121:                            # %cond.false.745
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_123
# BB#122:                               # %cond.true.751
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6176(%rbp)       # 8-byte Spill
	jmp	.LBB125_124
.LBB125_123:                            # %cond.false.768
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6176(%rbp)       # 8-byte Spill
.LBB125_124:                            # %cond.end.772
	movq	-6176(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_126
# BB#125:                               # %land.lhs.true.776
	cmpq	$0, -8(%rbp)
	jl	.LBB125_152
.LBB125_126:                            # %lor.lhs.false.779
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_127
	jmp	.LBB125_138
.LBB125_127:                            # %cond.true.780
	cmpq	$0, -8(%rbp)
	jge	.LBB125_132
# BB#128:                               # %cond.true.783
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6184(%rbp)       # 8-byte Spill
	jae	.LBB125_130
# BB#129:                               # %cond.true.789
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6192(%rbp)       # 8-byte Spill
	jmp	.LBB125_131
.LBB125_130:                            # %cond.false.797
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6192(%rbp)       # 8-byte Spill
.LBB125_131:                            # %cond.end.801
	movq	-6192(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6200(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6200(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6184(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_152
	jmp	.LBB125_149
.LBB125_132:                            # %cond.false.806
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_133
	jmp	.LBB125_134
.LBB125_133:                            # %cond.true.807
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_152
	jmp	.LBB125_149
.LBB125_134:                            # %cond.false.808
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_136
# BB#135:                               # %cond.true.814
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6208(%rbp)       # 8-byte Spill
	jmp	.LBB125_137
.LBB125_136:                            # %cond.false.831
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6208(%rbp)       # 8-byte Spill
.LBB125_137:                            # %cond.end.835
	movq	-6208(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6216(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6216(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_152
	jmp	.LBB125_149
.LBB125_138:                            # %cond.false.840
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_139
	jmp	.LBB125_140
.LBB125_139:                            # %cond.true.841
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_152
	jmp	.LBB125_149
.LBB125_140:                            # %cond.false.842
	cmpq	$0, -8(%rbp)
	jge	.LBB125_145
# BB#141:                               # %cond.true.845
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6224(%rbp)       # 8-byte Spill
	jae	.LBB125_143
# BB#142:                               # %cond.true.851
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6232(%rbp)       # 8-byte Spill
	jmp	.LBB125_144
.LBB125_143:                            # %cond.false.868
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6232(%rbp)       # 8-byte Spill
.LBB125_144:                            # %cond.end.872
	movq	-6232(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6240(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6240(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6224(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_152
	jmp	.LBB125_149
.LBB125_145:                            # %cond.false.877
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_147
# BB#146:                               # %cond.true.883
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6248(%rbp)       # 8-byte Spill
	jmp	.LBB125_148
.LBB125_147:                            # %cond.false.891
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6248(%rbp)       # 8-byte Spill
.LBB125_148:                            # %cond.end.895
	movq	-6248(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6256(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6256(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_152
.LBB125_149:                            # %lor.lhs.false.900
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_151
# BB#150:                               # %land.lhs.true.906
	imulq	$24, -8(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jb	.LBB125_152
.LBB125_151:                            # %lor.lhs.false.910
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	imulq	$24, -8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB125_156
.LBB125_152:                            # %cond.true.914
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_154
# BB#153:                               # %cond.true.920
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6260(%rbp)       # 4-byte Spill
	jmp	.LBB125_155
.LBB125_154:                            # %cond.false.926
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6260(%rbp)       # 4-byte Spill
.LBB125_155:                            # %cond.end.934
	movl	-6260(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_156:                            # %cond.false.937
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_158
# BB#157:                               # %cond.true.943
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6264(%rbp)       # 4-byte Spill
	jmp	.LBB125_159
.LBB125_158:                            # %cond.false.949
	movq	-8(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$24, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6264(%rbp)       # 4-byte Spill
.LBB125_159:                            # %cond.end.957
	movl	-6264(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_160:                            # %cond.false.960
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_161
	jmp	.LBB125_240
.LBB125_161:                            # %cond.true.961
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_162
	jmp	.LBB125_201
.LBB125_162:                            # %cond.true.962
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_164
# BB#163:                               # %cond.true.969
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -6268(%rbp)       # 4-byte Spill
	jmp	.LBB125_165
.LBB125_164:                            # %cond.false.987
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -6268(%rbp)       # 4-byte Spill
.LBB125_165:                            # %cond.end.992
	movl	-6268(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB125_167
# BB#166:                               # %land.lhs.true.996
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB125_193
.LBB125_167:                            # %lor.lhs.false.1000
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_168
	jmp	.LBB125_179
.LBB125_168:                            # %cond.true.1001
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_173
# BB#169:                               # %cond.true.1005
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -6272(%rbp)       # 4-byte Spill
	jge	.LBB125_171
# BB#170:                               # %cond.true.1013
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -6276(%rbp)       # 4-byte Spill
	jmp	.LBB125_172
.LBB125_171:                            # %cond.false.1022
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -6276(%rbp)       # 4-byte Spill
.LBB125_172:                            # %cond.end.1027
	movl	-6276(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movl	-6272(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB125_193
	jmp	.LBB125_190
.LBB125_173:                            # %cond.false.1032
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_174
	jmp	.LBB125_175
.LBB125_174:                            # %cond.true.1033
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_193
	jmp	.LBB125_190
.LBB125_175:                            # %cond.false.1034
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_177
# BB#176:                               # %cond.true.1041
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -6280(%rbp)       # 4-byte Spill
	jmp	.LBB125_178
.LBB125_177:                            # %cond.false.1059
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -6280(%rbp)       # 4-byte Spill
.LBB125_178:                            # %cond.end.1064
	movl	-6280(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB125_193
	jmp	.LBB125_190
.LBB125_179:                            # %cond.false.1070
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_180
	jmp	.LBB125_181
.LBB125_180:                            # %cond.true.1071
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_193
	jmp	.LBB125_190
.LBB125_181:                            # %cond.false.1072
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_186
# BB#182:                               # %cond.true.1076
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -6284(%rbp)       # 4-byte Spill
	jge	.LBB125_184
# BB#183:                               # %cond.true.1084
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -6288(%rbp)       # 4-byte Spill
	jmp	.LBB125_185
.LBB125_184:                            # %cond.false.1102
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -6288(%rbp)       # 4-byte Spill
.LBB125_185:                            # %cond.end.1107
	movl	-6288(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movl	-6284(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB125_193
	jmp	.LBB125_190
.LBB125_186:                            # %cond.false.1112
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_188
# BB#187:                               # %cond.true.1119
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -6292(%rbp)       # 4-byte Spill
	jmp	.LBB125_189
.LBB125_188:                            # %cond.false.1128
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -6292(%rbp)       # 4-byte Spill
.LBB125_189:                            # %cond.end.1133
	movl	-6292(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB125_193
.LBB125_190:                            # %lor.lhs.false.1139
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_192
# BB#191:                               # %land.lhs.true.1146
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB125_193
.LBB125_192:                            # %lor.lhs.false.1151
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-8(%rbp), %rcx
	movl	%ecx, %edx
	imull	$24, %edx, %edx
	cmpl	%edx, %eax
	jge	.LBB125_197
.LBB125_193:                            # %cond.true.1156
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_195
# BB#194:                               # %cond.true.1161
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	movl	%ecx, -6296(%rbp)       # 4-byte Spill
	jmp	.LBB125_196
.LBB125_195:                            # %cond.false.1164
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6296(%rbp)       # 4-byte Spill
.LBB125_196:                            # %cond.end.1169
	movl	-6296(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_197:                            # %cond.false.1172
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_199
# BB#198:                               # %cond.true.1177
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	movl	%ecx, -6300(%rbp)       # 4-byte Spill
	jmp	.LBB125_200
.LBB125_199:                            # %cond.false.1180
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6300(%rbp)       # 4-byte Spill
.LBB125_200:                            # %cond.end.1185
	movl	-6300(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_201:                            # %cond.false.1188
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_203
# BB#202:                               # %cond.true.1194
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6312(%rbp)       # 8-byte Spill
	jmp	.LBB125_204
.LBB125_203:                            # %cond.false.1211
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6312(%rbp)       # 8-byte Spill
.LBB125_204:                            # %cond.end.1215
	movq	-6312(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_206
# BB#205:                               # %land.lhs.true.1219
	cmpq	$0, -8(%rbp)
	jl	.LBB125_232
.LBB125_206:                            # %lor.lhs.false.1222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_207
	jmp	.LBB125_218
.LBB125_207:                            # %cond.true.1223
	cmpq	$0, -8(%rbp)
	jge	.LBB125_212
# BB#208:                               # %cond.true.1226
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6320(%rbp)       # 8-byte Spill
	jae	.LBB125_210
# BB#209:                               # %cond.true.1232
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6328(%rbp)       # 8-byte Spill
	jmp	.LBB125_211
.LBB125_210:                            # %cond.false.1240
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6328(%rbp)       # 8-byte Spill
.LBB125_211:                            # %cond.end.1244
	movq	-6328(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6336(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6336(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6320(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_232
	jmp	.LBB125_229
.LBB125_212:                            # %cond.false.1249
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_213
	jmp	.LBB125_214
.LBB125_213:                            # %cond.true.1250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_232
	jmp	.LBB125_229
.LBB125_214:                            # %cond.false.1251
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_216
# BB#215:                               # %cond.true.1257
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6344(%rbp)       # 8-byte Spill
	jmp	.LBB125_217
.LBB125_216:                            # %cond.false.1274
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6344(%rbp)       # 8-byte Spill
.LBB125_217:                            # %cond.end.1278
	movq	-6344(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6352(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6352(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_232
	jmp	.LBB125_229
.LBB125_218:                            # %cond.false.1283
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_219
	jmp	.LBB125_220
.LBB125_219:                            # %cond.true.1284
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_232
	jmp	.LBB125_229
.LBB125_220:                            # %cond.false.1285
	cmpq	$0, -8(%rbp)
	jge	.LBB125_225
# BB#221:                               # %cond.true.1288
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6360(%rbp)       # 8-byte Spill
	jae	.LBB125_223
# BB#222:                               # %cond.true.1294
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6368(%rbp)       # 8-byte Spill
	jmp	.LBB125_224
.LBB125_223:                            # %cond.false.1311
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6368(%rbp)       # 8-byte Spill
.LBB125_224:                            # %cond.end.1315
	movq	-6368(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6376(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6376(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6360(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_232
	jmp	.LBB125_229
.LBB125_225:                            # %cond.false.1320
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_227
# BB#226:                               # %cond.true.1326
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6384(%rbp)       # 8-byte Spill
	jmp	.LBB125_228
.LBB125_227:                            # %cond.false.1334
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6384(%rbp)       # 8-byte Spill
.LBB125_228:                            # %cond.end.1338
	movq	-6384(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6392(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6392(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_232
.LBB125_229:                            # %lor.lhs.false.1343
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_231
# BB#230:                               # %land.lhs.true.1349
	imulq	$24, -8(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jb	.LBB125_232
.LBB125_231:                            # %lor.lhs.false.1353
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	imulq	$24, -8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB125_236
.LBB125_232:                            # %cond.true.1357
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_234
# BB#233:                               # %cond.true.1362
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	movl	%ecx, -6396(%rbp)       # 4-byte Spill
	jmp	.LBB125_235
.LBB125_234:                            # %cond.false.1365
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6396(%rbp)       # 4-byte Spill
.LBB125_235:                            # %cond.end.1370
	movl	-6396(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_236:                            # %cond.false.1373
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_238
# BB#237:                               # %cond.true.1378
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	movl	%ecx, -6400(%rbp)       # 4-byte Spill
	jmp	.LBB125_239
.LBB125_238:                            # %cond.false.1381
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	imull	$24, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6400(%rbp)       # 4-byte Spill
.LBB125_239:                            # %cond.end.1386
	movl	-6400(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_240:                            # %cond.false.1389
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_241
	jmp	.LBB125_320
.LBB125_241:                            # %cond.true.1390
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_242
	jmp	.LBB125_281
.LBB125_242:                            # %cond.true.1391
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_244
# BB#243:                               # %cond.true.1397
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6408(%rbp)       # 8-byte Spill
	jmp	.LBB125_245
.LBB125_244:                            # %cond.false.1414
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6408(%rbp)       # 8-byte Spill
.LBB125_245:                            # %cond.end.1418
	movq	-6408(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_247
# BB#246:                               # %land.lhs.true.1422
	cmpq	$0, -8(%rbp)
	jl	.LBB125_273
.LBB125_247:                            # %lor.lhs.false.1425
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_248
	jmp	.LBB125_259
.LBB125_248:                            # %cond.true.1426
	cmpq	$0, -8(%rbp)
	jge	.LBB125_253
# BB#249:                               # %cond.true.1429
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6416(%rbp)       # 8-byte Spill
	jge	.LBB125_251
# BB#250:                               # %cond.true.1435
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6424(%rbp)       # 8-byte Spill
	jmp	.LBB125_252
.LBB125_251:                            # %cond.false.1443
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6424(%rbp)       # 8-byte Spill
.LBB125_252:                            # %cond.end.1447
	movq	-6424(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6432(%rbp)       # 8-byte Spill
	cqto
	movq	-6432(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-6416(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB125_273
	jmp	.LBB125_270
.LBB125_253:                            # %cond.false.1452
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_254
	jmp	.LBB125_255
.LBB125_254:                            # %cond.true.1453
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_273
	jmp	.LBB125_270
.LBB125_255:                            # %cond.false.1454
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_257
# BB#256:                               # %cond.true.1460
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6440(%rbp)       # 8-byte Spill
	jmp	.LBB125_258
.LBB125_257:                            # %cond.false.1477
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6440(%rbp)       # 8-byte Spill
.LBB125_258:                            # %cond.end.1481
	movq	-6440(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6448(%rbp)       # 8-byte Spill
	cqto
	movq	-6448(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8(%rbp), %rax
	jl	.LBB125_273
	jmp	.LBB125_270
.LBB125_259:                            # %cond.false.1486
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_260
	jmp	.LBB125_261
.LBB125_260:                            # %cond.true.1487
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_273
	jmp	.LBB125_270
.LBB125_261:                            # %cond.false.1488
	cmpq	$0, -8(%rbp)
	jge	.LBB125_266
# BB#262:                               # %cond.true.1491
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6456(%rbp)       # 8-byte Spill
	jge	.LBB125_264
# BB#263:                               # %cond.true.1497
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6464(%rbp)       # 8-byte Spill
	jmp	.LBB125_265
.LBB125_264:                            # %cond.false.1514
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6464(%rbp)       # 8-byte Spill
.LBB125_265:                            # %cond.end.1518
	movq	-6464(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6472(%rbp)       # 8-byte Spill
	cqto
	movq	-6472(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-6456(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB125_273
	jmp	.LBB125_270
.LBB125_266:                            # %cond.false.1523
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_268
# BB#267:                               # %cond.true.1529
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6480(%rbp)       # 8-byte Spill
	jmp	.LBB125_269
.LBB125_268:                            # %cond.false.1537
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6480(%rbp)       # 8-byte Spill
.LBB125_269:                            # %cond.end.1541
	movq	-6480(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6488(%rbp)       # 8-byte Spill
	cqto
	movq	-6488(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8(%rbp), %rax
	jl	.LBB125_273
.LBB125_270:                            # %lor.lhs.false.1546
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_272
# BB#271:                               # %land.lhs.true.1552
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_273
.LBB125_272:                            # %lor.lhs.false.1556
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_277
.LBB125_273:                            # %cond.true.1560
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_275
# BB#274:                               # %cond.true.1564
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6496(%rbp)       # 8-byte Spill
	jmp	.LBB125_276
.LBB125_275:                            # %cond.false.1566
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6496(%rbp)       # 8-byte Spill
.LBB125_276:                            # %cond.end.1570
	movq	-6496(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_277:                            # %cond.false.1572
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_279
# BB#278:                               # %cond.true.1576
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6504(%rbp)       # 8-byte Spill
	jmp	.LBB125_280
.LBB125_279:                            # %cond.false.1578
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6504(%rbp)       # 8-byte Spill
.LBB125_280:                            # %cond.end.1582
	movq	-6504(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_281:                            # %cond.false.1584
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_283
# BB#282:                               # %cond.true.1590
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6512(%rbp)       # 8-byte Spill
	jmp	.LBB125_284
.LBB125_283:                            # %cond.false.1607
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6512(%rbp)       # 8-byte Spill
.LBB125_284:                            # %cond.end.1611
	movq	-6512(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_286
# BB#285:                               # %land.lhs.true.1615
	cmpq	$0, -8(%rbp)
	jl	.LBB125_312
.LBB125_286:                            # %lor.lhs.false.1618
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_287
	jmp	.LBB125_298
.LBB125_287:                            # %cond.true.1619
	cmpq	$0, -8(%rbp)
	jge	.LBB125_292
# BB#288:                               # %cond.true.1622
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6520(%rbp)       # 8-byte Spill
	jae	.LBB125_290
# BB#289:                               # %cond.true.1628
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6528(%rbp)       # 8-byte Spill
	jmp	.LBB125_291
.LBB125_290:                            # %cond.false.1636
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6528(%rbp)       # 8-byte Spill
.LBB125_291:                            # %cond.end.1640
	movq	-6528(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6536(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6536(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6520(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_312
	jmp	.LBB125_309
.LBB125_292:                            # %cond.false.1645
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_293
	jmp	.LBB125_294
.LBB125_293:                            # %cond.true.1646
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_312
	jmp	.LBB125_309
.LBB125_294:                            # %cond.false.1647
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_296
# BB#295:                               # %cond.true.1653
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6544(%rbp)       # 8-byte Spill
	jmp	.LBB125_297
.LBB125_296:                            # %cond.false.1670
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6544(%rbp)       # 8-byte Spill
.LBB125_297:                            # %cond.end.1674
	movq	-6544(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6552(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6552(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_312
	jmp	.LBB125_309
.LBB125_298:                            # %cond.false.1679
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_299
	jmp	.LBB125_300
.LBB125_299:                            # %cond.true.1680
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_312
	jmp	.LBB125_309
.LBB125_300:                            # %cond.false.1681
	cmpq	$0, -8(%rbp)
	jge	.LBB125_305
# BB#301:                               # %cond.true.1684
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6560(%rbp)       # 8-byte Spill
	jae	.LBB125_303
# BB#302:                               # %cond.true.1690
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6568(%rbp)       # 8-byte Spill
	jmp	.LBB125_304
.LBB125_303:                            # %cond.false.1707
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6568(%rbp)       # 8-byte Spill
.LBB125_304:                            # %cond.end.1711
	movq	-6568(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6576(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6576(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6560(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_312
	jmp	.LBB125_309
.LBB125_305:                            # %cond.false.1716
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_307
# BB#306:                               # %cond.true.1722
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6584(%rbp)       # 8-byte Spill
	jmp	.LBB125_308
.LBB125_307:                            # %cond.false.1730
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6584(%rbp)       # 8-byte Spill
.LBB125_308:                            # %cond.end.1734
	movq	-6584(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6592(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6592(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_312
.LBB125_309:                            # %lor.lhs.false.1739
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_311
# BB#310:                               # %land.lhs.true.1745
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	jb	.LBB125_312
.LBB125_311:                            # %lor.lhs.false.1749
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB125_316
.LBB125_312:                            # %cond.true.1753
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_314
# BB#313:                               # %cond.true.1757
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6600(%rbp)       # 8-byte Spill
	jmp	.LBB125_315
.LBB125_314:                            # %cond.false.1759
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6600(%rbp)       # 8-byte Spill
.LBB125_315:                            # %cond.end.1763
	movq	-6600(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_316:                            # %cond.false.1765
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_318
# BB#317:                               # %cond.true.1769
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6608(%rbp)       # 8-byte Spill
	jmp	.LBB125_319
.LBB125_318:                            # %cond.false.1771
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6608(%rbp)       # 8-byte Spill
.LBB125_319:                            # %cond.end.1775
	movq	-6608(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_320:                            # %cond.false.1777
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_321
	jmp	.LBB125_360
.LBB125_321:                            # %cond.true.1778
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_323
# BB#322:                               # %cond.true.1784
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6616(%rbp)       # 8-byte Spill
	jmp	.LBB125_324
.LBB125_323:                            # %cond.false.1801
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6616(%rbp)       # 8-byte Spill
.LBB125_324:                            # %cond.end.1805
	movq	-6616(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_326
# BB#325:                               # %land.lhs.true.1809
	cmpq	$0, -8(%rbp)
	jl	.LBB125_352
.LBB125_326:                            # %lor.lhs.false.1812
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_327
	jmp	.LBB125_338
.LBB125_327:                            # %cond.true.1813
	cmpq	$0, -8(%rbp)
	jge	.LBB125_332
# BB#328:                               # %cond.true.1816
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6624(%rbp)       # 8-byte Spill
	jge	.LBB125_330
# BB#329:                               # %cond.true.1822
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6632(%rbp)       # 8-byte Spill
	jmp	.LBB125_331
.LBB125_330:                            # %cond.false.1830
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6632(%rbp)       # 8-byte Spill
.LBB125_331:                            # %cond.end.1834
	movq	-6632(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6640(%rbp)       # 8-byte Spill
	cqto
	movq	-6640(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-6624(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB125_352
	jmp	.LBB125_349
.LBB125_332:                            # %cond.false.1839
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_333
	jmp	.LBB125_334
.LBB125_333:                            # %cond.true.1840
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_352
	jmp	.LBB125_349
.LBB125_334:                            # %cond.false.1841
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_336
# BB#335:                               # %cond.true.1847
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6648(%rbp)       # 8-byte Spill
	jmp	.LBB125_337
.LBB125_336:                            # %cond.false.1864
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6648(%rbp)       # 8-byte Spill
.LBB125_337:                            # %cond.end.1868
	movq	-6648(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6656(%rbp)       # 8-byte Spill
	cqto
	movq	-6656(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8(%rbp), %rax
	jl	.LBB125_352
	jmp	.LBB125_349
.LBB125_338:                            # %cond.false.1873
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_339
	jmp	.LBB125_340
.LBB125_339:                            # %cond.true.1874
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_352
	jmp	.LBB125_349
.LBB125_340:                            # %cond.false.1875
	cmpq	$0, -8(%rbp)
	jge	.LBB125_345
# BB#341:                               # %cond.true.1878
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6664(%rbp)       # 8-byte Spill
	jge	.LBB125_343
# BB#342:                               # %cond.true.1884
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6672(%rbp)       # 8-byte Spill
	jmp	.LBB125_344
.LBB125_343:                            # %cond.false.1901
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6672(%rbp)       # 8-byte Spill
.LBB125_344:                            # %cond.end.1905
	movq	-6672(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6680(%rbp)       # 8-byte Spill
	cqto
	movq	-6680(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-6664(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB125_352
	jmp	.LBB125_349
.LBB125_345:                            # %cond.false.1910
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_347
# BB#346:                               # %cond.true.1916
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6688(%rbp)       # 8-byte Spill
	jmp	.LBB125_348
.LBB125_347:                            # %cond.false.1924
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6688(%rbp)       # 8-byte Spill
.LBB125_348:                            # %cond.end.1928
	movq	-6688(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rdx, -6696(%rbp)       # 8-byte Spill
	cqto
	movq	-6696(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-8(%rbp), %rax
	jl	.LBB125_352
.LBB125_349:                            # %lor.lhs.false.1933
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_351
# BB#350:                               # %land.lhs.true.1939
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_352
.LBB125_351:                            # %lor.lhs.false.1943
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_356
.LBB125_352:                            # %cond.true.1947
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_354
# BB#353:                               # %cond.true.1951
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6704(%rbp)       # 8-byte Spill
	jmp	.LBB125_355
.LBB125_354:                            # %cond.false.1953
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6704(%rbp)       # 8-byte Spill
.LBB125_355:                            # %cond.end.1957
	movq	-6704(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_356:                            # %cond.false.1959
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_358
# BB#357:                               # %cond.true.1963
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6712(%rbp)       # 8-byte Spill
	jmp	.LBB125_359
.LBB125_358:                            # %cond.false.1965
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6712(%rbp)       # 8-byte Spill
.LBB125_359:                            # %cond.end.1969
	movq	-6712(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_360:                            # %cond.false.1971
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_362
# BB#361:                               # %cond.true.1977
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6720(%rbp)       # 8-byte Spill
	jmp	.LBB125_363
.LBB125_362:                            # %cond.false.1994
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6720(%rbp)       # 8-byte Spill
.LBB125_363:                            # %cond.end.1998
	movq	-6720(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB125_365
# BB#364:                               # %land.lhs.true.2002
	cmpq	$0, -8(%rbp)
	jl	.LBB125_391
.LBB125_365:                            # %lor.lhs.false.2005
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_366
	jmp	.LBB125_377
.LBB125_366:                            # %cond.true.2006
	cmpq	$0, -8(%rbp)
	jge	.LBB125_371
# BB#367:                               # %cond.true.2009
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6728(%rbp)       # 8-byte Spill
	jae	.LBB125_369
# BB#368:                               # %cond.true.2015
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6736(%rbp)       # 8-byte Spill
	jmp	.LBB125_370
.LBB125_369:                            # %cond.false.2023
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6736(%rbp)       # 8-byte Spill
.LBB125_370:                            # %cond.end.2027
	movq	-6736(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6744(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6744(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6728(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_391
	jmp	.LBB125_388
.LBB125_371:                            # %cond.false.2032
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_372
	jmp	.LBB125_373
.LBB125_372:                            # %cond.true.2033
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_391
	jmp	.LBB125_388
.LBB125_373:                            # %cond.false.2034
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_375
# BB#374:                               # %cond.true.2040
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6752(%rbp)       # 8-byte Spill
	jmp	.LBB125_376
.LBB125_375:                            # %cond.false.2057
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6752(%rbp)       # 8-byte Spill
.LBB125_376:                            # %cond.end.2061
	movq	-6752(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6760(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6760(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_391
	jmp	.LBB125_388
.LBB125_377:                            # %cond.false.2066
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_378
	jmp	.LBB125_379
.LBB125_378:                            # %cond.true.2067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_391
	jmp	.LBB125_388
.LBB125_379:                            # %cond.false.2068
	cmpq	$0, -8(%rbp)
	jge	.LBB125_384
# BB#380:                               # %cond.true.2071
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -6768(%rbp)       # 8-byte Spill
	jae	.LBB125_382
# BB#381:                               # %cond.true.2077
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
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
	movq	-8(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6776(%rbp)       # 8-byte Spill
	jmp	.LBB125_383
.LBB125_382:                            # %cond.false.2094
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6776(%rbp)       # 8-byte Spill
.LBB125_383:                            # %cond.end.2098
	movq	-6776(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6784(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6784(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	movq	-6768(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jb	.LBB125_391
	jmp	.LBB125_388
.LBB125_384:                            # %cond.false.2103
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_386
# BB#385:                               # %cond.true.2109
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6792(%rbp)       # 8-byte Spill
	jmp	.LBB125_387
.LBB125_386:                            # %cond.false.2117
	movq	-8(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6792(%rbp)       # 8-byte Spill
.LBB125_387:                            # %cond.end.2121
	movq	-6792(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -6800(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-6800(%rbp), %rsi       # 8-byte Reload
	divq	%rsi
	cmpq	-8(%rbp), %rax
	jb	.LBB125_391
.LBB125_388:                            # %lor.lhs.false.2126
	imulq	$24, -8(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_390
# BB#389:                               # %land.lhs.true.2132
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	jb	.LBB125_391
.LBB125_390:                            # %lor.lhs.false.2136
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB125_395
.LBB125_391:                            # %cond.true.2140
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_393
# BB#392:                               # %cond.true.2144
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6808(%rbp)       # 8-byte Spill
	jmp	.LBB125_394
.LBB125_393:                            # %cond.false.2146
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6808(%rbp)       # 8-byte Spill
.LBB125_394:                            # %cond.end.2150
	movq	-6808(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_399
.LBB125_395:                            # %cond.false.2152
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$24, -8(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_397
# BB#396:                               # %cond.true.2156
	imulq	$24, -8(%rbp), %rax
	movq	%rax, -6816(%rbp)       # 8-byte Spill
	jmp	.LBB125_398
.LBB125_397:                            # %cond.false.2158
	imulq	$24, -8(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -6816(%rbp)       # 8-byte Spill
.LBB125_398:                            # %cond.end.2162
	movq	-6816(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
.LBB125_399:                            # %lor.lhs.false.2164
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_400
	jmp	.LBB125_459
.LBB125_400:                            # %cond.true.2165
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_401
	jmp	.LBB125_430
.LBB125_401:                            # %cond.true.2166
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_403
# BB#402:                               # %cond.true.2175
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6820(%rbp)       # 4-byte Spill
	jmp	.LBB125_404
.LBB125_403:                            # %cond.false.2197
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6820(%rbp)       # 4-byte Spill
.LBB125_404:                            # %cond.end.2204
	movl	-6820(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB125_414
# BB#405:                               # %cond.true.2208
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_410
# BB#406:                               # %cond.true.2213
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_408
# BB#407:                               # %cond.true.2222
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6824(%rbp)       # 4-byte Spill
	jmp	.LBB125_409
.LBB125_408:                            # %cond.false.2244
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6824(%rbp)       # 4-byte Spill
.LBB125_409:                            # %cond.end.2251
	movl	-6824(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	movq	-4160(%rbp), %rdx
	movb	%dl, %sil
	movsbl	%sil, %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	jl	.LBB125_422
	jmp	.LBB125_419
.LBB125_410:                            # %cond.false.2258
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_412
# BB#411:                               # %cond.true.2267
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -6828(%rbp)       # 4-byte Spill
	jmp	.LBB125_413
.LBB125_412:                            # %cond.false.2278
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -6828(%rbp)       # 4-byte Spill
.LBB125_413:                            # %cond.end.2285
	movl	-6828(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	cmpl	$24, %eax
	jl	.LBB125_422
	jmp	.LBB125_419
.LBB125_414:                            # %cond.false.2292
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_415
	jmp	.LBB125_416
.LBB125_415:                            # %cond.true.2293
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$24, %esi
	cmpl	%esi, %edx
	jle	.LBB125_422
	jmp	.LBB125_419
.LBB125_416:                            # %cond.false.2301
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_418
# BB#417:                               # %cond.true.2306
	movl	$24, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$24, %esi
	cmpl	%esi, %eax
	jle	.LBB125_422
	jmp	.LBB125_419
.LBB125_418:                            # %cond.false.2312
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$24, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB125_422
.LBB125_419:                            # %lor.lhs.false.2320
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_421
# BB#420:                               # %land.lhs.true.2328
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$24, %edx
	cmpl	$-128, %edx
	jl	.LBB125_422
.LBB125_421:                            # %lor.lhs.false.2334
	movl	$127, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$24, %esi
	cmpl	%esi, %eax
	jge	.LBB125_426
.LBB125_422:                            # %cond.true.2340
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	cmpl	$127, %edx
	jg	.LBB125_424
# BB#423:                               # %cond.true.2346
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6832(%rbp)       # 4-byte Spill
	jmp	.LBB125_425
.LBB125_424:                            # %cond.false.2352
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6832(%rbp)       # 4-byte Spill
.LBB125_425:                            # %cond.end.2360
	movl	-6832(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_426:                            # %cond.false.2363
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	cmpl	$127, %edx
	jg	.LBB125_428
# BB#427:                               # %cond.true.2369
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6836(%rbp)       # 4-byte Spill
	jmp	.LBB125_429
.LBB125_428:                            # %cond.false.2375
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6836(%rbp)       # 4-byte Spill
.LBB125_429:                            # %cond.end.2383
	movl	-6836(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_430:                            # %cond.false.2386
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_432
# BB#431:                               # %cond.true.2393
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6848(%rbp)       # 8-byte Spill
	jmp	.LBB125_433
.LBB125_432:                            # %cond.false.2412
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6848(%rbp)       # 8-byte Spill
.LBB125_433:                            # %cond.end.2417
	movq	-6848(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jae	.LBB125_443
# BB#434:                               # %cond.true.2421
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_439
# BB#435:                               # %cond.true.2424
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_437
# BB#436:                               # %cond.true.2431
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6856(%rbp)       # 8-byte Spill
	jmp	.LBB125_438
.LBB125_437:                            # %cond.false.2450
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6856(%rbp)       # 8-byte Spill
.LBB125_438:                            # %cond.end.2455
	movq	-6856(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.LBB125_451
	jmp	.LBB125_448
.LBB125_439:                            # %cond.false.2460
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_441
# BB#440:                               # %cond.true.2467
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6864(%rbp)       # 8-byte Spill
	jmp	.LBB125_442
.LBB125_441:                            # %cond.false.2476
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6864(%rbp)       # 8-byte Spill
.LBB125_442:                            # %cond.end.2481
	movq	-6864(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jb	.LBB125_451
	jmp	.LBB125_448
.LBB125_443:                            # %cond.false.2486
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_444
	jmp	.LBB125_445
.LBB125_444:                            # %cond.true.2487
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB125_451
	jmp	.LBB125_448
.LBB125_445:                            # %cond.false.2491
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_447
# BB#446:                               # %cond.true.2494
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB125_451
	jmp	.LBB125_448
.LBB125_447:                            # %cond.false.2498
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jb	.LBB125_451
.LBB125_448:                            # %lor.lhs.false.2502
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_450
# BB#449:                               # %land.lhs.true.2508
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	$-128, %rax
	jb	.LBB125_451
.LBB125_450:                            # %lor.lhs.false.2512
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB125_455
.LBB125_451:                            # %cond.true.2516
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	cmpl	$127, %edx
	jg	.LBB125_453
# BB#452:                               # %cond.true.2522
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6868(%rbp)       # 4-byte Spill
	jmp	.LBB125_454
.LBB125_453:                            # %cond.false.2528
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6868(%rbp)       # 4-byte Spill
.LBB125_454:                            # %cond.end.2536
	movl	-6868(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_455:                            # %cond.false.2539
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	cmpl	$127, %edx
	jg	.LBB125_457
# BB#456:                               # %cond.true.2545
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -6872(%rbp)       # 4-byte Spill
	jmp	.LBB125_458
.LBB125_457:                            # %cond.false.2551
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	addl	$24, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -6872(%rbp)       # 4-byte Spill
.LBB125_458:                            # %cond.end.2559
	movl	-6872(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_459:                            # %cond.false.2562
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_460
	jmp	.LBB125_519
.LBB125_460:                            # %cond.true.2563
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_461
	jmp	.LBB125_490
.LBB125_461:                            # %cond.true.2564
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_463
# BB#462:                               # %cond.true.2573
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6876(%rbp)       # 4-byte Spill
	jmp	.LBB125_464
.LBB125_463:                            # %cond.false.2595
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6876(%rbp)       # 4-byte Spill
.LBB125_464:                            # %cond.end.2602
	movl	-6876(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB125_474
# BB#465:                               # %cond.true.2606
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_470
# BB#466:                               # %cond.true.2611
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_468
# BB#467:                               # %cond.true.2620
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	addl	$24, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -6880(%rbp)       # 4-byte Spill
	jmp	.LBB125_469
.LBB125_468:                            # %cond.false.2642
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -6880(%rbp)       # 4-byte Spill
.LBB125_469:                            # %cond.end.2649
	movl	-6880(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	movq	-4160(%rbp), %rdx
	movw	%dx, %si
	movswl	%si, %edi
	subl	%edi, %eax
	cmpl	%eax, %ecx
	jl	.LBB125_482
	jmp	.LBB125_479
.LBB125_470:                            # %cond.false.2656
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_472
# BB#471:                               # %cond.true.2665
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -6884(%rbp)       # 4-byte Spill
	jmp	.LBB125_473
.LBB125_472:                            # %cond.false.2676
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -6884(%rbp)       # 4-byte Spill
.LBB125_473:                            # %cond.end.2683
	movl	-6884(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	cmpl	$24, %eax
	jl	.LBB125_482
	jmp	.LBB125_479
.LBB125_474:                            # %cond.false.2690
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_475
	jmp	.LBB125_476
.LBB125_475:                            # %cond.true.2691
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$24, %esi
	cmpl	%esi, %edx
	jle	.LBB125_482
	jmp	.LBB125_479
.LBB125_476:                            # %cond.false.2699
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_478
# BB#477:                               # %cond.true.2704
	movl	$24, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$24, %esi
	cmpl	%esi, %eax
	jle	.LBB125_482
	jmp	.LBB125_479
.LBB125_478:                            # %cond.false.2710
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$24, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB125_482
.LBB125_479:                            # %lor.lhs.false.2718
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_481
# BB#480:                               # %land.lhs.true.2726
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$24, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB125_482
.LBB125_481:                            # %lor.lhs.false.2732
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$24, %esi
	cmpl	%esi, %eax
	jge	.LBB125_486
.LBB125_482:                            # %cond.true.2738
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_484
# BB#483:                               # %cond.true.2744
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6888(%rbp)       # 4-byte Spill
	jmp	.LBB125_485
.LBB125_484:                            # %cond.false.2750
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6888(%rbp)       # 4-byte Spill
.LBB125_485:                            # %cond.end.2758
	movl	-6888(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_486:                            # %cond.false.2761
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_488
# BB#487:                               # %cond.true.2767
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6892(%rbp)       # 4-byte Spill
	jmp	.LBB125_489
.LBB125_488:                            # %cond.false.2773
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6892(%rbp)       # 4-byte Spill
.LBB125_489:                            # %cond.end.2781
	movl	-6892(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_490:                            # %cond.false.2784
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_492
# BB#491:                               # %cond.true.2791
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6904(%rbp)       # 8-byte Spill
	jmp	.LBB125_493
.LBB125_492:                            # %cond.false.2810
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6904(%rbp)       # 8-byte Spill
.LBB125_493:                            # %cond.end.2815
	movq	-6904(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jae	.LBB125_503
# BB#494:                               # %cond.true.2819
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_499
# BB#495:                               # %cond.true.2822
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_497
# BB#496:                               # %cond.true.2829
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6912(%rbp)       # 8-byte Spill
	jmp	.LBB125_498
.LBB125_497:                            # %cond.false.2848
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6912(%rbp)       # 8-byte Spill
.LBB125_498:                            # %cond.end.2853
	movq	-6912(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.LBB125_511
	jmp	.LBB125_508
.LBB125_499:                            # %cond.false.2858
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_501
# BB#500:                               # %cond.true.2865
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6920(%rbp)       # 8-byte Spill
	jmp	.LBB125_502
.LBB125_501:                            # %cond.false.2874
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6920(%rbp)       # 8-byte Spill
.LBB125_502:                            # %cond.end.2879
	movq	-6920(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jb	.LBB125_511
	jmp	.LBB125_508
.LBB125_503:                            # %cond.false.2884
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_504
	jmp	.LBB125_505
.LBB125_504:                            # %cond.true.2885
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB125_511
	jmp	.LBB125_508
.LBB125_505:                            # %cond.false.2889
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_507
# BB#506:                               # %cond.true.2892
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB125_511
	jmp	.LBB125_508
.LBB125_507:                            # %cond.false.2896
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jb	.LBB125_511
.LBB125_508:                            # %lor.lhs.false.2900
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_510
# BB#509:                               # %land.lhs.true.2906
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jb	.LBB125_511
.LBB125_510:                            # %lor.lhs.false.2910
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB125_515
.LBB125_511:                            # %cond.true.2914
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_513
# BB#512:                               # %cond.true.2920
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6924(%rbp)       # 4-byte Spill
	jmp	.LBB125_514
.LBB125_513:                            # %cond.false.2926
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6924(%rbp)       # 4-byte Spill
.LBB125_514:                            # %cond.end.2934
	movl	-6924(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_515:                            # %cond.false.2937
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_517
# BB#516:                               # %cond.true.2943
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -6928(%rbp)       # 4-byte Spill
	jmp	.LBB125_518
.LBB125_517:                            # %cond.false.2949
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	addl	$24, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -6928(%rbp)       # 4-byte Spill
.LBB125_518:                            # %cond.end.2957
	movl	-6928(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_519:                            # %cond.false.2960
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_520
	jmp	.LBB125_579
.LBB125_520:                            # %cond.true.2961
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_521
	jmp	.LBB125_550
.LBB125_521:                            # %cond.true.2962
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_523
# BB#522:                               # %cond.true.2970
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -6932(%rbp)       # 4-byte Spill
	jmp	.LBB125_524
.LBB125_523:                            # %cond.false.2990
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -6932(%rbp)       # 4-byte Spill
.LBB125_524:                            # %cond.end.2996
	movl	-6932(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB125_534
# BB#525:                               # %cond.true.3000
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_530
# BB#526:                               # %cond.true.3004
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_528
# BB#527:                               # %cond.true.3012
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	addl	$24, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -6936(%rbp)       # 4-byte Spill
	jmp	.LBB125_529
.LBB125_528:                            # %cond.false.3032
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -6936(%rbp)       # 4-byte Spill
.LBB125_529:                            # %cond.end.3038
	movl	-6936(%rbp), %eax       # 4-byte Reload
	movl	$24, %ecx
	movq	-4160(%rbp), %rdx
	movl	%edx, %esi
	subl	%esi, %eax
	cmpl	%eax, %ecx
	jl	.LBB125_542
	jmp	.LBB125_539
.LBB125_530:                            # %cond.false.3044
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_532
# BB#531:                               # %cond.true.3052
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -6940(%rbp)       # 4-byte Spill
	jmp	.LBB125_533
.LBB125_532:                            # %cond.false.3062
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -6940(%rbp)       # 4-byte Spill
.LBB125_533:                            # %cond.end.3068
	movl	-6940(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	cmpl	$24, %eax
	jl	.LBB125_542
	jmp	.LBB125_539
.LBB125_534:                            # %cond.false.3074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_535
	jmp	.LBB125_536
.LBB125_535:                            # %cond.true.3075
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	$24, %edx
	cmpl	%edx, %ecx
	jle	.LBB125_542
	jmp	.LBB125_539
.LBB125_536:                            # %cond.false.3081
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_538
# BB#537:                               # %cond.true.3085
	movl	$24, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	addl	$24, %edx
	cmpl	%edx, %eax
	jle	.LBB125_542
	jmp	.LBB125_539
.LBB125_538:                            # %cond.false.3090
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB125_542
.LBB125_539:                            # %lor.lhs.false.3096
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_541
# BB#540:                               # %land.lhs.true.3103
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB125_542
.LBB125_541:                            # %lor.lhs.false.3108
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	addl	$24, %edx
	cmpl	%edx, %eax
	jge	.LBB125_546
.LBB125_542:                            # %cond.true.3113
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_544
# BB#543:                               # %cond.true.3118
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	movl	%ecx, -6944(%rbp)       # 4-byte Spill
	jmp	.LBB125_545
.LBB125_544:                            # %cond.false.3121
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6944(%rbp)       # 4-byte Spill
.LBB125_545:                            # %cond.end.3126
	movl	-6944(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_546:                            # %cond.false.3129
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_548
# BB#547:                               # %cond.true.3134
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	movl	%ecx, -6948(%rbp)       # 4-byte Spill
	jmp	.LBB125_549
.LBB125_548:                            # %cond.false.3137
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6948(%rbp)       # 4-byte Spill
.LBB125_549:                            # %cond.end.3142
	movl	-6948(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_550:                            # %cond.false.3145
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_552
# BB#551:                               # %cond.true.3152
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6960(%rbp)       # 8-byte Spill
	jmp	.LBB125_553
.LBB125_552:                            # %cond.false.3171
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6960(%rbp)       # 8-byte Spill
.LBB125_553:                            # %cond.end.3176
	movq	-6960(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jae	.LBB125_563
# BB#554:                               # %cond.true.3180
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_559
# BB#555:                               # %cond.true.3183
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_557
# BB#556:                               # %cond.true.3190
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6968(%rbp)       # 8-byte Spill
	jmp	.LBB125_558
.LBB125_557:                            # %cond.false.3209
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6968(%rbp)       # 8-byte Spill
.LBB125_558:                            # %cond.end.3214
	movq	-6968(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.LBB125_571
	jmp	.LBB125_568
.LBB125_559:                            # %cond.false.3219
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_561
# BB#560:                               # %cond.true.3226
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -6976(%rbp)       # 8-byte Spill
	jmp	.LBB125_562
.LBB125_561:                            # %cond.false.3235
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -6976(%rbp)       # 8-byte Spill
.LBB125_562:                            # %cond.end.3240
	movq	-6976(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jb	.LBB125_571
	jmp	.LBB125_568
.LBB125_563:                            # %cond.false.3245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_564
	jmp	.LBB125_565
.LBB125_564:                            # %cond.true.3246
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB125_571
	jmp	.LBB125_568
.LBB125_565:                            # %cond.false.3250
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_567
# BB#566:                               # %cond.true.3253
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB125_571
	jmp	.LBB125_568
.LBB125_567:                            # %cond.false.3257
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jb	.LBB125_571
.LBB125_568:                            # %lor.lhs.false.3261
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_570
# BB#569:                               # %land.lhs.true.3267
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jb	.LBB125_571
.LBB125_570:                            # %lor.lhs.false.3271
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB125_575
.LBB125_571:                            # %cond.true.3275
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_573
# BB#572:                               # %cond.true.3280
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	movl	%ecx, -6980(%rbp)       # 4-byte Spill
	jmp	.LBB125_574
.LBB125_573:                            # %cond.false.3283
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6980(%rbp)       # 4-byte Spill
.LBB125_574:                            # %cond.end.3288
	movl	-6980(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_575:                            # %cond.false.3291
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_577
# BB#576:                               # %cond.true.3296
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	movl	%ecx, -6984(%rbp)       # 4-byte Spill
	jmp	.LBB125_578
.LBB125_577:                            # %cond.false.3299
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	addl	$24, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -6984(%rbp)       # 4-byte Spill
.LBB125_578:                            # %cond.end.3304
	movl	-6984(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_579:                            # %cond.false.3307
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_580
	jmp	.LBB125_639
.LBB125_580:                            # %cond.true.3308
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_581
	jmp	.LBB125_610
.LBB125_581:                            # %cond.true.3309
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_583
# BB#582:                               # %cond.true.3316
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -6992(%rbp)       # 8-byte Spill
	jmp	.LBB125_584
.LBB125_583:                            # %cond.false.3335
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -6992(%rbp)       # 8-byte Spill
.LBB125_584:                            # %cond.end.3340
	movq	-6992(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_594
# BB#585:                               # %cond.true.3344
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_590
# BB#586:                               # %cond.true.3347
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_588
# BB#587:                               # %cond.true.3354
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7000(%rbp)       # 8-byte Spill
	jmp	.LBB125_589
.LBB125_588:                            # %cond.false.3373
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7000(%rbp)       # 8-byte Spill
.LBB125_589:                            # %cond.end.3378
	movq	-7000(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB125_602
	jmp	.LBB125_599
.LBB125_590:                            # %cond.false.3383
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_592
# BB#591:                               # %cond.true.3390
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7008(%rbp)       # 8-byte Spill
	jmp	.LBB125_593
.LBB125_592:                            # %cond.false.3399
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7008(%rbp)       # 8-byte Spill
.LBB125_593:                            # %cond.end.3404
	movq	-7008(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jl	.LBB125_602
	jmp	.LBB125_599
.LBB125_594:                            # %cond.false.3409
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_595
	jmp	.LBB125_596
.LBB125_595:                            # %cond.true.3410
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_602
	jmp	.LBB125_599
.LBB125_596:                            # %cond.false.3414
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_598
# BB#597:                               # %cond.true.3417
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB125_602
	jmp	.LBB125_599
.LBB125_598:                            # %cond.false.3421
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_602
.LBB125_599:                            # %lor.lhs.false.3425
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_601
# BB#600:                               # %land.lhs.true.3431
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_602
.LBB125_601:                            # %lor.lhs.false.3435
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_606
.LBB125_602:                            # %cond.true.3439
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_604
# BB#603:                               # %cond.true.3443
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7016(%rbp)       # 8-byte Spill
	jmp	.LBB125_605
.LBB125_604:                            # %cond.false.3445
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7016(%rbp)       # 8-byte Spill
.LBB125_605:                            # %cond.end.3449
	movq	-7016(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_606:                            # %cond.false.3451
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_608
# BB#607:                               # %cond.true.3455
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7024(%rbp)       # 8-byte Spill
	jmp	.LBB125_609
.LBB125_608:                            # %cond.false.3457
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7024(%rbp)       # 8-byte Spill
.LBB125_609:                            # %cond.end.3461
	movq	-7024(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_610:                            # %cond.false.3463
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_612
# BB#611:                               # %cond.true.3470
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7032(%rbp)       # 8-byte Spill
	jmp	.LBB125_613
.LBB125_612:                            # %cond.false.3489
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7032(%rbp)       # 8-byte Spill
.LBB125_613:                            # %cond.end.3494
	movq	-7032(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jae	.LBB125_623
# BB#614:                               # %cond.true.3498
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_619
# BB#615:                               # %cond.true.3501
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_617
# BB#616:                               # %cond.true.3508
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7040(%rbp)       # 8-byte Spill
	jmp	.LBB125_618
.LBB125_617:                            # %cond.false.3527
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7040(%rbp)       # 8-byte Spill
.LBB125_618:                            # %cond.end.3532
	movq	-7040(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.LBB125_631
	jmp	.LBB125_628
.LBB125_619:                            # %cond.false.3537
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_621
# BB#620:                               # %cond.true.3544
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7048(%rbp)       # 8-byte Spill
	jmp	.LBB125_622
.LBB125_621:                            # %cond.false.3553
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7048(%rbp)       # 8-byte Spill
.LBB125_622:                            # %cond.end.3558
	movq	-7048(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jb	.LBB125_631
	jmp	.LBB125_628
.LBB125_623:                            # %cond.false.3563
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_624
	jmp	.LBB125_625
.LBB125_624:                            # %cond.true.3564
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB125_631
	jmp	.LBB125_628
.LBB125_625:                            # %cond.false.3568
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_627
# BB#626:                               # %cond.true.3571
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB125_631
	jmp	.LBB125_628
.LBB125_627:                            # %cond.false.3575
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jb	.LBB125_631
.LBB125_628:                            # %lor.lhs.false.3579
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_630
# BB#629:                               # %land.lhs.true.3585
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	jb	.LBB125_631
.LBB125_630:                            # %lor.lhs.false.3589
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jae	.LBB125_635
.LBB125_631:                            # %cond.true.3593
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_633
# BB#632:                               # %cond.true.3597
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7056(%rbp)       # 8-byte Spill
	jmp	.LBB125_634
.LBB125_633:                            # %cond.false.3599
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7056(%rbp)       # 8-byte Spill
.LBB125_634:                            # %cond.end.3603
	movq	-7056(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_635:                            # %cond.false.3605
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_637
# BB#636:                               # %cond.true.3609
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7064(%rbp)       # 8-byte Spill
	jmp	.LBB125_638
.LBB125_637:                            # %cond.false.3611
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7064(%rbp)       # 8-byte Spill
.LBB125_638:                            # %cond.end.3615
	movq	-7064(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_639:                            # %cond.false.3617
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_640
	jmp	.LBB125_669
.LBB125_640:                            # %cond.true.3618
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_642
# BB#641:                               # %cond.true.3625
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7072(%rbp)       # 8-byte Spill
	jmp	.LBB125_643
.LBB125_642:                            # %cond.false.3644
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7072(%rbp)       # 8-byte Spill
.LBB125_643:                            # %cond.end.3649
	movq	-7072(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_653
# BB#644:                               # %cond.true.3653
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_649
# BB#645:                               # %cond.true.3656
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_647
# BB#646:                               # %cond.true.3663
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7080(%rbp)       # 8-byte Spill
	jmp	.LBB125_648
.LBB125_647:                            # %cond.false.3682
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7080(%rbp)       # 8-byte Spill
.LBB125_648:                            # %cond.end.3687
	movq	-7080(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.LBB125_661
	jmp	.LBB125_658
.LBB125_649:                            # %cond.false.3692
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_651
# BB#650:                               # %cond.true.3699
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7088(%rbp)       # 8-byte Spill
	jmp	.LBB125_652
.LBB125_651:                            # %cond.false.3708
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7088(%rbp)       # 8-byte Spill
.LBB125_652:                            # %cond.end.3713
	movq	-7088(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jl	.LBB125_661
	jmp	.LBB125_658
.LBB125_653:                            # %cond.false.3718
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_654
	jmp	.LBB125_655
.LBB125_654:                            # %cond.true.3719
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_661
	jmp	.LBB125_658
.LBB125_655:                            # %cond.false.3723
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_657
# BB#656:                               # %cond.true.3726
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB125_661
	jmp	.LBB125_658
.LBB125_657:                            # %cond.false.3730
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_661
.LBB125_658:                            # %lor.lhs.false.3734
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_660
# BB#659:                               # %land.lhs.true.3740
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_661
.LBB125_660:                            # %lor.lhs.false.3744
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_665
.LBB125_661:                            # %cond.true.3748
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_663
# BB#662:                               # %cond.true.3752
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7096(%rbp)       # 8-byte Spill
	jmp	.LBB125_664
.LBB125_663:                            # %cond.false.3754
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7096(%rbp)       # 8-byte Spill
.LBB125_664:                            # %cond.end.3758
	movq	-7096(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_665:                            # %cond.false.3760
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_667
# BB#666:                               # %cond.true.3764
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7104(%rbp)       # 8-byte Spill
	jmp	.LBB125_668
.LBB125_667:                            # %cond.false.3766
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7104(%rbp)       # 8-byte Spill
.LBB125_668:                            # %cond.end.3770
	movq	-7104(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_669:                            # %cond.false.3772
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_671
# BB#670:                               # %cond.true.3779
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7112(%rbp)       # 8-byte Spill
	jmp	.LBB125_672
.LBB125_671:                            # %cond.false.3798
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7112(%rbp)       # 8-byte Spill
.LBB125_672:                            # %cond.end.3803
	movq	-7112(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jae	.LBB125_682
# BB#673:                               # %cond.true.3807
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_678
# BB#674:                               # %cond.true.3810
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_676
# BB#675:                               # %cond.true.3817
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	$24, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	$24, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7120(%rbp)       # 8-byte Spill
	jmp	.LBB125_677
.LBB125_676:                            # %cond.false.3836
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7120(%rbp)       # 8-byte Spill
.LBB125_677:                            # %cond.end.3841
	movq	-7120(%rbp), %rax       # 8-byte Reload
	movl	$24, %ecx
	movl	%ecx, %edx
	subq	-4160(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.LBB125_690
	jmp	.LBB125_687
.LBB125_678:                            # %cond.false.3846
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_680
# BB#679:                               # %cond.true.3853
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7128(%rbp)       # 8-byte Spill
	jmp	.LBB125_681
.LBB125_680:                            # %cond.false.3862
	imulq	$0, -4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7128(%rbp)       # 8-byte Spill
.LBB125_681:                            # %cond.end.3867
	movq	-7128(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	$24, %rax
	jb	.LBB125_690
	jmp	.LBB125_687
.LBB125_682:                            # %cond.false.3872
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_683
	jmp	.LBB125_684
.LBB125_683:                            # %cond.true.3873
	movq	-4160(%rbp), %rax
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB125_690
	jmp	.LBB125_687
.LBB125_684:                            # %cond.false.3877
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_686
# BB#685:                               # %cond.true.3880
	movl	$24, %eax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rdx
	addq	$24, %rdx
	cmpq	%rdx, %rcx
	jbe	.LBB125_690
	jmp	.LBB125_687
.LBB125_686:                            # %cond.false.3884
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	cmpq	-4160(%rbp), %rax
	jb	.LBB125_690
.LBB125_687:                            # %lor.lhs.false.3888
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB125_689
# BB#688:                               # %land.lhs.true.3894
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	jb	.LBB125_690
.LBB125_689:                            # %lor.lhs.false.3898
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rcx, %rax
	jae	.LBB125_694
.LBB125_690:                            # %cond.true.3902
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_692
# BB#691:                               # %cond.true.3906
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7136(%rbp)       # 8-byte Spill
	jmp	.LBB125_693
.LBB125_692:                            # %cond.false.3908
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7136(%rbp)       # 8-byte Spill
.LBB125_693:                            # %cond.end.3912
	movq	-7136(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_698
.LBB125_694:                            # %cond.false.3914
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4160(%rbp), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_696
# BB#695:                               # %cond.true.3918
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -7144(%rbp)       # 8-byte Spill
	jmp	.LBB125_697
.LBB125_696:                            # %cond.false.3920
	movq	-4160(%rbp), %rax
	addq	$24, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7144(%rbp)       # 8-byte Spill
.LBB125_697:                            # %cond.end.3924
	movq	-7144(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
.LBB125_698:                            # %lor.lhs.false.3926
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_699
	jmp	.LBB125_758
.LBB125_699:                            # %cond.true.3927
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_700
	jmp	.LBB125_729
.LBB125_700:                            # %cond.true.3928
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_702
# BB#701:                               # %cond.true.3939
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -7148(%rbp)       # 4-byte Spill
	jmp	.LBB125_703
.LBB125_702:                            # %cond.false.3965
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -7148(%rbp)       # 4-byte Spill
.LBB125_703:                            # %cond.end.3974
	movl	-7148(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB125_713
# BB#704:                               # %cond.true.3978
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_709
# BB#705:                               # %cond.true.3983
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -7152(%rbp)       # 4-byte Spill
	jge	.LBB125_707
# BB#706:                               # %cond.true.3996
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -7156(%rbp)       # 4-byte Spill
	jmp	.LBB125_708
.LBB125_707:                            # %cond.false.4022
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -7156(%rbp)       # 4-byte Spill
.LBB125_708:                            # %cond.end.4031
	movl	-7156(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-7152(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB125_721
	jmp	.LBB125_718
.LBB125_709:                            # %cond.false.4038
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_711
# BB#710:                               # %cond.true.4049
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -7160(%rbp)       # 4-byte Spill
	jmp	.LBB125_712
.LBB125_711:                            # %cond.false.4062
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -7160(%rbp)       # 4-byte Spill
.LBB125_712:                            # %cond.end.4071
	movl	-7160(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-4152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB125_721
	jmp	.LBB125_718
.LBB125_713:                            # %cond.false.4080
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_715
# BB#714:                               # %cond.true.4085
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB125_721
	jmp	.LBB125_718
.LBB125_715:                            # %cond.false.4095
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB125_717
# BB#716:                               # %cond.true.4100
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB125_721
	jmp	.LBB125_718
.LBB125_717:                            # %cond.false.4110
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB125_721
.LBB125_718:                            # %lor.lhs.false.4120
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_720
# BB#719:                               # %land.lhs.true.4130
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB125_721
.LBB125_720:                            # %lor.lhs.false.4138
	movl	$127, %eax
	movq	-4152(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-4160(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB125_725
.LBB125_721:                            # %cond.true.4146
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB125_723
# BB#722:                               # %cond.true.4154
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -7164(%rbp)       # 4-byte Spill
	jmp	.LBB125_724
.LBB125_723:                            # %cond.false.4162
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -7164(%rbp)       # 4-byte Spill
.LBB125_724:                            # %cond.end.4172
	movl	-7164(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_725:                            # %cond.false.4175
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB125_727
# BB#726:                               # %cond.true.4183
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -7168(%rbp)       # 4-byte Spill
	jmp	.LBB125_728
.LBB125_727:                            # %cond.false.4191
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -7168(%rbp)       # 4-byte Spill
.LBB125_728:                            # %cond.end.4201
	movl	-7168(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_729:                            # %cond.false.4204
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_731
# BB#730:                               # %cond.true.4211
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7176(%rbp)       # 8-byte Spill
	jmp	.LBB125_732
.LBB125_731:                            # %cond.false.4230
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7176(%rbp)       # 8-byte Spill
.LBB125_732:                            # %cond.end.4235
	movq	-7176(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_742
# BB#733:                               # %cond.true.4239
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_738
# BB#734:                               # %cond.true.4242
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7184(%rbp)       # 8-byte Spill
	jge	.LBB125_736
# BB#735:                               # %cond.true.4249
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7192(%rbp)       # 8-byte Spill
	jmp	.LBB125_737
.LBB125_736:                            # %cond.false.4268
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7192(%rbp)       # 8-byte Spill
.LBB125_737:                            # %cond.end.4273
	movq	-7192(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_750
	jmp	.LBB125_747
.LBB125_738:                            # %cond.false.4278
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_740
# BB#739:                               # %cond.true.4285
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7200(%rbp)       # 8-byte Spill
	jmp	.LBB125_741
.LBB125_740:                            # %cond.false.4294
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7200(%rbp)       # 8-byte Spill
.LBB125_741:                            # %cond.end.4299
	movq	-7200(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_750
	jmp	.LBB125_747
.LBB125_742:                            # %cond.false.4304
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_744
# BB#743:                               # %cond.true.4307
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_750
	jmp	.LBB125_747
.LBB125_744:                            # %cond.false.4311
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_746
# BB#745:                               # %cond.true.4314
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_750
	jmp	.LBB125_747
.LBB125_746:                            # %cond.false.4318
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_750
.LBB125_747:                            # %lor.lhs.false.4322
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_749
# BB#748:                               # %land.lhs.true.4328
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB125_750
.LBB125_749:                            # %lor.lhs.false.4332
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-4152(%rbp), %rdx
	addq	-4160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB125_754
.LBB125_750:                            # %cond.true.4336
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB125_752
# BB#751:                               # %cond.true.4344
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -7204(%rbp)       # 4-byte Spill
	jmp	.LBB125_753
.LBB125_752:                            # %cond.false.4352
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -7204(%rbp)       # 4-byte Spill
.LBB125_753:                            # %cond.end.4362
	movl	-7204(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_754:                            # %cond.false.4365
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB125_756
# BB#755:                               # %cond.true.4373
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -7208(%rbp)       # 4-byte Spill
	jmp	.LBB125_757
.LBB125_756:                            # %cond.false.4381
	movq	-4152(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-4160(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -7208(%rbp)       # 4-byte Spill
.LBB125_757:                            # %cond.end.4391
	movl	-7208(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_758:                            # %cond.false.4394
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_759
	jmp	.LBB125_818
.LBB125_759:                            # %cond.true.4395
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_760
	jmp	.LBB125_789
.LBB125_760:                            # %cond.true.4396
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_762
# BB#761:                               # %cond.true.4407
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -7212(%rbp)       # 4-byte Spill
	jmp	.LBB125_763
.LBB125_762:                            # %cond.false.4433
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -7212(%rbp)       # 4-byte Spill
.LBB125_763:                            # %cond.end.4442
	movl	-7212(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB125_773
# BB#764:                               # %cond.true.4446
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_769
# BB#765:                               # %cond.true.4451
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -7216(%rbp)       # 4-byte Spill
	jge	.LBB125_767
# BB#766:                               # %cond.true.4464
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-4152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -7220(%rbp)       # 4-byte Spill
	jmp	.LBB125_768
.LBB125_767:                            # %cond.false.4490
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -7220(%rbp)       # 4-byte Spill
.LBB125_768:                            # %cond.end.4499
	movl	-7220(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-7216(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB125_781
	jmp	.LBB125_778
.LBB125_769:                            # %cond.false.4506
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_771
# BB#770:                               # %cond.true.4517
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -7224(%rbp)       # 4-byte Spill
	jmp	.LBB125_772
.LBB125_771:                            # %cond.false.4530
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -7224(%rbp)       # 4-byte Spill
.LBB125_772:                            # %cond.end.4539
	movl	-7224(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-4152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB125_781
	jmp	.LBB125_778
.LBB125_773:                            # %cond.false.4548
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_775
# BB#774:                               # %cond.true.4553
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB125_781
	jmp	.LBB125_778
.LBB125_775:                            # %cond.false.4563
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB125_777
# BB#776:                               # %cond.true.4568
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB125_781
	jmp	.LBB125_778
.LBB125_777:                            # %cond.false.4578
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB125_781
.LBB125_778:                            # %lor.lhs.false.4588
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB125_780
# BB#779:                               # %land.lhs.true.4598
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB125_781
.LBB125_780:                            # %lor.lhs.false.4606
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-4152(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-4160(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB125_785
.LBB125_781:                            # %cond.true.4614
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_783
# BB#782:                               # %cond.true.4622
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -7228(%rbp)       # 4-byte Spill
	jmp	.LBB125_784
.LBB125_783:                            # %cond.false.4630
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -7228(%rbp)       # 4-byte Spill
.LBB125_784:                            # %cond.end.4640
	movl	-7228(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_785:                            # %cond.false.4643
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_787
# BB#786:                               # %cond.true.4651
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -7232(%rbp)       # 4-byte Spill
	jmp	.LBB125_788
.LBB125_787:                            # %cond.false.4659
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -7232(%rbp)       # 4-byte Spill
.LBB125_788:                            # %cond.end.4669
	movl	-7232(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_789:                            # %cond.false.4672
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_791
# BB#790:                               # %cond.true.4679
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7240(%rbp)       # 8-byte Spill
	jmp	.LBB125_792
.LBB125_791:                            # %cond.false.4698
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7240(%rbp)       # 8-byte Spill
.LBB125_792:                            # %cond.end.4703
	movq	-7240(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_802
# BB#793:                               # %cond.true.4707
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_798
# BB#794:                               # %cond.true.4710
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7248(%rbp)       # 8-byte Spill
	jge	.LBB125_796
# BB#795:                               # %cond.true.4717
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7256(%rbp)       # 8-byte Spill
	jmp	.LBB125_797
.LBB125_796:                            # %cond.false.4736
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7256(%rbp)       # 8-byte Spill
.LBB125_797:                            # %cond.end.4741
	movq	-7256(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_810
	jmp	.LBB125_807
.LBB125_798:                            # %cond.false.4746
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_800
# BB#799:                               # %cond.true.4753
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7264(%rbp)       # 8-byte Spill
	jmp	.LBB125_801
.LBB125_800:                            # %cond.false.4762
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7264(%rbp)       # 8-byte Spill
.LBB125_801:                            # %cond.end.4767
	movq	-7264(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_810
	jmp	.LBB125_807
.LBB125_802:                            # %cond.false.4772
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_804
# BB#803:                               # %cond.true.4775
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_810
	jmp	.LBB125_807
.LBB125_804:                            # %cond.false.4779
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_806
# BB#805:                               # %cond.true.4782
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_810
	jmp	.LBB125_807
.LBB125_806:                            # %cond.false.4786
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_810
.LBB125_807:                            # %lor.lhs.false.4790
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_809
# BB#808:                               # %land.lhs.true.4796
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB125_810
.LBB125_809:                            # %lor.lhs.false.4800
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-4152(%rbp), %rdx
	addq	-4160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB125_814
.LBB125_810:                            # %cond.true.4804
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_812
# BB#811:                               # %cond.true.4812
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -7268(%rbp)       # 4-byte Spill
	jmp	.LBB125_813
.LBB125_812:                            # %cond.false.4820
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -7268(%rbp)       # 4-byte Spill
.LBB125_813:                            # %cond.end.4830
	movl	-7268(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_814:                            # %cond.false.4833
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB125_816
# BB#815:                               # %cond.true.4841
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -7272(%rbp)       # 4-byte Spill
	jmp	.LBB125_817
.LBB125_816:                            # %cond.false.4849
	movq	-4152(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-4160(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -7272(%rbp)       # 4-byte Spill
.LBB125_817:                            # %cond.end.4859
	movl	-7272(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_818:                            # %cond.false.4862
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_819
	jmp	.LBB125_878
.LBB125_819:                            # %cond.true.4863
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_820
	jmp	.LBB125_849
.LBB125_820:                            # %cond.true.4864
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_822
# BB#821:                               # %cond.true.4873
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -7276(%rbp)       # 4-byte Spill
	jmp	.LBB125_823
.LBB125_822:                            # %cond.false.4895
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -7276(%rbp)       # 4-byte Spill
.LBB125_823:                            # %cond.end.4902
	movl	-7276(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB125_833
# BB#824:                               # %cond.true.4906
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_829
# BB#825:                               # %cond.true.4910
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -7280(%rbp)       # 4-byte Spill
	jge	.LBB125_827
# BB#826:                               # %cond.true.4920
	xorl	%eax, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-4152(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -7284(%rbp)       # 4-byte Spill
	jmp	.LBB125_828
.LBB125_827:                            # %cond.false.4942
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -7284(%rbp)       # 4-byte Spill
.LBB125_828:                            # %cond.end.4949
	movl	-7284(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-7280(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB125_841
	jmp	.LBB125_838
.LBB125_829:                            # %cond.false.4955
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_831
# BB#830:                               # %cond.true.4964
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -7288(%rbp)       # 4-byte Spill
	jmp	.LBB125_832
.LBB125_831:                            # %cond.false.4975
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -7288(%rbp)       # 4-byte Spill
.LBB125_832:                            # %cond.end.4982
	movl	-7288(%rbp), %eax       # 4-byte Reload
	movq	-4160(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-4152(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB125_841
	jmp	.LBB125_838
.LBB125_833:                            # %cond.false.4989
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_835
# BB#834:                               # %cond.true.4993
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	movq	-4160(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB125_841
	jmp	.LBB125_838
.LBB125_835:                            # %cond.false.5000
	movq	-4160(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_837
# BB#836:                               # %cond.true.5004
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4152(%rbp), %rax
	movl	%eax, %edx
	movq	-4160(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB125_841
	jmp	.LBB125_838
.LBB125_837:                            # %cond.false.5011
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB125_841
.LBB125_838:                            # %lor.lhs.false.5018
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB125_840
# BB#839:                               # %land.lhs.true.5026
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB125_841
.LBB125_840:                            # %lor.lhs.false.5032
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-4152(%rbp), %rcx
	movl	%ecx, %edx
	movq	-4160(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB125_845
.LBB125_841:                            # %cond.true.5038
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_843
# BB#842:                               # %cond.true.5044
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -7292(%rbp)       # 4-byte Spill
	jmp	.LBB125_844
.LBB125_843:                            # %cond.false.5048
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -7292(%rbp)       # 4-byte Spill
.LBB125_844:                            # %cond.end.5054
	movl	-7292(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_845:                            # %cond.false.5057
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_847
# BB#846:                               # %cond.true.5063
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -7296(%rbp)       # 4-byte Spill
	jmp	.LBB125_848
.LBB125_847:                            # %cond.false.5067
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -7296(%rbp)       # 4-byte Spill
.LBB125_848:                            # %cond.end.5073
	movl	-7296(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_849:                            # %cond.false.5076
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_851
# BB#850:                               # %cond.true.5083
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7304(%rbp)       # 8-byte Spill
	jmp	.LBB125_852
.LBB125_851:                            # %cond.false.5102
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7304(%rbp)       # 8-byte Spill
.LBB125_852:                            # %cond.end.5107
	movq	-7304(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_862
# BB#853:                               # %cond.true.5111
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_858
# BB#854:                               # %cond.true.5114
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7312(%rbp)       # 8-byte Spill
	jge	.LBB125_856
# BB#855:                               # %cond.true.5121
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7320(%rbp)       # 8-byte Spill
	jmp	.LBB125_857
.LBB125_856:                            # %cond.false.5140
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7320(%rbp)       # 8-byte Spill
.LBB125_857:                            # %cond.end.5145
	movq	-7320(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7312(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_870
	jmp	.LBB125_867
.LBB125_858:                            # %cond.false.5150
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_860
# BB#859:                               # %cond.true.5157
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7328(%rbp)       # 8-byte Spill
	jmp	.LBB125_861
.LBB125_860:                            # %cond.false.5166
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7328(%rbp)       # 8-byte Spill
.LBB125_861:                            # %cond.end.5171
	movq	-7328(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_870
	jmp	.LBB125_867
.LBB125_862:                            # %cond.false.5176
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_864
# BB#863:                               # %cond.true.5179
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_870
	jmp	.LBB125_867
.LBB125_864:                            # %cond.false.5183
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_866
# BB#865:                               # %cond.true.5186
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_870
	jmp	.LBB125_867
.LBB125_866:                            # %cond.false.5190
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_870
.LBB125_867:                            # %lor.lhs.false.5194
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_869
# BB#868:                               # %land.lhs.true.5200
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB125_870
.LBB125_869:                            # %lor.lhs.false.5204
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-4152(%rbp), %rdx
	addq	-4160(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB125_874
.LBB125_870:                            # %cond.true.5208
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_872
# BB#871:                               # %cond.true.5214
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -7332(%rbp)       # 4-byte Spill
	jmp	.LBB125_873
.LBB125_872:                            # %cond.false.5218
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -7332(%rbp)       # 4-byte Spill
.LBB125_873:                            # %cond.end.5224
	movl	-7332(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_874:                            # %cond.false.5227
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB125_876
# BB#875:                               # %cond.true.5233
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -7336(%rbp)       # 4-byte Spill
	jmp	.LBB125_877
.LBB125_876:                            # %cond.false.5237
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movq	-4160(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -7336(%rbp)       # 4-byte Spill
.LBB125_877:                            # %cond.end.5243
	movl	-7336(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_878:                            # %cond.false.5246
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_879
	jmp	.LBB125_938
.LBB125_879:                            # %cond.true.5247
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_880
	jmp	.LBB125_909
.LBB125_880:                            # %cond.true.5248
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_882
# BB#881:                               # %cond.true.5255
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7344(%rbp)       # 8-byte Spill
	jmp	.LBB125_883
.LBB125_882:                            # %cond.false.5274
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7344(%rbp)       # 8-byte Spill
.LBB125_883:                            # %cond.end.5279
	movq	-7344(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_893
# BB#884:                               # %cond.true.5283
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_889
# BB#885:                               # %cond.true.5286
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7352(%rbp)       # 8-byte Spill
	jge	.LBB125_887
# BB#886:                               # %cond.true.5293
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7360(%rbp)       # 8-byte Spill
	jmp	.LBB125_888
.LBB125_887:                            # %cond.false.5312
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7360(%rbp)       # 8-byte Spill
.LBB125_888:                            # %cond.end.5317
	movq	-7360(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7352(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_901
	jmp	.LBB125_898
.LBB125_889:                            # %cond.false.5322
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_891
# BB#890:                               # %cond.true.5329
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7368(%rbp)       # 8-byte Spill
	jmp	.LBB125_892
.LBB125_891:                            # %cond.false.5338
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7368(%rbp)       # 8-byte Spill
.LBB125_892:                            # %cond.end.5343
	movq	-7368(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_901
	jmp	.LBB125_898
.LBB125_893:                            # %cond.false.5348
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_895
# BB#894:                               # %cond.true.5351
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_901
	jmp	.LBB125_898
.LBB125_895:                            # %cond.false.5355
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_897
# BB#896:                               # %cond.true.5358
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_901
	jmp	.LBB125_898
.LBB125_897:                            # %cond.false.5362
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_901
.LBB125_898:                            # %lor.lhs.false.5366
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_900
# BB#899:                               # %land.lhs.true.5372
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_901
.LBB125_900:                            # %lor.lhs.false.5376
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_905
.LBB125_901:                            # %cond.true.5380
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_903
# BB#902:                               # %cond.true.5384
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7376(%rbp)       # 8-byte Spill
	jmp	.LBB125_904
.LBB125_903:                            # %cond.false.5386
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7376(%rbp)       # 8-byte Spill
.LBB125_904:                            # %cond.end.5390
	movq	-7376(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_905:                            # %cond.false.5392
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_907
# BB#906:                               # %cond.true.5396
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7384(%rbp)       # 8-byte Spill
	jmp	.LBB125_908
.LBB125_907:                            # %cond.false.5398
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7384(%rbp)       # 8-byte Spill
.LBB125_908:                            # %cond.end.5402
	movq	-7384(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_909:                            # %cond.false.5404
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_911
# BB#910:                               # %cond.true.5411
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7392(%rbp)       # 8-byte Spill
	jmp	.LBB125_912
.LBB125_911:                            # %cond.false.5430
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7392(%rbp)       # 8-byte Spill
.LBB125_912:                            # %cond.end.5435
	movq	-7392(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_922
# BB#913:                               # %cond.true.5439
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_918
# BB#914:                               # %cond.true.5442
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7400(%rbp)       # 8-byte Spill
	jge	.LBB125_916
# BB#915:                               # %cond.true.5449
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7408(%rbp)       # 8-byte Spill
	jmp	.LBB125_917
.LBB125_916:                            # %cond.false.5468
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7408(%rbp)       # 8-byte Spill
.LBB125_917:                            # %cond.end.5473
	movq	-7408(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7400(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_930
	jmp	.LBB125_927
.LBB125_918:                            # %cond.false.5478
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_920
# BB#919:                               # %cond.true.5485
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7416(%rbp)       # 8-byte Spill
	jmp	.LBB125_921
.LBB125_920:                            # %cond.false.5494
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7416(%rbp)       # 8-byte Spill
.LBB125_921:                            # %cond.end.5499
	movq	-7416(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_930
	jmp	.LBB125_927
.LBB125_922:                            # %cond.false.5504
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_924
# BB#923:                               # %cond.true.5507
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_930
	jmp	.LBB125_927
.LBB125_924:                            # %cond.false.5511
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_926
# BB#925:                               # %cond.true.5514
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_930
	jmp	.LBB125_927
.LBB125_926:                            # %cond.false.5518
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_930
.LBB125_927:                            # %lor.lhs.false.5522
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_929
# BB#928:                               # %land.lhs.true.5528
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_930
.LBB125_929:                            # %lor.lhs.false.5532
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_934
.LBB125_930:                            # %cond.true.5536
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_932
# BB#931:                               # %cond.true.5540
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7424(%rbp)       # 8-byte Spill
	jmp	.LBB125_933
.LBB125_932:                            # %cond.false.5542
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7424(%rbp)       # 8-byte Spill
.LBB125_933:                            # %cond.end.5546
	movq	-7424(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_934:                            # %cond.false.5548
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_936
# BB#935:                               # %cond.true.5552
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7432(%rbp)       # 8-byte Spill
	jmp	.LBB125_937
.LBB125_936:                            # %cond.false.5554
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7432(%rbp)       # 8-byte Spill
.LBB125_937:                            # %cond.end.5558
	movq	-7432(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_938:                            # %cond.false.5560
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_939
	jmp	.LBB125_968
.LBB125_939:                            # %cond.true.5561
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_941
# BB#940:                               # %cond.true.5568
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7440(%rbp)       # 8-byte Spill
	jmp	.LBB125_942
.LBB125_941:                            # %cond.false.5587
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7440(%rbp)       # 8-byte Spill
.LBB125_942:                            # %cond.end.5592
	movq	-7440(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_952
# BB#943:                               # %cond.true.5596
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_948
# BB#944:                               # %cond.true.5599
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7448(%rbp)       # 8-byte Spill
	jge	.LBB125_946
# BB#945:                               # %cond.true.5606
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7456(%rbp)       # 8-byte Spill
	jmp	.LBB125_947
.LBB125_946:                            # %cond.false.5625
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7456(%rbp)       # 8-byte Spill
.LBB125_947:                            # %cond.end.5630
	movq	-7456(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7448(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_960
	jmp	.LBB125_957
.LBB125_948:                            # %cond.false.5635
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_950
# BB#949:                               # %cond.true.5642
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7464(%rbp)       # 8-byte Spill
	jmp	.LBB125_951
.LBB125_950:                            # %cond.false.5651
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7464(%rbp)       # 8-byte Spill
.LBB125_951:                            # %cond.end.5656
	movq	-7464(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_960
	jmp	.LBB125_957
.LBB125_952:                            # %cond.false.5661
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_954
# BB#953:                               # %cond.true.5664
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_960
	jmp	.LBB125_957
.LBB125_954:                            # %cond.false.5668
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_956
# BB#955:                               # %cond.true.5671
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_960
	jmp	.LBB125_957
.LBB125_956:                            # %cond.false.5675
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_960
.LBB125_957:                            # %lor.lhs.false.5679
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_959
# BB#958:                               # %land.lhs.true.5685
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_960
.LBB125_959:                            # %lor.lhs.false.5689
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_964
.LBB125_960:                            # %cond.true.5693
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_962
# BB#961:                               # %cond.true.5697
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7472(%rbp)       # 8-byte Spill
	jmp	.LBB125_963
.LBB125_962:                            # %cond.false.5699
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7472(%rbp)       # 8-byte Spill
.LBB125_963:                            # %cond.end.5703
	movq	-7472(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_964:                            # %cond.false.5705
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_966
# BB#965:                               # %cond.true.5709
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7480(%rbp)       # 8-byte Spill
	jmp	.LBB125_967
.LBB125_966:                            # %cond.false.5711
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7480(%rbp)       # 8-byte Spill
.LBB125_967:                            # %cond.end.5715
	movq	-7480(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_968:                            # %cond.false.5717
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_970
# BB#969:                               # %cond.true.5724
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7488(%rbp)       # 8-byte Spill
	jmp	.LBB125_971
.LBB125_970:                            # %cond.false.5743
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7488(%rbp)       # 8-byte Spill
.LBB125_971:                            # %cond.end.5748
	movq	-7488(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB125_981
# BB#972:                               # %cond.true.5752
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_977
# BB#973:                               # %cond.true.5755
	movq	-4152(%rbp), %rax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -7496(%rbp)       # 8-byte Spill
	jge	.LBB125_975
# BB#974:                               # %cond.true.5762
	xorl	%eax, %eax
	imulq	$0, -4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	imulq	$0, -4160(%rbp), %rdi
	addq	-4152(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -7504(%rbp)       # 8-byte Spill
	jmp	.LBB125_976
.LBB125_975:                            # %cond.false.5781
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -7504(%rbp)       # 8-byte Spill
.LBB125_976:                            # %cond.end.5786
	movq	-7504(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	movq	-7496(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB125_989
	jmp	.LBB125_986
.LBB125_977:                            # %cond.false.5791
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_979
# BB#978:                               # %cond.true.5798
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -7512(%rbp)       # 8-byte Spill
	jmp	.LBB125_980
.LBB125_979:                            # %cond.false.5807
	imulq	$0, -4160(%rbp), %rax
	addq	-4152(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -7512(%rbp)       # 8-byte Spill
.LBB125_980:                            # %cond.end.5812
	movq	-7512(%rbp), %rax       # 8-byte Reload
	subq	-4160(%rbp), %rax
	cmpq	-4152(%rbp), %rax
	jl	.LBB125_989
	jmp	.LBB125_986
.LBB125_981:                            # %cond.false.5817
	cmpq	$0, -4152(%rbp)
	jge	.LBB125_983
# BB#982:                               # %cond.true.5820
	movq	-4160(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_989
	jmp	.LBB125_986
.LBB125_983:                            # %cond.false.5824
	cmpq	$0, -4160(%rbp)
	jge	.LBB125_985
# BB#984:                               # %cond.true.5827
	movq	-4152(%rbp), %rax
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB125_989
	jmp	.LBB125_986
.LBB125_985:                            # %cond.false.5831
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	cmpq	-4160(%rbp), %rax
	jl	.LBB125_989
.LBB125_986:                            # %lor.lhs.false.5835
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB125_988
# BB#987:                               # %land.lhs.true.5841
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB125_989
.LBB125_988:                            # %lor.lhs.false.5845
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_993
.LBB125_989:                            # %cond.true.5849
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_991
# BB#990:                               # %cond.true.5853
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7520(%rbp)       # 8-byte Spill
	jmp	.LBB125_992
.LBB125_991:                            # %cond.false.5855
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7520(%rbp)       # 8-byte Spill
.LBB125_992:                            # %cond.end.5859
	movq	-7520(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -4160(%rbp)
	testb	$1, %cl
	jne	.LBB125_998
	jmp	.LBB125_997
.LBB125_993:                            # %cond.false.5861
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-4152(%rbp), %rcx
	addq	-4160(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB125_995
# BB#994:                               # %cond.true.5865
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movq	%rax, -7528(%rbp)       # 8-byte Spill
	jmp	.LBB125_996
.LBB125_995:                            # %cond.false.5867
	movq	-4152(%rbp), %rax
	addq	-4160(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -7528(%rbp)       # 8-byte Spill
.LBB125_996:                            # %cond.end.5871
	movq	-7528(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -4160(%rbp)
	testb	$1, %dl
	jne	.LBB125_998
.LBB125_997:                            # %lor.lhs.false.5873
	movq	$-1, %rax
	cmpq	-4160(%rbp), %rax
	jae	.LBB125_999
.LBB125_998:                            # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB125_999:                            # %if.end
	movq	-4160(%rbp), %rax
	cmpq	-4112(%rbp), %rax
	jg	.LBB125_1001
# BB#1000:                              # %cond.true.5878
	movq	-4160(%rbp), %rax
	movq	-4112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -4112(%rbp)
	movq	-4160(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -7536(%rbp)       # 8-byte Spill
	jmp	.LBB125_1002
.LBB125_1001:                           # %cond.false.5880
	movb	$1, -4121(%rbp)
	movq	-4160(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -7536(%rbp)       # 8-byte Spill
.LBB125_1002:                           # %cond.end.5882
	movq	-7536(%rbp), %rax       # 8-byte Reload
	xorl	%esi, %esi
	movq	%rax, -4136(%rbp)
	movq	-4136(%rbp), %rax
	movq	-4160(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
	movq	$0, -4168(%rbp)
.LBB125_1003:                           # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-4168(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_1006
# BB#1004:                              # %for.body
                                        #   in Loop: Header=BB125_1003 Depth=1
	movq	-4168(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movq	$-1, (%rax)
# BB#1005:                              # %for.inc
                                        #   in Loop: Header=BB125_1003 Depth=1
	movq	-4168(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4168(%rbp)
	jmp	.LBB125_1003
.LBB125_1006:                           # %for.end
	movq	-8(%rbp), %rax
	addq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movq	%rax, -4176(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -4177(%rbp)
	movb	-4177(%rbp), %al
	andb	$1, %al
	movb	%al, -4178(%rbp)
	movq	$1, -4192(%rbp)
.LBB125_1007:                           # %for.cond.5895
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -4178(%rbp)
	movb	%cl, -7537(%rbp)        # 1-byte Spill
	jne	.LBB125_1009
# BB#1008:                              # %land.rhs
                                        #   in Loop: Header=BB125_1007 Depth=1
	movq	-4192(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setl	%cl
	movb	%cl, -7537(%rbp)        # 1-byte Spill
.LBB125_1009:                           # %land.end
                                        #   in Loop: Header=BB125_1007 Depth=1
	movb	-7537(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB125_1010
	jmp	.LBB125_1015
.LBB125_1010:                           # %for.body.5899
                                        #   in Loop: Header=BB125_1007 Depth=1
	movq	-4192(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB125_1011
	jmp	.LBB125_1013
.LBB125_1011:                           # %land.lhs.true.5903
                                        #   in Loop: Header=BB125_1007 Depth=1
	movq	-4192(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB125_1012
	jmp	.LBB125_1013
.LBB125_1012:                           # %if.then.5907
                                        #   in Loop: Header=BB125_1007 Depth=1
	movb	$1, -4178(%rbp)
.LBB125_1013:                           # %if.end.5908
                                        #   in Loop: Header=BB125_1007 Depth=1
	jmp	.LBB125_1014
.LBB125_1014:                           # %for.inc.5909
                                        #   in Loop: Header=BB125_1007 Depth=1
	movq	-4192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4192(%rbp)
	jmp	.LBB125_1007
.LBB125_1015:                           # %for.end.5911
	testb	$1, -17(%rbp)
	je	.LBB125_1017
# BB#1016:                              # %cond.true.5914
	callq	text_quoting_style
	movl	%eax, -7544(%rbp)       # 4-byte Spill
	jmp	.LBB125_1018
.LBB125_1017:                           # %cond.false.5916
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -7544(%rbp)       # 4-byte Spill
	jmp	.LBB125_1018
.LBB125_1018:                           # %cond.end.5917
	movl	-7544(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4196(%rbp)
.LBB125_1019:                           # %retry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB125_1020 Depth 2
                                        #       Child Loop BB125_1023 Depth 3
                                        #       Child Loop BB125_1258 Depth 3
	movq	-4040(%rbp), %rax
	movq	%rax, -4064(%rbp)
	movq	$0, -4096(%rbp)
	movq	$0, -32(%rbp)
	movq	-4144(%rbp), %rax
	movq	%rax, -4080(%rbp)
	movq	-4080(%rbp), %rax
	addq	-4152(%rbp), %rax
	movq	%rax, -4088(%rbp)
	movb	$0, -4097(%rbp)
.LBB125_1020:                           # %while.cond
                                        #   Parent Loop BB125_1019 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB125_1023 Depth 3
                                        #       Child Loop BB125_1258 Depth 3
	movq	-4080(%rbp), %rax
	cmpq	-4088(%rbp), %rax
	je	.LBB125_1298
# BB#1021:                              # %while.body
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -4208(%rbp)
	movq	-4080(%rbp), %rax
	movq	%rax, -4216(%rbp)
	movq	-4080(%rbp), %rax
	movq	%rax, -4224(%rbp)
	movq	-4080(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4080(%rbp)
	movb	(%rax), %dl
	movb	%dl, -4225(%rbp)
	movq	$1, -4240(%rbp)
	movzbl	-4225(%rbp), %esi
	cmpl	$37, %esi
	jne	.LBB125_1232
# BB#1022:                              # %if.then.5924
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$0, -4241(%rbp)
	movb	$0, -4242(%rbp)
	movb	$0, -4243(%rbp)
	movb	$0, -4244(%rbp)
	movb	$0, -4245(%rbp)
.LBB125_1023:                           # %for.cond.5925
                                        #   Parent Loop BB125_1019 Depth=1
                                        #     Parent Loop BB125_1020 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-4080(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$32, %edx
	movl	%ecx, -7548(%rbp)       # 4-byte Spill
	movl	%edx, -7552(%rbp)       # 4-byte Spill
	je	.LBB125_1026
	jmp	.LBB125_1349
.LBB125_1349:                           # %for.cond.5925
                                        #   in Loop: Header=BB125_1023 Depth=3
	movl	-7548(%rbp), %eax       # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -7556(%rbp)       # 4-byte Spill
	je	.LBB125_1027
	jmp	.LBB125_1350
.LBB125_1350:                           # %for.cond.5925
                                        #   in Loop: Header=BB125_1023 Depth=3
	movl	-7548(%rbp), %eax       # 4-byte Reload
	subl	$43, %eax
	movl	%eax, -7560(%rbp)       # 4-byte Spill
	je	.LBB125_1025
	jmp	.LBB125_1351
.LBB125_1351:                           # %for.cond.5925
                                        #   in Loop: Header=BB125_1023 Depth=3
	movl	-7548(%rbp), %eax       # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -7564(%rbp)       # 4-byte Spill
	je	.LBB125_1024
	jmp	.LBB125_1352
.LBB125_1352:                           # %for.cond.5925
                                        #   in Loop: Header=BB125_1023 Depth=3
	movl	-7548(%rbp), %eax       # 4-byte Reload
	subl	$48, %eax
	movl	%eax, -7568(%rbp)       # 4-byte Spill
	je	.LBB125_1028
	jmp	.LBB125_1029
.LBB125_1024:                           # %sw.bb
                                        #   in Loop: Header=BB125_1023 Depth=3
	movb	$1, -4241(%rbp)
	jmp	.LBB125_1030
.LBB125_1025:                           # %sw.bb.5927
                                        #   in Loop: Header=BB125_1023 Depth=3
	movb	$1, -4242(%rbp)
	jmp	.LBB125_1030
.LBB125_1026:                           # %sw.bb.5928
                                        #   in Loop: Header=BB125_1023 Depth=3
	movb	$1, -4243(%rbp)
	jmp	.LBB125_1030
.LBB125_1027:                           # %sw.bb.5929
                                        #   in Loop: Header=BB125_1023 Depth=3
	movb	$1, -4244(%rbp)
	jmp	.LBB125_1030
.LBB125_1028:                           # %sw.bb.5930
                                        #   in Loop: Header=BB125_1023 Depth=3
	movb	$1, -4245(%rbp)
	jmp	.LBB125_1030
.LBB125_1029:                           # %sw.epilog
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1031
.LBB125_1030:                           # %for.inc.5931
                                        #   in Loop: Header=BB125_1023 Depth=3
	movq	-4080(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4080(%rbp)
	jmp	.LBB125_1023
.LBB125_1031:                           # %for.end.5933
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-4256(%rbp), %rsi
	movl	$10, %edx
	movb	-4242(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	xorl	$-1, %ecx
	movb	-4243(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	andl	%ecx, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movb	%al, -4243(%rbp)
	movb	-4241(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	xorl	$-1, %ecx
	movb	-4245(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	andl	%ecx, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movb	%al, -4245(%rbp)
	movq	-4080(%rbp), %rdi
	callq	strtoumax
	movq	%rax, -4264(%rbp)
	movq	-4056(%rbp), %rax
	cmpq	-4264(%rbp), %rax
	ja	.LBB125_1033
# BB#1032:                              # %if.then.5952
	callq	string_overflow
.LBB125_1033:                           # %if.end.5953
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4264(%rbp), %rax
	movq	%rax, -4272(%rbp)
	movq	-4256(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -4273(%rbp)
	testb	$1, -4273(%rbp)
	je	.LBB125_1035
# BB#1034:                              # %cond.true.5960
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-4256(%rbp), %rsi
	movl	$10, %edx
	movq	-4256(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strtoumax
	movq	%rax, -7576(%rbp)       # 8-byte Spill
	jmp	.LBB125_1036
.LBB125_1035:                           # %cond.false.5963
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$-1, %rax
	movq	%rax, -7576(%rbp)       # 8-byte Spill
	jmp	.LBB125_1036
.LBB125_1036:                           # %cond.end.5964
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-7576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4288(%rbp)
	movq	-4256(%rbp), %rax
	movq	%rax, -4080(%rbp)
	movq	-4080(%rbp), %rax
	cmpq	-4088(%rbp), %rax
	jne	.LBB125_1038
# BB#1037:                              # %if.then.5968
	movabsq	$.L.str.37, %rdi
	movb	$0, %al
	callq	error
.LBB125_1038:                           # %if.end.5969
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$1, %esi
	movq	-4080(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4080(%rbp)
	movb	(%rax), %dl
	movb	%dl, -4289(%rbp)
	movq	-4216(%rbp), %rax
	movq	-4144(%rbp), %rcx
	subq	%rcx, %rax
	addq	-4176(%rbp), %rax
	movq	-4080(%rbp), %rcx
	movq	-4216(%rbp), %rdi
	subq	%rdi, %rcx
	movsbl	-4289(%rbp), %r8d
	cmpl	$37, %r8d
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movslq	%r8d, %rdi
	subq	%rdi, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movsbl	-4289(%rbp), %esi
	cmpl	$37, %esi
	jne	.LBB125_1040
# BB#1039:                              # %if.then.5983
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1286
.LBB125_1040:                           # %if.end.5984
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.LBB125_1042
# BB#1041:                              # %if.then.5988
	movabsq	$.L.str.38, %rdi
	movb	$0, %al
	callq	error
.LBB125_1042:                           # %if.end.5989
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$83, %eax
	je	.LBB125_1046
# BB#1043:                              # %lor.lhs.false.5993
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$115, %eax
	jne	.LBB125_1055
# BB#1044:                              # %land.lhs.true.5997
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB125_1055
# BB#1045:                              # %land.lhs.true.6000
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB125_1055
.LBB125_1046:                           # %if.then.6006
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movb	16(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB125_1054
# BB#1047:                              # %if.then.6008
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$83, %eax
	jne	.LBB125_1049
# BB#1048:                              # %cond.true.6012
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -7584(%rbp)       # 8-byte Spill
	jmp	.LBB125_1050
.LBB125_1049:                           # %cond.false.6014
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -7584(%rbp)       # 8-byte Spill
.LBB125_1050:                           # %cond.end.6016
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-7584(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4304(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-4304(%rbp), %rsi
	callq	Fprin1_to_string
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-32(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movb	16(%rax), %dl
	andb	$-2, %dl
	orb	$1, %dl
	movb	%dl, 16(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB125_1051
	jmp	.LBB125_1053
.LBB125_1051:                           # %land.lhs.true.6028
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	jne	.LBB125_1053
# BB#1052:                              # %if.then.6030
                                        #   in Loop: Header=BB125_1019 Depth=1
	movb	$1, -4178(%rbp)
	jmp	.LBB125_1019
.LBB125_1053:                           # %if.end.6031
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1054
.LBB125_1054:                           # %if.end.6032
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$115, -4289(%rbp)
	jmp	.LBB125_1074
.LBB125_1055:                           # %if.else
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$99, %eax
	jne	.LBB125_1073
# BB#1056:                              # %if.then.6036
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$7, %edx
	jne	.LBB125_1063
# BB#1057:                              # %if.then.6042
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -4312(%rbp)
	movsd	-4312(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB125_1059
# BB#1058:                              # %lor.lhs.false.6047
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	.LCPI125_0, %xmm0       # xmm0 = mem[0],zero
	movsd	-4312(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB125_1060
.LBB125_1059:                           # %land.lhs.true.6050
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	.LCPI125_1, %xmm0       # xmm0 = mem[0],zero
	ucomisd	-4312(%rbp), %xmm0
	jae	.LBB125_1061
.LBB125_1060:                           # %cond.true.6053
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	.LCPI125_2, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -7592(%rbp)      # 8-byte Spill
	jmp	.LBB125_1062
.LBB125_1061:                           # %cond.false.6054
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	-4312(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -7592(%rbp)      # 8-byte Spill
.LBB125_1062:                           # %cond.end.6055
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	-7592(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI125_3(%rip), %xmm1 # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm1, %xmm0
	cmovbq	%rcx, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB125_1063:                           # %if.end.6061
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB125_1070
# BB#1064:                              # %land.lhs.true.6068
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB125_1065
	jmp	.LBB125_1066
.LBB125_1065:                           # %cond.true.6069
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jl	.LBB125_1070
	jmp	.LBB125_1067
.LBB125_1066:                           # %cond.false.6074
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB125_1070
.LBB125_1067:                           # %if.then.6080
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	jne	.LBB125_1069
# BB#1068:                              # %if.then.6082
                                        #   in Loop: Header=BB125_1019 Depth=1
	movb	$1, -4178(%rbp)
	jmp	.LBB125_1019
.LBB125_1069:                           # %if.end.6083
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	Fchar_to_string
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-32(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movb	16(%rax), %dl
	andb	$-2, %dl
	orb	$1, %dl
	movb	%dl, 16(%rax)
.LBB125_1070:                           # %if.end.6092
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movb	16(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB125_1072
# BB#1071:                              # %if.then.6098
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$115, -4289(%rbp)
.LBB125_1072:                           # %if.end.6099
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$0, -4245(%rbp)
.LBB125_1073:                           # %if.end.6100
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1074
.LBB125_1074:                           # %if.end.6101
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB125_1079
# BB#1075:                              # %if.then.6107
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB125_1076
	jmp	.LBB125_1078
.LBB125_1076:                           # %land.lhs.true.6114
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	jne	.LBB125_1078
# BB#1077:                              # %if.then.6116
                                        #   in Loop: Header=BB125_1019 Depth=1
	movb	$1, -4178(%rbp)
	jmp	.LBB125_1019
.LBB125_1078:                           # %if.end.6117
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1079
.LBB125_1079:                           # %if.end.6118
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$115, %eax
	jne	.LBB125_1115
# BB#1080:                              # %if.then.6122
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$-1, -4320(%rbp)
	testb	$1, -4273(%rbp)
	je	.LBB125_1083
# BB#1081:                              # %land.lhs.true.6125
                                        #   in Loop: Header=BB125_1020 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -4288(%rbp)
	ja	.LBB125_1083
# BB#1082:                              # %if.then.6128
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4288(%rbp), %rax
	movq	%rax, -4320(%rbp)
.LBB125_1083:                           # %if.end.6129
                                        #   in Loop: Header=BB125_1020 Depth=2
	cmpq	$0, -4320(%rbp)
	jne	.LBB125_1085
# BB#1084:                              # %if.then.6132
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$0, -4336(%rbp)
	movq	$0, -4344(%rbp)
	movq	$0, -4328(%rbp)
	jmp	.LBB125_1089
.LBB125_1085:                           # %if.else.6133
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-4352(%rbp), %rdx
	leaq	-4360(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rax,8), %rdi
	movq	-4320(%rbp), %rsi
	callq	lisp_string_width
	movq	%rax, -4328(%rbp)
	cmpq	$0, -4320(%rbp)
	jge	.LBB125_1087
# BB#1086:                              # %if.then.6138
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SCHARS
	movq	%rax, -4344(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SBYTES
	movq	%rax, -4336(%rbp)
	jmp	.LBB125_1088
.LBB125_1087:                           # %if.else.6143
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4352(%rbp), %rax
	movq	%rax, -4344(%rbp)
	movq	-4360(%rbp), %rax
	movq	%rax, -4336(%rbp)
.LBB125_1088:                           # %if.end.6144
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1089
.LBB125_1089:                           # %if.end.6145
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4336(%rbp), %rax
	movq	%rax, -4240(%rbp)
	cmpq	$0, -4240(%rbp)
	je	.LBB125_1093
# BB#1090:                              # %land.lhs.true.6147
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	je	.LBB125_1093
# BB#1091:                              # %land.lhs.true.6150
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB125_1093
# BB#1092:                              # %if.then.6153
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SDATA
	movq	-4336(%rbp), %rsi
	movq	%rax, %rdi
	callq	count_size_as_multibyte
	movq	%rax, -4240(%rbp)
.LBB125_1093:                           # %if.end.6157
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4328(%rbp), %rax
	cmpq	-4272(%rbp), %rax
	jge	.LBB125_1095
# BB#1094:                              # %cond.true.6160
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4272(%rbp), %rax
	subq	-4328(%rbp), %rax
	movq	%rax, -7600(%rbp)       # 8-byte Spill
	jmp	.LBB125_1096
.LBB125_1095:                           # %cond.false.6162
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7600(%rbp)       # 8-byte Spill
	jmp	.LBB125_1096
.LBB125_1096:                           # %cond.end.6163
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-7600(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4368(%rbp)
	movq	-4056(%rbp), %rax
	subq	-4368(%rbp), %rax
	cmpq	-4240(%rbp), %rax
	jg	.LBB125_1098
# BB#1097:                              # %if.then.6168
	callq	string_overflow
.LBB125_1098:                           # %if.end.6169
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4368(%rbp), %rax
	addq	-4240(%rbp), %rax
	movq	%rax, -4240(%rbp)
	movq	-4240(%rbp), %rax
	movq	-4040(%rbp), %rcx
	addq	-4048(%rbp), %rcx
	movq	-4064(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jg	.LBB125_1114
# BB#1099:                              # %if.then.6177
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4241(%rbp)
	jne	.LBB125_1101
# BB#1100:                              # %if.then.6179
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$32, %esi
	movq	-4064(%rbp), %rdi
	movq	-4368(%rbp), %rdx
	callq	memset
	movq	-4368(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-4368(%rbp), %rdx
	addq	-4096(%rbp), %rdx
	movq	%rdx, -4096(%rbp)
.LBB125_1101:                           # %if.end.6182
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	cmpq	-4040(%rbp), %rax
	jbe	.LBB125_1109
# BB#1102:                              # %land.lhs.true.6185
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	je	.LBB125_1109
# BB#1103:                              # %land.lhs.true.6188
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_1104
	jmp	.LBB125_1105
.LBB125_1104:                           # %cond.true.6189
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	movzbl	-1(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB125_1109
	jmp	.LBB125_1106
.LBB125_1105:                           # %cond.false.6195
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB125_1109
.LBB125_1106:                           # %land.lhs.true.6201
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB125_1107
	jmp	.LBB125_1109
.LBB125_1107:                           # %land.lhs.true.6205
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	SREF
	movzbl	%al, %r8d
	andl	$192, %r8d
	cmpl	$128, %r8d
	jne	.LBB125_1109
# BB#1108:                              # %if.then.6212
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, -4097(%rbp)
.LBB125_1109:                           # %if.end.6213
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SDATA
	movq	-4064(%rbp), %rsi
	movq	-4336(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	%rax, -7608(%rbp)       # 8-byte Spill
	movq	%rsi, -7616(%rbp)       # 8-byte Spill
	movq	%rdx, -7624(%rbp)       # 8-byte Spill
	callq	STRING_MULTIBYTE
	movb	-4178(%rbp), %r8b
	movzbl	%al, %r9d
	andl	$1, %r9d
	movzbl	%r8b, %r10d
	andl	$1, %r10d
	movq	-7608(%rbp), %rdi       # 8-byte Reload
	movq	-7616(%rbp), %rsi       # 8-byte Reload
	movq	-7624(%rbp), %rdx       # 8-byte Reload
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	callq	copy_text
	addq	-4064(%rbp), %rax
	movq	%rax, -4064(%rbp)
	movq	-4096(%rbp), %rax
	movq	-32(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-4136(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-4344(%rbp), %rax
	addq	-4096(%rbp), %rax
	movq	%rax, -4096(%rbp)
	movq	-4096(%rbp), %rax
	movq	-32(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	-4136(%rbp), %rdx
	movq	%rax, 8(%rdx)
	testb	$1, -4241(%rbp)
	je	.LBB125_1111
# BB#1110:                              # %if.then.6227
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$32, %esi
	movq	-4064(%rbp), %rdi
	movq	-4368(%rbp), %rdx
	callq	memset
	movq	-4368(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-4368(%rbp), %rdx
	addq	-4096(%rbp), %rdx
	movq	%rdx, -4096(%rbp)
.LBB125_1111:                           # %if.end.6230
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	je	.LBB125_1113
# BB#1112:                              # %if.then.6234
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, -4098(%rbp)
	movq	-32(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movb	16(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 16(%rax)
.LBB125_1113:                           # %if.end.6239
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1020
.LBB125_1114:                           # %if.end.6240
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1231
.LBB125_1115:                           # %if.else.6241
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$99, %eax
	je	.LBB125_1134
# BB#1116:                              # %lor.lhs.false.6245
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$100, %eax
	je	.LBB125_1134
# BB#1117:                              # %lor.lhs.false.6249
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB125_1134
# BB#1118:                              # %lor.lhs.false.6253
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$102, %eax
	je	.LBB125_1134
# BB#1119:                              # %lor.lhs.false.6257
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$103, %eax
	je	.LBB125_1134
# BB#1120:                              # %lor.lhs.false.6261
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$105, %eax
	je	.LBB125_1134
# BB#1121:                              # %lor.lhs.false.6265
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$111, %eax
	je	.LBB125_1134
# BB#1122:                              # %lor.lhs.false.6269
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$120, %eax
	je	.LBB125_1134
# BB#1123:                              # %lor.lhs.false.6273
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$88, %eax
	je	.LBB125_1134
# BB#1124:                              # %if.then.6277
	movq	-4080(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB125_1126
# BB#1125:                              # %cond.true.6283
	movq	-4080(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, -7628(%rbp)       # 4-byte Spill
	jmp	.LBB125_1133
.LBB125_1126:                           # %cond.false.6287
	movq	-4080(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB125_1128
# BB#1127:                              # %cond.true.6293
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movq	-4080(%rbp), %rdx
	movzbl	-1(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-4080(%rbp), %rdx
	movzbl	(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-4080(%rbp), %rdx
	movzbl	-1(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -7632(%rbp)       # 4-byte Spill
	jmp	.LBB125_1132
.LBB125_1128:                           # %cond.false.6310
	movq	-4080(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB125_1130
# BB#1129:                              # %cond.true.6316
	movq	-4080(%rbp), %rax
	movzbl	-1(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-4080(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-4080(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -7636(%rbp)       # 4-byte Spill
	jmp	.LBB125_1131
.LBB125_1130:                           # %cond.false.6333
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4080(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	string_char
	movl	%eax, -7636(%rbp)       # 4-byte Spill
.LBB125_1131:                           # %cond.end.6336
	movl	-7636(%rbp), %eax       # 4-byte Reload
	movl	%eax, -7632(%rbp)       # 4-byte Spill
.LBB125_1132:                           # %cond.end.6338
	movl	-7632(%rbp), %eax       # 4-byte Reload
	movl	%eax, -7628(%rbp)       # 4-byte Spill
.LBB125_1133:                           # %cond.end.6340
	movl	-7628(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.39, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	error
.LBB125_1134:                           # %if.else.6342
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB125_1136
# BB#1135:                              # %if.then.6345
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	error
.LBB125_1136:                           # %if.else.6346
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$100, %eax
	je	.LBB125_1138
# BB#1137:                              # %lor.lhs.false.6350
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$105, %eax
	jne	.LBB125_1139
.LBB125_1138:                           # %if.then.6354
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$0, -4244(%rbp)
.LBB125_1139:                           # %if.end.6355
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-4377(%rbp), %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4392(%rbp)
	movb	$37, (%rax)
	movq	-4392(%rbp), %rax
	movb	$45, (%rax)
	movb	-4241(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-4392(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movb	$43, (%rax)
	movb	-4242(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-4392(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movb	$32, (%rax)
	movb	-4243(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-4392(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movb	$35, (%rax)
	movb	-4244(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-4392(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movb	$48, (%rax)
	movb	-4245(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-4392(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4392(%rbp)
	movb	$46, (%rax)
	movq	-4392(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -4392(%rbp)
	movb	$42, (%rax)
	movsbl	-4289(%rbp), %esi
	cmpl	$100, %esi
	je	.LBB125_1144
# BB#1140:                              # %lor.lhs.false.6382
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$105, %eax
	je	.LBB125_1144
# BB#1141:                              # %lor.lhs.false.6386
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$111, %eax
	je	.LBB125_1144
# BB#1142:                              # %lor.lhs.false.6390
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$120, %eax
	je	.LBB125_1144
# BB#1143:                              # %lor.lhs.false.6394
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$88, %eax
	jne	.LBB125_1145
.LBB125_1144:                           # %if.then.6398
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4392(%rbp), %rax
	movb	.L.str.41, %cl
	movb	%cl, (%rax)
	movq	-4392(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4392(%rbp)
	movb	-4273(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	xorl	$-1, %edx
	movb	-4245(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	andl	%edx, %esi
	cmpl	$0, %esi
	setne	%cl
	andb	$1, %cl
	movb	%cl, -4245(%rbp)
.LBB125_1145:                           # %if.end.6408
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-4289(%rbp), %al
	movq	-4392(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -4392(%rbp)
	movb	%al, (%rcx)
	movq	-4392(%rbp), %rcx
	movb	$0, (%rcx)
	movl	$-1, -4396(%rbp)
	testb	$1, -4273(%rbp)
	je	.LBB125_1150
# BB#1146:                              # %if.then.6412
                                        #   in Loop: Header=BB125_1020 Depth=2
	cmpq	$1022, -4288(%rbp)      # imm = 0x3FE
	jae	.LBB125_1148
# BB#1147:                              # %cond.true.6415
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4288(%rbp), %rax
	movq	%rax, -7648(%rbp)       # 8-byte Spill
	jmp	.LBB125_1149
.LBB125_1148:                           # %cond.false.6416
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$1022, %eax             # imm = 0x3FE
	movl	%eax, %ecx
	movq	%rcx, -7648(%rbp)       # 8-byte Spill
	jmp	.LBB125_1149
.LBB125_1149:                           # %cond.end.6417
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-7648(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -4396(%rbp)
.LBB125_1150:                           # %if.end.6420
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB125_1153
# BB#1151:                              # %lor.lhs.false.6424
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$102, %eax
	je	.LBB125_1153
# BB#1152:                              # %lor.lhs.false.6428
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$103, %eax
	jne	.LBB125_1157
.LBB125_1153:                           # %if.then.6432
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB125_1155
# BB#1154:                              # %cond.true.6439
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -7656(%rbp)      # 8-byte Spill
	jmp	.LBB125_1156
.LBB125_1155:                           # %cond.false.6443
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XFLOAT_DATA
	movsd	%xmm0, -7656(%rbp)      # 8-byte Spill
.LBB125_1156:                           # %cond.end.6446
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	-7656(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-4377(%rbp), %rsi
	leaq	-5744(%rbp), %rdi
	movsd	%xmm0, -5760(%rbp)
	movl	-4396(%rbp), %edx
	movsd	-5760(%rbp), %xmm0      # xmm0 = mem[0],zero
	movb	$1, %al
	callq	sprintf
	movslq	%eax, %rsi
	movq	%rsi, -5752(%rbp)
	jmp	.LBB125_1182
.LBB125_1157:                           # %if.else.6452
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$99, %eax
	jne	.LBB125_1159
# BB#1158:                              # %if.then.6456
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movb	%al, %dl
	movb	%dl, -5744(%rbp)
	cmpl	$0, -4396(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rax
	movq	%rax, -5752(%rbp)
	jmp	.LBB125_1181
.LBB125_1159:                           # %if.else.6464
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$100, %eax
	jne	.LBB125_1171
# BB#1160:                              # %if.then.6468
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB125_1162
# BB#1161:                              # %if.then.6476
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -5768(%rbp)
	jmp	.LBB125_1170
.LBB125_1162:                           # %if.else.6479
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -5776(%rbp)
	ucomisd	-5776(%rbp), %xmm1
	jbe	.LBB125_1166
# BB#1163:                              # %if.then.6485
                                        #   in Loop: Header=BB125_1020 Depth=2
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	%rax, -5768(%rbp)
	cvtsi2sdq	-5768(%rbp), %xmm0
	movsd	-5776(%rbp), %xmm1      # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB125_1165
# BB#1164:                              # %if.then.6489
                                        #   in Loop: Header=BB125_1020 Depth=2
	cvttsd2si	-5776(%rbp), %rax
	movq	%rax, -5768(%rbp)
.LBB125_1165:                           # %if.end.6491
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1169
.LBB125_1166:                           # %if.else.6492
                                        #   in Loop: Header=BB125_1020 Depth=2
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -5768(%rbp)
	movsd	-5776(%rbp), %xmm0      # xmm0 = mem[0],zero
	cvtsi2sdq	-5768(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB125_1168
# BB#1167:                              # %if.then.6496
                                        #   in Loop: Header=BB125_1020 Depth=2
	cvttsd2si	-5776(%rbp), %rax
	movq	%rax, -5768(%rbp)
.LBB125_1168:                           # %if.end.6498
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1169
.LBB125_1169:                           # %if.end.6499
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1170
.LBB125_1170:                           # %if.end.6500
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-4377(%rbp), %rsi
	leaq	-5744(%rbp), %rdi
	movl	-4396(%rbp), %edx
	movq	-5768(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rcx
	movq	%rcx, -5752(%rbp)
	jmp	.LBB125_1180
.LBB125_1171:                           # %if.else.6505
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB125_1173
# BB#1172:                              # %if.then.6513
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XUINT
	movq	%rax, -5784(%rbp)
	jmp	.LBB125_1179
.LBB125_1173:                           # %if.else.6516
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -5792(%rbp)
	ucomisd	-5792(%rbp), %xmm1
	jbe	.LBB125_1175
# BB#1174:                              # %if.then.6522
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$0, -5784(%rbp)
	jmp	.LBB125_1178
.LBB125_1175:                           # %if.else.6523
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$-1, -5784(%rbp)
	movsd	-5792(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	.LCPI125_4(%rip), %xmm1 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB125_1177
# BB#1176:                              # %if.then.6527
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsd	-5792(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	.LCPI125_3(%rip), %xmm1 # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	cvttsd2si	%xmm0, %rcx
	ucomisd	%xmm0, %xmm1
	cmovaq	%rcx, %rax
	movq	%rax, -5784(%rbp)
.LBB125_1177:                           # %if.end.6529
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1178
.LBB125_1178:                           # %if.end.6530
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1179
.LBB125_1179:                           # %if.end.6531
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-4377(%rbp), %rsi
	leaq	-5744(%rbp), %rdi
	movl	-4396(%rbp), %edx
	movq	-5784(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rcx
	movq	%rcx, -5752(%rbp)
.LBB125_1180:                           # %if.end.6536
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1181
.LBB125_1181:                           # %if.end.6537
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1182
.LBB125_1182:                           # %if.end.6538
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4288(%rbp), %rax
	movslq	-4396(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -5800(%rbp)
	movq	$0, -5808(%rbp)
	movq	$0, -5816(%rbp)
	cmpq	$0, -5800(%rbp)
	je	.LBB125_1199
# BB#1183:                              # %if.then.6542
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB125_1186
# BB#1184:                              # %lor.lhs.false.6546
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$102, %eax
	je	.LBB125_1186
# BB#1185:                              # %lor.lhs.false.6550
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$103, %eax
	jne	.LBB125_1197
.LBB125_1186:                           # %if.then.6554
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$103, %eax
	jne	.LBB125_1188
# BB#1187:                              # %land.lhs.true.6558
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4244(%rbp)
	je	.LBB125_1190
.LBB125_1188:                           # %lor.lhs.false.6560
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$48, %eax
	movq	-5752(%rbp), %rcx
	subq	$1, %rcx
	movsbl	-5744(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	jg	.LBB125_1190
# BB#1189:                              # %land.lhs.true.6566
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5752(%rbp), %rax
	subq	$1, %rax
	movsbl	-5744(%rbp,%rax), %ecx
	cmpl	$57, %ecx
	jle	.LBB125_1191
.LBB125_1190:                           # %if.then.6572
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$0, -5800(%rbp)
	jmp	.LBB125_1196
.LBB125_1191:                           # %if.else.6573
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$103, %eax
	jne	.LBB125_1195
# BB#1192:                              # %if.then.6577
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$46, %esi
	leaq	-5744(%rbp), %rdi
	callq	strchr
	movq	%rax, -5824(%rbp)
	cmpq	$0, -5824(%rbp)
	jne	.LBB125_1194
# BB#1193:                              # %if.then.6581
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	$0, -5800(%rbp)
.LBB125_1194:                           # %if.end.6582
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1195
.LBB125_1195:                           # %if.end.6583
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1196
.LBB125_1196:                           # %if.end.6584
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5800(%rbp), %rax
	movq	%rax, -5816(%rbp)
	jmp	.LBB125_1198
.LBB125_1197:                           # %if.else.6585
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5800(%rbp), %rax
	movq	%rax, -5808(%rbp)
.LBB125_1198:                           # %if.end.6586
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1199
.LBB125_1199:                           # %if.end.6587
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5752(%rbp), %rax
	addq	-5800(%rbp), %rax
	movq	%rax, -5832(%rbp)
	movq	-5832(%rbp), %rax
	cmpq	-4272(%rbp), %rax
	jae	.LBB125_1201
# BB#1200:                              # %cond.true.6592
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4272(%rbp), %rax
	subq	-5832(%rbp), %rax
	movq	%rax, -7664(%rbp)       # 8-byte Spill
	jmp	.LBB125_1202
.LBB125_1201:                           # %cond.false.6594
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7664(%rbp)       # 8-byte Spill
	jmp	.LBB125_1202
.LBB125_1202:                           # %cond.end.6595
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-7664(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5840(%rbp)
	movq	-4056(%rbp), %rax
	subq	-5752(%rbp), %rax
	cmpq	-5800(%rbp), %rax
	jbe	.LBB125_1204
# BB#1203:                              # %lor.lhs.false.6600
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4056(%rbp), %rax
	subq	-5840(%rbp), %rax
	cmpq	-5832(%rbp), %rax
	ja	.LBB125_1205
.LBB125_1204:                           # %if.then.6604
	callq	string_overflow
.LBB125_1205:                           # %if.end.6605
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5832(%rbp), %rax
	addq	-5840(%rbp), %rax
	movq	%rax, -4240(%rbp)
	movq	-4240(%rbp), %rax
	movq	-4040(%rbp), %rcx
	addq	-4048(%rbp), %rcx
	movq	-4064(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jg	.LBB125_1228
# BB#1206:                              # %if.then.6613
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	leaq	-5744(%rbp), %rcx
	movq	%rcx, -5848(%rbp)
	movq	-5848(%rbp), %rcx
	movb	(%rcx), %dl
	movb	%dl, -5849(%rbp)
	movl	$0, -5856(%rbp)
	movsbl	-5849(%rbp), %esi
	cmpl	$45, %esi
	movb	%al, -7665(%rbp)        # 1-byte Spill
	je	.LBB125_1209
# BB#1207:                              # %lor.lhs.false.6619
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	movsbl	-5849(%rbp), %ecx
	cmpl	$43, %ecx
	movb	%al, -7665(%rbp)        # 1-byte Spill
	je	.LBB125_1209
# BB#1208:                              # %lor.rhs
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-5849(%rbp), %eax
	cmpl	$32, %eax
	sete	%cl
	movb	%cl, -7665(%rbp)        # 1-byte Spill
.LBB125_1209:                           # %lor.end
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-7665(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movb	%al, -5857(%rbp)
	testb	$1, -4245(%rbp)
	je	.LBB125_1217
# BB#1210:                              # %land.lhs.true.6629
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-5857(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movq	-5848(%rbp), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$48, %ecx
	jl	.LBB125_1212
# BB#1211:                              # %land.lhs.true.6635
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-5857(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movq	-5848(%rbp), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$57, %ecx
	jle	.LBB125_1216
.LBB125_1212:                           # %lor.lhs.false.6642
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-5857(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movq	-5848(%rbp), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$97, %ecx
	jl	.LBB125_1214
# BB#1213:                              # %land.lhs.true.6649
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-5857(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movq	-5848(%rbp), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$102, %ecx
	jle	.LBB125_1216
.LBB125_1214:                           # %lor.lhs.false.6656
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-5857(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movq	-5848(%rbp), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$65, %ecx
	jl	.LBB125_1217
# BB#1215:                              # %land.lhs.true.6663
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-5857(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, %edx
	movq	-5848(%rbp), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$70, %ecx
	jg	.LBB125_1217
.LBB125_1216:                           # %if.then.6670
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5840(%rbp), %rax
	addq	-5808(%rbp), %rax
	movq	%rax, -5808(%rbp)
	movq	$0, -5840(%rbp)
.LBB125_1217:                           # %if.end.6672
                                        #   in Loop: Header=BB125_1020 Depth=2
	cmpq	$0, -5800(%rbp)
	je	.LBB125_1223
# BB#1218:                              # %land.lhs.true.6674
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$101, %eax
	je	.LBB125_1220
# BB#1219:                              # %lor.lhs.false.6678
                                        #   in Loop: Header=BB125_1020 Depth=2
	movsbl	-4289(%rbp), %eax
	cmpl	$103, %eax
	jne	.LBB125_1223
.LBB125_1220:                           # %if.then.6682
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$101, %esi
	movq	-5848(%rbp), %rdi
	callq	strchr
	movq	%rax, -5872(%rbp)
	cmpq	$0, -5872(%rbp)
	je	.LBB125_1222
# BB#1221:                              # %if.then.6685
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-5848(%rbp), %rax
	addq	-5752(%rbp), %rax
	movq	-5872(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -5856(%rbp)
.LBB125_1222:                           # %if.end.6691
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1223
.LBB125_1223:                           # %if.end.6692
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4241(%rbp)
	jne	.LBB125_1225
# BB#1224:                              # %if.then.6694
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$32, %esi
	movq	-4064(%rbp), %rdi
	movq	-5840(%rbp), %rdx
	callq	memset
	movq	-5840(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-5840(%rbp), %rdx
	addq	-4096(%rbp), %rdx
	movq	%rdx, -4096(%rbp)
.LBB125_1225:                           # %if.end.6697
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$48, %eax
	movb	-5849(%rbp), %cl
	movq	-4064(%rbp), %rdx
	movb	%cl, (%rdx)
	movb	-5857(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-5848(%rbp), %rdx
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -5848(%rbp)
	movb	-5857(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-4064(%rbp), %rdx
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -4064(%rbp)
	movq	-4064(%rbp), %rdi
	movq	-5808(%rbp), %rdx
	movl	%eax, %esi
	movl	%eax, -7672(%rbp)       # 4-byte Spill
	callq	memset
	movq	-5808(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-5752(%rbp), %rdx
	movb	-5857(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	subq	%rdi, %rdx
	movslq	-5856(%rbp), %rdi
	subq	%rdi, %rdx
	movl	%edx, %eax
	movl	%eax, -5876(%rbp)
	movq	-4064(%rbp), %rdi
	movq	-5848(%rbp), %rsi
	movslq	-5876(%rbp), %rdx
	callq	memcpy
	movl	-5876(%rbp), %eax
	movq	-4064(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -4064(%rbp)
	movl	-5876(%rbp), %eax
	movq	-5848(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -5848(%rbp)
	movq	-4064(%rbp), %rdi
	movq	-5816(%rbp), %rdx
	movl	-7672(%rbp), %esi       # 4-byte Reload
	callq	memset
	movq	-5816(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-4064(%rbp), %rdi
	movq	-5848(%rbp), %rsi
	movslq	-5856(%rbp), %rdx
	callq	memcpy
	movl	-5856(%rbp), %eax
	movq	-4064(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -4064(%rbp)
	movq	-4096(%rbp), %rdx
	movq	-32(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-4136(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-5808(%rbp), %rdx
	addq	-5752(%rbp), %rdx
	addq	-5816(%rbp), %rdx
	addq	-4096(%rbp), %rdx
	movq	%rdx, -4096(%rbp)
	movq	-4096(%rbp), %rdx
	movq	-32(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	-4136(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	testb	$1, -4241(%rbp)
	je	.LBB125_1227
# BB#1226:                              # %if.then.6730
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$32, %esi
	movq	-4064(%rbp), %rdi
	movq	-5840(%rbp), %rdx
	callq	memset
	movq	-5840(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-5840(%rbp), %rdx
	addq	-4096(%rbp), %rdx
	movq	%rdx, -4096(%rbp)
.LBB125_1227:                           # %if.end.6733
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1020
.LBB125_1228:                           # %if.end.6734
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1229
.LBB125_1229:                           # %if.end.6735
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1230
.LBB125_1230:                           # %if.end.6736
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1231
.LBB125_1231:                           # %if.end.6737
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1289
.LBB125_1232:                           # %if.else.6738
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	cmpl	$96, %eax
	je	.LBB125_1234
# BB#1233:                              # %lor.lhs.false.6742
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	cmpl	$39, %eax
	jne	.LBB125_1238
.LBB125_1234:                           # %land.lhs.true.6746
                                        #   in Loop: Header=BB125_1020 Depth=2
	cmpl	$0, -4196(%rbp)
	jne	.LBB125_1238
# BB#1235:                              # %if.then.6749
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	jne	.LBB125_1237
# BB#1236:                              # %if.then.6751
                                        #   in Loop: Header=BB125_1019 Depth=1
	movb	$1, -4178(%rbp)
	jmp	.LBB125_1019
.LBB125_1237:                           # %if.end.6752
                                        #   in Loop: Header=BB125_1020 Depth=2
	movabsq	$.L.str.43, %rax
	movabsq	$.L.str.42, %rcx
	movzbl	-4225(%rbp), %edx
	cmpl	$96, %edx
	cmoveq	%rcx, %rax
	movq	%rax, -4224(%rbp)
	movq	$3, -4240(%rbp)
	jmp	.LBB125_1285
.LBB125_1238:                           # %if.else.6757
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	cmpl	$96, %eax
	jne	.LBB125_1241
# BB#1239:                              # %land.lhs.true.6761
                                        #   in Loop: Header=BB125_1020 Depth=2
	cmpl	$2, -4196(%rbp)
	jne	.LBB125_1241
# BB#1240:                              # %if.then.6764
                                        #   in Loop: Header=BB125_1020 Depth=2
	movabsq	$.L.str.44, %rax
	movq	%rax, -4224(%rbp)
	jmp	.LBB125_1284
.LBB125_1241:                           # %if.else.6765
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	cmpl	$226, %eax
	jne	.LBB125_1250
# BB#1242:                              # %land.lhs.true.6769
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%eax, %eax
	cmpl	-4196(%rbp), %eax
	jge	.LBB125_1250
# BB#1243:                              # %land.lhs.true.6772
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4177(%rbp)
	je	.LBB125_1250
# BB#1244:                              # %land.lhs.true.6775
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4080(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$128, %ecx
	jne	.LBB125_1250
# BB#1245:                              # %land.lhs.true.6780
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4080(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$152, %ecx
	je	.LBB125_1247
# BB#1246:                              # %lor.lhs.false.6785
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4080(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$153, %ecx
	jne	.LBB125_1250
.LBB125_1247:                           # %if.then.6790
                                        #   in Loop: Header=BB125_1020 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-4080(%rbp), %rdx
	movzbl	1(%rdx), %eax
	cmpl	$152, %eax
	movb	%cl, -7673(%rbp)        # 1-byte Spill
	jne	.LBB125_1249
# BB#1248:                              # %land.rhs.6795
                                        #   in Loop: Header=BB125_1020 Depth=2
	cmpl	$1, -4196(%rbp)
	sete	%al
	movb	%al, -7673(%rbp)        # 1-byte Spill
.LBB125_1249:                           # %land.end.6798
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	-7673(%rbp), %al        # 1-byte Reload
	movl	$2, %esi
	movl	$2, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %r8
	testb	$1, %al
	cmovneq	%r8, %rdi
	movq	%rdi, -4224(%rbp)
	movq	-4080(%rbp), %rdi
	addq	$2, %rdi
	movq	%rdi, -4080(%rbp)
	movq	-4216(%rbp), %rdi
	addq	$1, %rdi
	movq	-4144(%rbp), %r8
	subq	%r8, %rdi
	addq	-4176(%rbp), %rdi
	callq	memset
	jmp	.LBB125_1283
.LBB125_1250:                           # %if.else.6806
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4177(%rbp)
	je	.LBB125_1261
# BB#1251:                              # %if.then.6808
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	cmpq	-4040(%rbp), %rax
	jbe	.LBB125_1257
# BB#1252:                              # %land.lhs.true.6811
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_1253
	jmp	.LBB125_1254
.LBB125_1253:                           # %cond.true.6812
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	movzbl	-1(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	jb	.LBB125_1257
	jmp	.LBB125_1255
.LBB125_1254:                           # %cond.false.6818
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %eax
	addq	$0, %rax
	cmpq	$128, %rax
	jb	.LBB125_1257
.LBB125_1255:                           # %land.lhs.true.6824
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	andl	$192, %eax
	cmpl	$128, %eax
	jne	.LBB125_1257
# BB#1256:                              # %if.then.6829
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, -4097(%rbp)
.LBB125_1257:                           # %if.end.6830
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1258
.LBB125_1258:                           # %while.cond.6831
                                        #   Parent Loop BB125_1019 Depth=1
                                        #     Parent Loop BB125_1020 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-4080(%rbp), %rax
	movsbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB125_1259
	jmp	.LBB125_1260
.LBB125_1259:                           # %while.body.6836
                                        #   in Loop: Header=BB125_1258 Depth=3
	movq	-4080(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -4080(%rbp)
	jmp	.LBB125_1258
.LBB125_1260:                           # %while.end
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$2, %esi
	movq	-4080(%rbp), %rax
	movq	-4216(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -4240(%rbp)
	movq	-4216(%rbp), %rax
	addq	$1, %rax
	movq	-4144(%rbp), %rcx
	subq	%rcx, %rax
	addq	-4176(%rbp), %rax
	movq	-4240(%rbp), %rcx
	subq	$1, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	jmp	.LBB125_1282
.LBB125_1261:                           # %if.else.6847
                                        #   in Loop: Header=BB125_1020 Depth=2
	testb	$1, -4178(%rbp)
	je	.LBB125_1281
# BB#1262:                              # %land.lhs.true.6850
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_1263
	jmp	.LBB125_1264
.LBB125_1263:                           # %cond.true.6851
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB125_1281
	jmp	.LBB125_1265
.LBB125_1264:                           # %cond.false.6856
                                        #   in Loop: Header=BB125_1020 Depth=2
	movzbl	-4225(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	cmpq	$128, %rcx
	jb	.LBB125_1281
.LBB125_1265:                           # %if.then.6861
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	movzbl	-4225(%rbp), %ecx
	addl	$4194048, %ecx          # imm = 0x3FFF00
	movl	%ecx, -5888(%rbp)
	testb	$1, %al
	jne	.LBB125_1266
	jmp	.LBB125_1267
.LBB125_1266:                           # %cond.true.6864
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	-5888(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB125_1268
	jmp	.LBB125_1269
.LBB125_1267:                           # %cond.false.6868
                                        #   in Loop: Header=BB125_1020 Depth=2
	movslq	-5888(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB125_1269
.LBB125_1268:                           # %cond.true.6873
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$1, %eax
	movl	-5888(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -5881(%rbp)
	movl	%eax, -7680(%rbp)       # 4-byte Spill
	jmp	.LBB125_1280
.LBB125_1269:                           # %cond.false.6876
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_1270
	jmp	.LBB125_1271
.LBB125_1270:                           # %cond.true.6877
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	-5888(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB125_1272
	jmp	.LBB125_1273
.LBB125_1271:                           # %cond.false.6881
                                        #   in Loop: Header=BB125_1020 Depth=2
	movslq	-5888(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB125_1273
.LBB125_1272:                           # %cond.true.6886
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$2, %eax
	movl	-5888(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -5881(%rbp)
	movl	-5888(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -5880(%rbp)
	movl	%eax, -7684(%rbp)       # 4-byte Spill
	jmp	.LBB125_1279
.LBB125_1273:                           # %cond.false.6895
                                        #   in Loop: Header=BB125_1020 Depth=2
	movb	$1, %al
	testb	$1, %al
	jne	.LBB125_1274
	jmp	.LBB125_1275
.LBB125_1274:                           # %cond.true.6896
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	-5888(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB125_1276
	jmp	.LBB125_1277
.LBB125_1275:                           # %cond.false.6900
                                        #   in Loop: Header=BB125_1020 Depth=2
	movslq	-5888(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB125_1277
.LBB125_1276:                           # %cond.true.6905
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$3, %eax
	movl	-5888(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -5881(%rbp)
	movl	-5888(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -5880(%rbp)
	movl	-5888(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -5879(%rbp)
	movl	%eax, -7688(%rbp)       # 4-byte Spill
	jmp	.LBB125_1278
.LBB125_1277:                           # %cond.false.6919
                                        #   in Loop: Header=BB125_1020 Depth=2
	leaq	-5881(%rbp), %rsi
	movl	-5888(%rbp), %edi
	callq	char_string
	movl	%eax, -7688(%rbp)       # 4-byte Spill
.LBB125_1278:                           # %cond.end.6922
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	-7688(%rbp), %eax       # 4-byte Reload
	movl	%eax, -7684(%rbp)       # 4-byte Spill
.LBB125_1279:                           # %cond.end.6924
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	-7684(%rbp), %eax       # 4-byte Reload
	movl	%eax, -7680(%rbp)       # 4-byte Spill
.LBB125_1280:                           # %cond.end.6926
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	-7680(%rbp), %eax       # 4-byte Reload
	leaq	-5881(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, -4240(%rbp)
	movq	%rcx, -4224(%rbp)
.LBB125_1281:                           # %if.end.6930
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1282
.LBB125_1282:                           # %if.end.6931
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1283
.LBB125_1283:                           # %if.end.6932
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1284
.LBB125_1284:                           # %if.end.6933
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1285
.LBB125_1285:                           # %if.end.6934
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1286
.LBB125_1286:                           # %copy_char
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4240(%rbp), %rax
	movq	-4040(%rbp), %rcx
	addq	-4048(%rbp), %rcx
	movq	-4064(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jg	.LBB125_1288
# BB#1287:                              # %if.then.6941
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rdi
	movq	-4224(%rbp), %rsi
	movq	-4240(%rbp), %rdx
	callq	memcpy
	movq	-4240(%rbp), %rdx
	addq	-4064(%rbp), %rdx
	movq	%rdx, -4064(%rbp)
	movq	-4096(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -4096(%rbp)
	jmp	.LBB125_1020
.LBB125_1288:                           # %if.end.6944
                                        #   in Loop: Header=BB125_1020 Depth=2
	jmp	.LBB125_1289
.LBB125_1289:                           # %if.end.6945
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4064(%rbp), %rax
	movq	-4040(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -5896(%rbp)
	movq	-4056(%rbp), %rax
	subq	-5896(%rbp), %rax
	cmpq	-4240(%rbp), %rax
	jge	.LBB125_1291
# BB#1290:                              # %if.then.6952
	callq	string_overflow
.LBB125_1291:                           # %if.end.6953
                                        #   in Loop: Header=BB125_1020 Depth=2
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-5896(%rbp), %rdx
	addq	-4240(%rbp), %rdx
	movq	%rdx, -4048(%rbp)
	movq	-4048(%rbp), %rdx
	movq	-4056(%rbp), %rax
	movq	%rdx, -7696(%rbp)       # 8-byte Spill
	cqto
	idivq	%rcx
	movq	-7696(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jge	.LBB125_1293
# BB#1292:                              # %cond.true.6958
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4048(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -7704(%rbp)       # 8-byte Spill
	jmp	.LBB125_1294
.LBB125_1293:                           # %cond.false.6960
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4056(%rbp), %rax
	movq	%rax, -7704(%rbp)       # 8-byte Spill
.LBB125_1294:                           # %cond.end.6961
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-7704(%rbp), %rax       # 8-byte Reload
	leaq	-4032(%rbp), %rcx
	movq	%rax, -4048(%rbp)
	movq	-4040(%rbp), %rax
	cmpq	%rcx, %rax
	jne	.LBB125_1296
# BB#1295:                              # %if.then.6966
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4048(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -4040(%rbp)
	movb	$1, -4121(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$xfree, %rdi
	movq	%rax, -4072(%rbp)
	movq	-4040(%rbp), %rsi
	callq	record_unwind_protect_ptr
	leaq	-4032(%rbp), %rax
	movq	-4040(%rbp), %rdi
	movq	-5896(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB125_1297
.LBB125_1296:                           # %if.else.6969
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4040(%rbp), %rdi
	movq	-4048(%rbp), %rsi
	callq	xrealloc
	movabsq	$xfree, %rsi
	movq	%rax, -4040(%rbp)
	movq	-4072(%rbp), %rdi
	movq	-4040(%rbp), %rdx
	callq	set_unwind_protect_ptr
.LBB125_1297:                           # %if.end.6971
                                        #   in Loop: Header=BB125_1020 Depth=2
	movq	-4040(%rbp), %rax
	addq	-5896(%rbp), %rax
	movq	%rax, -4064(%rbp)
	movq	-4216(%rbp), %rax
	movq	%rax, -4080(%rbp)
	movq	-4208(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB125_1020
.LBB125_1298:                           # %while.end.6973
	movq	-4048(%rbp), %rax
	movq	-4064(%rbp), %rcx
	movq	-4040(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jge	.LBB125_1300
# BB#1299:                              # %if.then.6979
	callq	emacs_abort
.LBB125_1300:                           # %if.end.6980
	testb	$1, -4097(%rbp)
	je	.LBB125_1302
# BB#1301:                              # %if.then.6982
	movq	-4040(%rbp), %rdi
	movq	-4064(%rbp), %rax
	movq	-4040(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	multibyte_chars_in_text
	movq	%rax, -4096(%rbp)
.LBB125_1302:                           # %if.end.6987
	movq	-4040(%rbp), %rdi
	movq	-4096(%rbp), %rsi
	movq	-4064(%rbp), %rax
	movq	-4040(%rbp), %rcx
	subq	%rcx, %rax
	movb	-4178(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -7705(%rbp)        # 1-byte Spill
	movq	%rax, %rdx
	movb	-7705(%rbp), %r8b       # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	make_specified_string
	movq	%rax, -5904(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	string_intervals
	cmpq	$0, %rax
	jne	.LBB125_1304
# BB#1303:                              # %lor.lhs.false.6996
	testb	$1, -4098(%rbp)
	je	.LBB125_1344
.LBB125_1304:                           # %if.then.6999
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -5912(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-5912(%rbp), %rdx
	movq	%rdx, -7720(%rbp)       # 8-byte Spill
	movq	%rax, -7728(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-7728(%rbp), %rdi       # 8-byte Reload
	movq	-7720(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	text_property_list
	movq	%rax, -5920(%rbp)
	movq	-5920(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$3, %r8d
	jne	.LBB125_1332
# BB#1305:                              # %if.then.7011
	movq	$0, -5928(%rbp)
	movq	$0, -5936(%rbp)
	movq	$0, -5944(%rbp)
	movq	$1, -5952(%rbp)
	movq	-5920(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -5920(%rbp)
	movq	-5920(%rbp), %rax
	movq	%rax, -5960(%rbp)
.LBB125_1306:                           # %for.cond.7013
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB125_1308 Depth 2
                                        #     Child Loop BB125_1319 Depth 2
	movq	-5960(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB125_1331
# BB#1307:                              # %for.body.7018
                                        #   in Loop: Header=BB125_1306 Depth=1
	movq	-5960(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -5968(%rbp)
	movq	-5968(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -5976(%rbp)
.LBB125_1308:                           # %for.cond.7023
                                        #   Parent Loop BB125_1306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5936(%rbp), %rax
	cmpq	-5976(%rbp), %rax
	jge	.LBB125_1318
# BB#1309:                              # %for.body.7026
                                        #   in Loop: Header=BB125_1308 Depth=2
	movq	-5928(%rbp), %rax
	movq	-4176(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB125_1311
# BB#1310:                              # %if.then.7029
                                        #   in Loop: Header=BB125_1308 Depth=2
	movq	-5936(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5936(%rbp)
	movq	-5944(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5944(%rbp)
	jmp	.LBB125_1316
.LBB125_1311:                           # %if.else.7032
                                        #   in Loop: Header=BB125_1308 Depth=2
	movq	-5928(%rbp), %rax
	movq	-4176(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$1, %edx
	jne	.LBB125_1315
# BB#1312:                              # %if.then.7037
                                        #   in Loop: Header=BB125_1308 Depth=2
	movq	-5936(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5936(%rbp)
	movq	-5944(%rbp), %rax
	movq	-5952(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-4136(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB125_1314
# BB#1313:                              # %if.then.7043
                                        #   in Loop: Header=BB125_1308 Depth=2
	movq	-5952(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-5952(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-4136(%rbp), %rcx
	subq	(%rcx), %rax
	addq	-5944(%rbp), %rax
	movq	%rax, -5944(%rbp)
	movq	-5952(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5952(%rbp)
.LBB125_1314:                           # %if.end.7051
                                        #   in Loop: Header=BB125_1308 Depth=2
	jmp	.LBB125_1315
.LBB125_1315:                           # %if.end.7052
                                        #   in Loop: Header=BB125_1308 Depth=2
	jmp	.LBB125_1316
.LBB125_1316:                           # %if.end.7053
                                        #   in Loop: Header=BB125_1308 Depth=2
	jmp	.LBB125_1317
.LBB125_1317:                           # %for.inc.7054
                                        #   in Loop: Header=BB125_1308 Depth=2
	movq	-5928(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5928(%rbp)
	jmp	.LBB125_1308
.LBB125_1318:                           # %for.end.7056
                                        #   in Loop: Header=BB125_1306 Depth=1
	movq	-5968(%rbp), %rdi
	movq	-5944(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
	movq	-5968(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -5976(%rbp)
.LBB125_1319:                           # %for.cond.7063
                                        #   Parent Loop BB125_1306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5936(%rbp), %rax
	cmpq	-5976(%rbp), %rax
	jge	.LBB125_1329
# BB#1320:                              # %for.body.7066
                                        #   in Loop: Header=BB125_1319 Depth=2
	movq	-5928(%rbp), %rax
	movq	-4176(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB125_1322
# BB#1321:                              # %if.then.7069
                                        #   in Loop: Header=BB125_1319 Depth=2
	movq	-5936(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5936(%rbp)
	movq	-5944(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5944(%rbp)
	jmp	.LBB125_1327
.LBB125_1322:                           # %if.else.7072
                                        #   in Loop: Header=BB125_1319 Depth=2
	movq	-5928(%rbp), %rax
	movq	-4176(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$1, %edx
	jne	.LBB125_1326
# BB#1323:                              # %if.then.7077
                                        #   in Loop: Header=BB125_1319 Depth=2
	movq	-5936(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5936(%rbp)
	movq	-5944(%rbp), %rax
	movq	-5952(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-4136(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB125_1325
# BB#1324:                              # %if.then.7083
                                        #   in Loop: Header=BB125_1319 Depth=2
	movq	-5952(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-5952(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-4136(%rbp), %rcx
	subq	(%rcx), %rax
	addq	-5944(%rbp), %rax
	movq	%rax, -5944(%rbp)
	movq	-5952(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5952(%rbp)
.LBB125_1325:                           # %if.end.7091
                                        #   in Loop: Header=BB125_1319 Depth=2
	jmp	.LBB125_1326
.LBB125_1326:                           # %if.end.7092
                                        #   in Loop: Header=BB125_1319 Depth=2
	jmp	.LBB125_1327
.LBB125_1327:                           # %if.end.7093
                                        #   in Loop: Header=BB125_1319 Depth=2
	jmp	.LBB125_1328
.LBB125_1328:                           # %for.inc.7094
                                        #   in Loop: Header=BB125_1319 Depth=2
	movq	-5928(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5928(%rbp)
	jmp	.LBB125_1319
.LBB125_1329:                           # %for.end.7096
                                        #   in Loop: Header=BB125_1306 Depth=1
	movq	-5968(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	movq	-5944(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCAR
# BB#1330:                              # %for.inc.7102
                                        #   in Loop: Header=BB125_1306 Depth=1
	movq	-5960(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -5960(%rbp)
	jmp	.LBB125_1306
.LBB125_1331:                           # %for.end.7106
	movl	$2, %eax
	movl	%eax, %edx
	movq	-5904(%rbp), %rdi
	movq	-5920(%rbp), %rsi
	callq	add_text_properties_from_list
.LBB125_1332:                           # %if.end.7107
	testb	$1, -4098(%rbp)
	je	.LBB125_1343
# BB#1333:                              # %if.then.7109
	movq	$1, -5984(%rbp)
.LBB125_1334:                           # %for.cond.7111
                                        # =>This Inner Loop Header: Depth=1
	movq	-5984(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB125_1342
# BB#1335:                              # %for.body.7114
                                        #   in Loop: Header=BB125_1334 Depth=1
	movq	-5984(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movb	16(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB125_1340
# BB#1336:                              # %if.then.7120
                                        #   in Loop: Header=BB125_1334 Depth=1
	movq	-5984(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -5912(%rbp)
	movq	-5984(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-5984(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	-4136(%rbp), %rcx
	subq	(%rcx), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -5992(%rbp)
	movq	-5984(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-5912(%rbp), %rdx
	movq	%rdx, -7736(%rbp)       # 8-byte Spill
	movq	%rax, -7744(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	-7744(%rbp), %rdi       # 8-byte Reload
	movq	-7736(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	text_property_list
	movq	%rax, -5920(%rbp)
	movq	-5920(%rbp), %rdi
	movq	-5992(%rbp), %rsi
	callq	extend_property_ranges
	movl	$1, %r8d
	movl	%r8d, %ecx
	movq	%rax, -5920(%rbp)
	cmpq	-5984(%rbp), %rcx
	jge	.LBB125_1339
# BB#1337:                              # %land.lhs.true.7138
                                        #   in Loop: Header=BB125_1334 Depth=1
	movq	-5984(%rbp), %rax
	subq	$1, %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB125_1339
# BB#1338:                              # %if.then.7143
                                        #   in Loop: Header=BB125_1334 Depth=1
	movq	-5920(%rbp), %rdi
	callq	make_composition_value_copy
.LBB125_1339:                           # %if.end.7144
                                        #   in Loop: Header=BB125_1334 Depth=1
	movq	-5904(%rbp), %rdi
	movq	-5920(%rbp), %rsi
	movq	-5984(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-4136(%rbp), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	add_text_properties_from_list
.LBB125_1340:                           # %if.end.7149
                                        #   in Loop: Header=BB125_1334 Depth=1
	jmp	.LBB125_1341
.LBB125_1341:                           # %for.inc.7150
                                        #   in Loop: Header=BB125_1334 Depth=1
	movq	-5984(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5984(%rbp)
	jmp	.LBB125_1334
.LBB125_1342:                           # %for.end.7152
	jmp	.LBB125_1343
.LBB125_1343:                           # %if.end.7153
	jmp	.LBB125_1344
.LBB125_1344:                           # %if.end.7154
	jmp	.LBB125_1345
.LBB125_1345:                           # %do.body
	testb	$1, -4121(%rbp)
	je	.LBB125_1347
# BB#1346:                              # %if.then.7156
	xorl	%edi, %edi
	movb	$0, -4121(%rbp)
	movq	-4120(%rbp), %rax
	movq	%rax, -7752(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-7752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -7760(%rbp)       # 8-byte Spill
.LBB125_1347:                           # %if.end.7159
	jmp	.LBB125_1348
.LBB125_1348:                           # %do.end
	movq	-5904(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	styled_format, .Lfunc_end125-styled_format
	.cfi_endproc

	.globl	Fchar_equal
	.align	16, 0x90
	.type	Fchar_equal,@function
Fchar_equal:                            # @Fchar_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp379:
	.cfi_def_cfa_offset 16
.Ltmp380:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp381:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB126_1
	jmp	.LBB126_3
.LBB126_1:                              # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB126_3
# BB#2:                                 # %cond.true
	jmp	.LBB126_4
.LBB126_3:                              # %cond.false
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB126_4:                              # %cond.end
	movq	-24(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB126_5
	jmp	.LBB126_7
.LBB126_5:                              # %land.lhs.true.3
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB126_7
# BB#6:                                 # %cond.true.6
	jmp	.LBB126_8
.LBB126_7:                              # %cond.false.7
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB126_8:                              # %cond.end.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB126_10
# BB#9:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB126_36
.LBB126_10:                             # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB126_12
# BB#11:                                # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB126_36
.LBB126_12:                             # %if.end.18
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB126_32
# BB#13:                                # %if.then.25
	movb	$1, %al
	testb	$1, %al
	jne	.LBB126_14
	jmp	.LBB126_15
.LBB126_14:                             # %cond.true.26
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB126_16
	jmp	.LBB126_22
.LBB126_15:                             # %cond.false.29
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB126_22
.LBB126_16:                             # %if.then.34
	movb	$1, %al
	testb	$1, %al
	jne	.LBB126_17
	jmp	.LBB126_18
.LBB126_17:                             # %cond.true.35
	movl	-28(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB126_19
	jmp	.LBB126_20
.LBB126_18:                             # %cond.false.39
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB126_20
.LBB126_19:                             # %cond.true.44
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB126_21
.LBB126_20:                             # %cond.false.45
	movl	-28(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB126_21:                             # %cond.end.47
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -28(%rbp)
.LBB126_22:                             # %if.end.48
	movb	$1, %al
	testb	$1, %al
	jne	.LBB126_23
	jmp	.LBB126_24
.LBB126_23:                             # %cond.true.49
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB126_25
	jmp	.LBB126_31
.LBB126_24:                             # %cond.false.53
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB126_31
.LBB126_25:                             # %if.then.58
	movb	$1, %al
	testb	$1, %al
	jne	.LBB126_26
	jmp	.LBB126_27
.LBB126_26:                             # %cond.true.59
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB126_28
	jmp	.LBB126_29
.LBB126_27:                             # %cond.false.63
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB126_29
.LBB126_28:                             # %cond.true.68
	movl	-32(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB126_30
.LBB126_29:                             # %cond.false.69
	movl	-32(%rbp), %eax
	addl	$4194048, %eax          # imm = 0x3FFF00
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB126_30:                             # %cond.end.71
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
.LBB126_31:                             # %if.end.73
	jmp	.LBB126_32
.LBB126_32:                             # %if.end.74
	movl	-28(%rbp), %edi
	callq	downcase
	movl	-32(%rbp), %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	downcase
	movl	-76(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB126_34
# BB#33:                                # %cond.true.79
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB126_35
.LBB126_34:                             # %cond.false.81
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB126_35:                             # %cond.end.83
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB126_36:                             # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	Fchar_equal, .Lfunc_end126-Fchar_equal
	.cfi_endproc

	.globl	Ftranspose_regions
	.align	16, 0x90
	.type	Ftranspose_regions,@function
Ftranspose_regions:                     # @Ftranspose_regions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp382:
	.cfi_def_cfa_offset 16
.Ltmp383:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp384:
	.cfi_def_cfa_register %rbp
	subq	$608, %rsp              # imm = 0x260
	movl	$5, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	current_buffer, %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -224(%rbp)
	movq	current_buffer, %rdi
	callq	buffer_intervals
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movq	%rax, -184(%rbp)
	callq	validate_region
	leaq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	validate_region
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB127_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB127_2:                              # %if.end
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB127_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB127_4:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB127_6
# BB#5:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB127_8
.LBB127_6:                              # %land.lhs.true
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB127_8
# BB#7:                                 # %if.then.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB127_101
.LBB127_8:                              # %if.end.13
	jmp	.LBB127_9
.LBB127_9:                              # %if.end.14
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rdi
	movq	-80(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jge	.LBB127_15
# BB#10:                                # %land.lhs.true.18
	movq	-128(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jge	.LBB127_15
# BB#11:                                # %if.then.20
	movq	-128(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	-128(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB127_13
# BB#12:                                # %if.then.24
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	move_gap_both
	jmp	.LBB127_14
.LBB127_13:                             # %if.else.25
	movq	-80(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	move_gap_both
.LBB127_14:                             # %if.end.26
	jmp	.LBB127_15
.LBB127_15:                             # %if.end.27
	movq	current_buffer, %rdi
	movq	-72(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	subq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB127_44
# BB#16:                                # %if.then.33
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	modify_text
	movq	-56(%rbp), %rdi
	movq	-136(%rbp), %rsi
	addq	-152(%rbp), %rsi
	callq	record_change
	movq	-184(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	copy_intervals
	leaq	-16(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -208(%rbp)
	movq	-224(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB127_18
# BB#17:                                # %if.then.37
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %r8
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_text_properties_1
.LBB127_18:                             # %if.end.39
	movq	$16384, -240(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -248(%rbp)
	movb	$0, -249(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB127_29
# BB#19:                                # %if.then.42
	movq	-112(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jg	.LBB127_21
# BB#20:                                # %cond.true
	movq	-112(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -240(%rbp)
	movq	-112(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB127_22
.LBB127_21:                             # %cond.false
	movb	$1, -249(%rbp)
	movq	-112(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB127_22:                             # %cond.end
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_24
# BB#23:                                # %cond.true.48
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB127_25
.LBB127_24:                             # %cond.false.50
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB127_25
.LBB127_25:                             # %cond.end.51
	movq	-360(%rbp), %rax        # 8-byte Reload
	addq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_27
# BB#26:                                # %cond.true.59
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB127_28
.LBB127_27:                             # %cond.false.62
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB127_28
.LBB127_28:                             # %cond.end.63
	movq	-368(%rbp), %rax        # 8-byte Reload
	addq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
	jmp	.LBB127_39
.LBB127_29:                             # %if.else.71
	movq	-104(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jg	.LBB127_31
# BB#30:                                # %cond.true.73
	movq	-104(%rbp), %rax
	movq	-240(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -240(%rbp)
	movq	-104(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB127_32
.LBB127_31:                             # %cond.false.75
	movb	$1, -249(%rbp)
	movq	-104(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB127_32:                             # %cond.end.77
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_34
# BB#33:                                # %cond.true.82
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB127_35
.LBB127_34:                             # %cond.false.85
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB127_35
.LBB127_35:                             # %cond.end.86
	movq	-384(%rbp), %rax        # 8-byte Reload
	addq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_37
# BB#36:                                # %cond.true.96
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB127_38
.LBB127_37:                             # %cond.false.99
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB127_38
.LBB127_38:                             # %cond.end.100
	movq	-392(%rbp), %rax        # 8-byte Reload
	addq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	-176(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB127_39:                             # %if.end.108
	jmp	.LBB127_40
.LBB127_40:                             # %do.body
	testb	$1, -249(%rbp)
	je	.LBB127_42
# BB#41:                                # %if.then.110
	xorl	%edi, %edi
	movb	$0, -249(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB127_42:                             # %if.end.113
	jmp	.LBB127_43
.LBB127_43:                             # %do.end
	xorl	%r8d, %r8d
	movq	-192(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	%rax, %rsi
	callq	graft_intervals_into_buffer
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	current_buffer, %rcx
	callq	graft_intervals_into_buffer
	movl	$3, %edx
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	%rax, %rsi
	callq	update_compositions
	movl	$2, %edx
	movq	-56(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	update_compositions
	jmp	.LBB127_98
.LBB127_44:                             # %if.else.117
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	-104(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB127_63
# BB#45:                                # %if.then.121
	movq	$16384, -264(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -272(%rbp)
	movb	$0, -273(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	modify_text
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	modify_text
	movq	-56(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	record_change
	movq	-72(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	record_change
	movq	-184(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	copy_intervals
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -208(%rbp)
	movq	-224(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB127_47
# BB#46:                                # %if.then.130
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %r8
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_text_properties_1
.LBB127_47:                             # %if.end.132
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-224(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB127_49
# BB#48:                                # %if.then.135
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %r8
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_text_properties_1
.LBB127_49:                             # %if.end.137
	movq	-104(%rbp), %rax
	cmpq	-264(%rbp), %rax
	jg	.LBB127_51
# BB#50:                                # %cond.true.139
	movq	-104(%rbp), %rax
	movq	-264(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -264(%rbp)
	movq	-104(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB127_52
.LBB127_51:                             # %cond.false.141
	movb	$1, -273(%rbp)
	movq	-104(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB127_52:                             # %cond.end.143
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_54
# BB#53:                                # %cond.true.148
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB127_55
.LBB127_54:                             # %cond.false.151
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB127_55
.LBB127_55:                             # %cond.end.152
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_57
# BB#56:                                # %cond.true.162
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB127_58
.LBB127_57:                             # %cond.false.165
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB127_58
.LBB127_58:                             # %cond.end.166
	movq	-464(%rbp), %rax        # 8-byte Reload
	addq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	memcpy
# BB#59:                                # %do.body.173
	testb	$1, -273(%rbp)
	je	.LBB127_61
# BB#60:                                # %if.then.175
	xorl	%edi, %edi
	movb	$0, -273(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB127_61:                             # %if.end.178
	jmp	.LBB127_62
.LBB127_62:                             # %do.end.179
	xorl	%r8d, %r8d
	movq	-192(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	current_buffer, %rcx
	callq	graft_intervals_into_buffer
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	current_buffer, %rcx
	callq	graft_intervals_into_buffer
	jmp	.LBB127_97
.LBB127_63:                             # %if.else.180
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jge	.LBB127_80
# BB#64:                                # %if.then.182
	movq	$16384, -288(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -296(%rbp)
	movb	$0, -297(%rbp)
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	modify_text
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_change
	movq	-184(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-144(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -200(%rbp)
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	copy_intervals
	leaq	-16(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -208(%rbp)
	movq	-224(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB127_66
# BB#65:                                # %if.then.193
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %r8
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_text_properties_1
.LBB127_66:                             # %if.end.195
	movq	-112(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jg	.LBB127_68
# BB#67:                                # %cond.true.197
	movq	-112(%rbp), %rax
	movq	-288(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -288(%rbp)
	movq	-112(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB127_69
.LBB127_68:                             # %cond.false.199
	movb	$1, -297(%rbp)
	movq	-112(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB127_69:                             # %cond.end.201
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_71
# BB#70:                                # %cond.true.206
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB127_72
.LBB127_71:                             # %cond.false.209
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB127_72
.LBB127_72:                             # %cond.end.210
	movq	-512(%rbp), %rax        # 8-byte Reload
	addq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_74
# BB#73:                                # %cond.true.220
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB127_75
.LBB127_74:                             # %cond.false.223
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB127_75
.LBB127_75:                             # %cond.end.224
	movq	-520(%rbp), %rax        # 8-byte Reload
	addq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rax
	addq	-144(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-160(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	-160(%rbp), %rcx
	addq	-104(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
# BB#76:                                # %do.body.235
	testb	$1, -297(%rbp)
	je	.LBB127_78
# BB#77:                                # %if.then.237
	xorl	%edi, %edi
	movb	$0, -297(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB127_78:                             # %if.end.240
	jmp	.LBB127_79
.LBB127_79:                             # %do.end.241
	xorl	%r8d, %r8d
	movq	-192(%rbp), %rdi
	movq	-80(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	%rax, %rsi
	callq	graft_intervals_into_buffer
	xorl	%r8d, %r8d
	movq	-200(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	%rax, %rsi
	callq	graft_intervals_into_buffer
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	current_buffer, %rcx
	callq	graft_intervals_into_buffer
	jmp	.LBB127_96
.LBB127_80:                             # %if.else.244
	movq	$16384, -312(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -320(%rbp)
	movb	$0, -321(%rbp)
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_change
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	modify_text
	movq	-184(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-136(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-144(%rbp), %rdx
	callq	copy_intervals
	movq	%rax, -200(%rbp)
	movq	-184(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	copy_intervals
	leaq	-16(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -208(%rbp)
	movq	-224(%rbp), %rdi
	callq	validate_interval_range
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.LBB127_82
# BB#81:                                # %if.then.255
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %r8
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	set_text_properties_1
.LBB127_82:                             # %if.end.257
	movq	-104(%rbp), %rax
	cmpq	-312(%rbp), %rax
	jg	.LBB127_84
# BB#83:                                # %cond.true.259
	movq	-104(%rbp), %rax
	movq	-312(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -312(%rbp)
	movq	-104(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB127_85
.LBB127_84:                             # %cond.false.261
	movb	$1, -321(%rbp)
	movq	-104(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB127_85:                             # %cond.end.263
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_87
# BB#86:                                # %cond.true.268
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB127_88
.LBB127_87:                             # %cond.false.271
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB127_88
.LBB127_88:                             # %cond.end.272
	movq	-568(%rbp), %rax        # 8-byte Reload
	addq	-88(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB127_90
# BB#89:                                # %cond.true.282
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB127_91
.LBB127_90:                             # %cond.false.285
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB127_91
.LBB127_91:                             # %cond.end.286
	movq	-576(%rbp), %rax        # 8-byte Reload
	addq	-96(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	memcpy
	movq	-160(%rbp), %rax
	addq	-112(%rbp), %rax
	movq	-160(%rbp), %rcx
	addq	-104(%rbp), %rcx
	movq	-144(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
	movq	-160(%rbp), %rax
	addq	-112(%rbp), %rax
	addq	-144(%rbp), %rax
	movq	-176(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
# BB#92:                                # %do.body.297
	testb	$1, -321(%rbp)
	je	.LBB127_94
# BB#93:                                # %if.then.299
	xorl	%edi, %edi
	movb	$0, -321(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB127_94:                             # %if.end.302
	jmp	.LBB127_95
.LBB127_95:                             # %do.end.303
	xorl	%r8d, %r8d
	movq	-192(%rbp), %rdi
	movq	-80(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	%rax, %rsi
	callq	graft_intervals_into_buffer
	xorl	%r8d, %r8d
	movq	-200(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	current_buffer, %rcx
	movq	%rax, %rsi
	callq	graft_intervals_into_buffer
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	current_buffer, %rcx
	callq	graft_intervals_into_buffer
.LBB127_96:                             # %if.end.306
	jmp	.LBB127_97
.LBB127_97:                             # %if.end.307
	movl	$3, %edx
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	addq	-152(%rbp), %rax
	movq	%rax, %rsi
	callq	update_compositions
	movl	$3, %edx
	movq	-80(%rbp), %rax
	subq	-136(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	update_compositions
.LBB127_98:                             # %if.end.310
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB127_100
# BB#99:                                # %if.then.313
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-88(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	-96(%rbp), %r9
	movq	-96(%rbp), %r10
	addq	-112(%rbp), %r10
	subq	$16, %rsp
	movq	%r9, -608(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	transpose_markers
	addq	$16, %rsp
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	fix_start_end_in_overlays
.LBB127_100:                            # %if.end.316
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	subq	-56(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	signal_after_change
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB127_101:                            # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	Ftranspose_regions, .Lfunc_end127-Ftranspose_regions
	.cfi_endproc

	.align	16, 0x90
	.type	transpose_markers,@function
transpose_markers:                      # @transpose_markers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp385:
	.cfi_def_cfa_offset 16
.Ltmp386:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp387:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-8(%rbp), %rax
	jge	.LBB128_2
# BB#1:                                 # %if.then
	jmp	.LBB128_11
.LBB128_2:                              # %if.else
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB128_4
# BB#3:                                 # %if.then.4
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rcx
	subq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	-64(%rbp), %rdx
	subq	-48(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	temp_set_point_both
	jmp	.LBB128_10
.LBB128_4:                              # %if.else.11
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB128_6
# BB#5:                                 # %if.then.15
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-32(%rbp), %rcx
	subq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	subq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	-64(%rbp), %rdx
	subq	-56(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	subq	-40(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	temp_set_point_both
	jmp	.LBB128_9
.LBB128_6:                              # %if.else.28
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB128_8
# BB#7:                                 # %if.then.32
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	-24(%rbp), %rcx
	subq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	-56(%rbp), %rdx
	subq	-40(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	temp_set_point_both
.LBB128_8:                              # %if.end
	jmp	.LBB128_9
.LBB128_9:                              # %if.end.41
	jmp	.LBB128_10
.LBB128_10:                             # %if.end.42
	jmp	.LBB128_11
.LBB128_11:                             # %if.end.43
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-16(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB128_12:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB128_33
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB128_22
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB128_22
# BB#15:                                # %if.then.64
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB128_17
# BB#16:                                # %if.then.66
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-80(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB128_21
.LBB128_17:                             # %if.else.68
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jge	.LBB128_19
# BB#18:                                # %if.then.70
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-112(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB128_20
.LBB128_19:                             # %if.else.72
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)
.LBB128_20:                             # %if.end.74
                                        #   in Loop: Header=BB128_12 Depth=1
	jmp	.LBB128_21
.LBB128_21:                             # %if.end.75
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB128_22:                             # %if.end.77
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jl	.LBB128_31
# BB#23:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB128_31
# BB#24:                                # %if.then.81
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB128_26
# BB#25:                                # %if.then.83
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-72(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB128_30
.LBB128_26:                             # %if.else.85
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB128_28
# BB#27:                                # %if.then.87
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-104(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB128_29
.LBB128_28:                             # %if.else.89
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)
.LBB128_29:                             # %if.end.91
                                        #   in Loop: Header=BB128_12 Depth=1
	jmp	.LBB128_30
.LBB128_30:                             # %if.end.92
                                        #   in Loop: Header=BB128_12 Depth=1
	jmp	.LBB128_31
.LBB128_31:                             # %if.end.93
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	%rax, 24(%rcx)
# BB#32:                                # %for.inc
                                        #   in Loop: Header=BB128_12 Depth=1
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB128_12
.LBB128_33:                             # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	transpose_markers, .Lfunc_end128-transpose_markers
	.cfi_endproc

	.globl	syms_of_editfns
	.align	16, 0x90
	.type	syms_of_editfns,@function
syms_of_editfns:                        # @syms_of_editfns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp388:
	.cfi_def_cfa_offset 16
.Ltmp389:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp390:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
# BB#1:                                 # %do.body
	movabsq	$syms_of_editfns.o_fwd, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$globals, %rax
	addq	$1072, %rax             # imm = 0x430
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1072
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_editfns.o_fwd.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$globals, %rax
	addq	$136, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+136
	callq	Fcurrent_buffer
	movq	%rax, -8(%rbp)
	movq	Vprin1_to_string_buffer, %rdi
	callq	Fset_buffer
	movl	$220, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fmake_local_variable
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	Fset_buffer
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#5:                                 # %do.body.11
	movabsq	$syms_of_editfns.o_fwd.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$globals, %rax
	addq	$128, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+128
# BB#7:                                 # %do.body.14
	movabsq	$syms_of_editfns.o_fwd.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$globals, %rax
	addq	$2280, %rax             # imm = 0x8E8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, cached_system_name
	movq	%rax, globals+2280
# BB#9:                                 # %do.body.17
	movabsq	$syms_of_editfns.o_fwd.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$globals, %rax
	addq	$2552, %rax             # imm = 0x9F8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.18
	jmp	.LBB129_11
.LBB129_11:                             # %do.body.19
	movabsq	$syms_of_editfns.o_fwd.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$globals, %rax
	addq	$2568, %rax             # imm = 0xA08
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2568
# BB#13:                                # %do.body.22
	movabsq	$syms_of_editfns.o_fwd.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$globals, %rax
	addq	$2576, %rax             # imm = 0xA10
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.23
	jmp	.LBB129_15
.LBB129_15:                             # %do.body.24
	movabsq	$syms_of_editfns.o_fwd.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$globals, %rax
	addq	$1672, %rax             # imm = 0x688
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.25
	movabsq	$Spropertize, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_equal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgoto_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstring_to_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_to_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbyte_to_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_substring, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_substring_no_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_string, %rdi
	callq	defsubr
	movabsq	$Sget_pos_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Spoint_marker, %rdi
	callq	defsubr
	movabsq	$Smark_marker, %rdi
	callq	defsubr
	movabsq	$Spoint, %rdi
	callq	defsubr
	movabsq	$Sregion_beginning, %rdi
	callq	defsubr
	movabsq	$Sregion_end, %rdi
	callq	defsubr
	movabsq	$Sfield_beginning, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfield_end, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfield_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfield_string_no_properties, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_field, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sconstrain_to_field, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sline_beginning_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sline_end_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssave_excursion, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssave_current_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Spoint_max, %rdi
	callq	defsubr
	movabsq	$Spoint_min, %rdi
	callq	defsubr
	movabsq	$Spoint_min_marker, %rdi
	callq	defsubr
	movabsq	$Spoint_max_marker, %rdi
	callq	defsubr
	movabsq	$Sgap_position, %rdi
	callq	defsubr
	movabsq	$Sgap_size, %rdi
	callq	defsubr
	movabsq	$Sposition_bytes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbyte_to_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbobp, %rdi
	callq	defsubr
	movabsq	$Seobp, %rdi
	callq	defsubr
	movabsq	$Sbolp, %rdi
	callq	defsubr
	movabsq	$Seolp, %rdi
	callq	defsubr
	movabsq	$Sfollowing_char, %rdi
	callq	defsubr
	movabsq	$Sprevious_char, %rdi
	callq	defsubr
	movabsq	$Schar_after, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Schar_before, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_before_markers, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_and_inherit, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_and_inherit_before_markers, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_char, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_byte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Suser_login_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Suser_real_login_name, %rdi
	callq	defsubr
	movabsq	$Suser_uid, %rdi
	callq	defsubr
	movabsq	$Suser_real_uid, %rdi
	callq	defsubr
	movabsq	$Sgroup_gid, %rdi
	callq	defsubr
	movabsq	$Sgroup_real_gid, %rdi
	callq	defsubr
	movabsq	$Suser_full_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Semacs_pid, %rdi
	callq	defsubr
	movabsq	$Scurrent_time, %rdi
	callq	defsubr
	movabsq	$Stime_add, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stime_subtract, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stime_less_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sget_internal_run_time, %rdi
	callq	defsubr
	movabsq	$Sformat_time_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfloat_time, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdecode_time, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sencode_time, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scurrent_time_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scurrent_time_zone, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_time_zone_rule, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssystem_name, %rdi
	callq	defsubr
	movabsq	$Smessage, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smessage_box, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smessage_or_box, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scurrent_message, %rdi
	callq	defsubr
	movabsq	$Sformat, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sformat_message, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_buffer_substring, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scompare_buffer_substrings, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubst_char_in_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stranslate_region_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_and_extract_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swiden, %rdi
	callq	defsubr
	movabsq	$Snarrow_to_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssave_restriction, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stranspose_regions, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	syms_of_editfns, .Lfunc_end129-syms_of_editfns
	.cfi_endproc

	.align	16, 0x90
	.type	check_time_validity,@function
check_time_validity:                    # @check_time_validity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp391:
	.cfi_def_cfa_offset 16
.Ltmp392:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp393:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.LBB130_4
# BB#1:                                 # %if.then
	cmpl	$0, -4(%rbp)
	jge	.LBB130_3
# BB#2:                                 # %if.then.2
	callq	time_overflow
.LBB130_3:                              # %if.else
	callq	invalid_time
.LBB130_4:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	check_time_validity, .Lfunc_end130-check_time_validity
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_nmemftime,@function
emacs_nmemftime:                        # @emacs_nmemftime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp394:
	.cfi_def_cfa_offset 16
.Ltmp395:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp396:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	$0, -72(%rbp)
.LBB131_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB131_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB131_1 Depth=1
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
.LBB131_3:                              # %if.end
                                        #   in Loop: Header=BB131_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-60(%rbp), %r9d
	callq	nstrftime
	movq	%rax, -88(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB131_8
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB131_1 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB131_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB131_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB131_7
# BB#6:                                 # %if.then.6
	movq	$0, -8(%rbp)
	jmp	.LBB131_11
.LBB131_7:                              # %if.end.7
                                        #   in Loop: Header=BB131_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB131_8:                              # %if.end.8
                                        #   in Loop: Header=BB131_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	-88(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB131_10
# BB#9:                                 # %if.then.14
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB131_11
.LBB131_10:                             # %if.end.15
                                        #   in Loop: Header=BB131_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB131_1
.LBB131_11:                             # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	emacs_nmemftime, .Lfunc_end131-emacs_nmemftime
	.cfi_endproc

	.type	dump_tz_string,@object  # @dump_tz_string
	.data
dump_tz_string:
	.asciz	"TZ=UtC0"
	.size	dump_tz_string, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TZ"
	.size	.L.str, 3

	.type	wall_clock_tz,@object   # @wall_clock_tz
	.local	wall_clock_tz
	.comm	wall_clock_tz,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unknown"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LOGNAME"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"USER"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"NAME"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid byte"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid UID specification"
	.size	.L.str.6, 26

	.type	cached_system_name,@object # @cached_system_name
	.local	cached_system_name
	.comm	cached_system_name,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Specified time is not representable"
	.size	.L.str.7, 36

	.type	Fcurrent_time_string.wday_name,@object # @Fcurrent_time_string.wday_name
	.section	.rodata,"a",@progbits
	.align	16
Fcurrent_time_string.wday_name:
	.asciz	"Sun"
	.asciz	"Mon"
	.asciz	"Tue"
	.asciz	"Wed"
	.asciz	"Thu"
	.asciz	"Fri"
	.asciz	"Sat"
	.size	Fcurrent_time_string.wday_name, 28

	.type	Fcurrent_time_string.mon_name,@object # @Fcurrent_time_string.mon_name
	.align	16
Fcurrent_time_string.mon_name:
	.asciz	"Jan"
	.asciz	"Feb"
	.asciz	"Mar"
	.asciz	"Apr"
	.asciz	"May"
	.asciz	"Jun"
	.asciz	"Jul"
	.asciz	"Aug"
	.asciz	"Sep"
	.asciz	"Oct"
	.asciz	"Nov"
	.asciz	"Dec"
	.size	Fcurrent_time_string.mon_name, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"%s %s%3d %02d:%02d:%02d %ld"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%Z"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%c%02ld%02d"
	.size	.L.str.10, 12

	.type	tzvalbuf,@object        # @tzvalbuf
	.local	tzvalbuf
	.comm	tzvalbuf,8,8
	.type	emacs_setenv_TZ.tzvalbufsize,@object # @emacs_setenv_TZ.tzvalbufsize
	.local	emacs_setenv_TZ.tzvalbufsize
	.comm	emacs_setenv_TZ.tzvalbufsize,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Selecting deleted buffer"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Characters in `subst-char-in-region' have different byte-lengths"
	.size	.L.str.12, 65

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Not a translation table"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OK"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Wrong number of arguments"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Transposed regions overlap"
	.size	.L.str.16, 27

	.type	syms_of_editfns.o_fwd,@object # @syms_of_editfns.o_fwd
	.local	syms_of_editfns.o_fwd
	.comm	syms_of_editfns.o_fwd,16,8
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"inhibit-field-text-motion"
	.size	.L.str.17, 26

	.type	syms_of_editfns.o_fwd.18,@object # @syms_of_editfns.o_fwd.18
	.local	syms_of_editfns.o_fwd.18
	.comm	syms_of_editfns.o_fwd.18,16,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"buffer-access-fontify-functions"
	.size	.L.str.19, 32

	.type	syms_of_editfns.o_fwd.20,@object # @syms_of_editfns.o_fwd.20
	.local	syms_of_editfns.o_fwd.20
	.comm	syms_of_editfns.o_fwd.20,16,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"buffer-access-fontified-property"
	.size	.L.str.21, 33

	.type	syms_of_editfns.o_fwd.22,@object # @syms_of_editfns.o_fwd.22
	.local	syms_of_editfns.o_fwd.22
	.comm	syms_of_editfns.o_fwd.22,16,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"system-name"
	.size	.L.str.23, 12

	.type	syms_of_editfns.o_fwd.24,@object # @syms_of_editfns.o_fwd.24
	.local	syms_of_editfns.o_fwd.24
	.comm	syms_of_editfns.o_fwd.24,16,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"user-full-name"
	.size	.L.str.25, 15

	.type	syms_of_editfns.o_fwd.26,@object # @syms_of_editfns.o_fwd.26
	.local	syms_of_editfns.o_fwd.26
	.comm	syms_of_editfns.o_fwd.26,16,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"user-login-name"
	.size	.L.str.27, 16

	.type	syms_of_editfns.o_fwd.28,@object # @syms_of_editfns.o_fwd.28
	.local	syms_of_editfns.o_fwd.28
	.comm	syms_of_editfns.o_fwd.28,16,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"user-real-login-name"
	.size	.L.str.29, 21

	.type	syms_of_editfns.o_fwd.30,@object # @syms_of_editfns.o_fwd.30
	.local	syms_of_editfns.o_fwd.30
	.comm	syms_of_editfns.o_fwd.30,16,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"operating-system-release"
	.size	.L.str.31, 25

	.type	Sbuffer_string,@object  # @Sbuffer_string
	.data
	.align	8
Sbuffer_string:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_string
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.55
	.quad	0
	.quad	0
	.size	Sbuffer_string, 48

	.type	Spoint_marker,@object   # @Spoint_marker
	.align	8
Spoint_marker:
	.quad	167772160               # 0xa000000
	.quad	Fpoint_marker
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Spoint_marker, 48

	.type	Smark_marker,@object    # @Smark_marker
	.align	8
Smark_marker:
	.quad	167772160               # 0xa000000
	.quad	Fmark_marker
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Smark_marker, 48

	.type	Spoint,@object          # @Spoint
	.align	8
Spoint:
	.quad	167772160               # 0xa000000
	.quad	Fpoint
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Spoint, 48

	.type	Sregion_beginning,@object # @Sregion_beginning
	.align	8
Sregion_beginning:
	.quad	167772160               # 0xa000000
	.quad	Fregion_beginning
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Sregion_beginning, 48

	.type	Sregion_end,@object     # @Sregion_end
	.align	8
Sregion_end:
	.quad	167772160               # 0xa000000
	.quad	Fregion_end
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Sregion_end, 48

	.type	Spoint_max,@object      # @Spoint_max
	.align	8
Spoint_max:
	.quad	167772160               # 0xa000000
	.quad	Fpoint_max
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Spoint_max, 48

	.type	Spoint_min,@object      # @Spoint_min
	.align	8
Spoint_min:
	.quad	167772160               # 0xa000000
	.quad	Fpoint_min
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Spoint_min, 48

	.type	Spoint_min_marker,@object # @Spoint_min_marker
	.align	8
Spoint_min_marker:
	.quad	167772160               # 0xa000000
	.quad	Fpoint_min_marker
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Spoint_min_marker, 48

	.type	Spoint_max_marker,@object # @Spoint_max_marker
	.align	8
Spoint_max_marker:
	.quad	167772160               # 0xa000000
	.quad	Fpoint_max_marker
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Spoint_max_marker, 48

	.type	Sgap_position,@object   # @Sgap_position
	.align	8
Sgap_position:
	.quad	167772160               # 0xa000000
	.quad	Fgap_position
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Sgap_position, 48

	.type	Sgap_size,@object       # @Sgap_size
	.align	8
Sgap_size:
	.quad	167772160               # 0xa000000
	.quad	Fgap_size
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Sgap_size, 48

	.type	Sbobp,@object           # @Sbobp
	.align	8
Sbobp:
	.quad	167772160               # 0xa000000
	.quad	Fbobp
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Sbobp, 48

	.type	Seobp,@object           # @Seobp
	.align	8
Seobp:
	.quad	167772160               # 0xa000000
	.quad	Feobp
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Seobp, 48

	.type	Sbolp,@object           # @Sbolp
	.align	8
Sbolp:
	.quad	167772160               # 0xa000000
	.quad	Fbolp
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Sbolp, 48

	.type	Seolp,@object           # @Seolp
	.align	8
Seolp:
	.quad	167772160               # 0xa000000
	.quad	Feolp
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Seolp, 48

	.type	Sfollowing_char,@object # @Sfollowing_char
	.align	8
Sfollowing_char:
	.quad	167772160               # 0xa000000
	.quad	Ffollowing_char
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.85
	.quad	0
	.quad	0
	.size	Sfollowing_char, 48

	.type	Sprevious_char,@object  # @Sprevious_char
	.align	8
Sprevious_char:
	.quad	167772160               # 0xa000000
	.quad	Fprevious_char
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.86
	.quad	0
	.quad	0
	.size	Sprevious_char, 48

	.type	Suser_real_login_name,@object # @Suser_real_login_name
	.align	8
Suser_real_login_name:
	.quad	167772160               # 0xa000000
	.quad	Fuser_real_login_name
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.29
	.quad	0
	.quad	0
	.size	Suser_real_login_name, 48

	.type	Suser_uid,@object       # @Suser_uid
	.align	8
Suser_uid:
	.quad	167772160               # 0xa000000
	.quad	Fuser_uid
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Suser_uid, 48

	.type	Suser_real_uid,@object  # @Suser_real_uid
	.align	8
Suser_real_uid:
	.quad	167772160               # 0xa000000
	.quad	Fuser_real_uid
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Suser_real_uid, 48

	.type	Sgroup_gid,@object      # @Sgroup_gid
	.align	8
Sgroup_gid:
	.quad	167772160               # 0xa000000
	.quad	Fgroup_gid
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Sgroup_gid, 48

	.type	Sgroup_real_gid,@object # @Sgroup_real_gid
	.align	8
Sgroup_real_gid:
	.quad	167772160               # 0xa000000
	.quad	Fgroup_real_gid
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.99
	.quad	0
	.quad	0
	.size	Sgroup_real_gid, 48

	.type	Semacs_pid,@object      # @Semacs_pid
	.align	8
Semacs_pid:
	.quad	167772160               # 0xa000000
	.quad	Femacs_pid
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Semacs_pid, 48

	.type	Scurrent_time,@object   # @Scurrent_time
	.align	8
Scurrent_time:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_time
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.101
	.quad	0
	.quad	0
	.size	Scurrent_time, 48

	.type	Sget_internal_run_time,@object # @Sget_internal_run_time
	.align	8
Sget_internal_run_time:
	.quad	167772160               # 0xa000000
	.quad	Fget_internal_run_time
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.105
	.quad	0
	.quad	0
	.size	Sget_internal_run_time, 48

	.type	Ssystem_name,@object    # @Ssystem_name
	.align	8
Ssystem_name:
	.quad	167772160               # 0xa000000
	.quad	Fsystem_name
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	0
	.quad	0
	.size	Ssystem_name, 48

	.type	Scurrent_message,@object # @Scurrent_message
	.align	8
Scurrent_message:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_message
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.116
	.quad	0
	.quad	0
	.size	Scurrent_message, 48

	.type	Swiden,@object          # @Swiden
	.align	8
Swiden:
	.quad	167772160               # 0xa000000
	.quad	Fwiden
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	0
	.size	Swiden, 48

	.type	tzlookup.tzbuf_format,@object # @tzlookup.tzbuf_format
	.section	.rodata,"a",@progbits
	.align	16
tzlookup.tzbuf_format:
	.asciz	"XXX%s%ld:%02d:%02d"
	.size	tzlookup.tzbuf_format, 19

	.type	local_tz,@object        # @local_tz
	.local	local_tz
	.comm	local_tz,8,8
	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"UTC0"
	.size	.L.str.32, 5

	.type	utc_tz,@object          # @utc_tz
	.section	.rodata,"a",@progbits
	.align	8
utc_tz:
	.quad	0
	.size	utc_tz, 8

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"-"
	.size	.L.str.33, 2

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Invalid time zone specification"
	.size	.L.str.34, 32

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"The mark is not set now, so there is no region"
	.size	.L.str.35, 47

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Invalid time specification"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Format string ends in middle of format specifier"
	.size	.L.str.37, 49

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Not enough arguments for format string"
	.size	.L.str.38, 39

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid format operation %%%c"
	.size	.L.str.39, 30

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Format specifier doesn't match argument type"
	.size	.L.str.40, 45

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ld"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\342\200\230"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\342\200\231"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"'"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"`"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"propertize"
	.size	.L.str.46, 11

	.type	Spropertize,@object     # @Spropertize
	.data
	.align	8
Spropertize:
	.quad	167772160               # 0xa000000
	.quad	Fpropertize
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.46
	.quad	0
	.quad	0
	.size	Spropertize, 48

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"char-equal"
	.size	.L.str.47, 11

	.type	Schar_equal,@object     # @Schar_equal
	.data
	.align	8
Schar_equal:
	.quad	167772160               # 0xa000000
	.quad	Fchar_equal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.47
	.quad	0
	.quad	0
	.size	Schar_equal, 48

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"goto-char"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"NGoto char: "
	.size	.L.str.49, 13

	.type	Sgoto_char,@object      # @Sgoto_char
	.data
	.align	8
Sgoto_char:
	.quad	167772160               # 0xa000000
	.quad	Fgoto_char
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	0
	.size	Sgoto_char, 48

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"string-to-char"
	.size	.L.str.50, 15

	.type	Sstring_to_char,@object # @Sstring_to_char
	.data
	.align	8
Sstring_to_char:
	.quad	167772160               # 0xa000000
	.quad	Fstring_to_char
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.50
	.quad	0
	.quad	0
	.size	Sstring_to_char, 48

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"char-to-string"
	.size	.L.str.51, 15

	.type	Schar_to_string,@object # @Schar_to_string
	.data
	.align	8
Schar_to_string:
	.quad	167772160               # 0xa000000
	.quad	Fchar_to_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.51
	.quad	0
	.quad	0
	.size	Schar_to_string, 48

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"byte-to-string"
	.size	.L.str.52, 15

	.type	Sbyte_to_string,@object # @Sbyte_to_string
	.data
	.align	8
Sbyte_to_string:
	.quad	167772160               # 0xa000000
	.quad	Fbyte_to_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.52
	.quad	0
	.quad	0
	.size	Sbyte_to_string, 48

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"buffer-substring"
	.size	.L.str.53, 17

	.type	Sbuffer_substring,@object # @Sbuffer_substring
	.data
	.align	8
Sbuffer_substring:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_substring
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.53
	.quad	0
	.quad	0
	.size	Sbuffer_substring, 48

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"buffer-substring-no-properties"
	.size	.L.str.54, 31

	.type	Sbuffer_substring_no_properties,@object # @Sbuffer_substring_no_properties
	.data
	.align	8
Sbuffer_substring_no_properties:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_substring_no_properties
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.54
	.quad	0
	.quad	0
	.size	Sbuffer_substring_no_properties, 48

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"buffer-string"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"get-pos-property"
	.size	.L.str.56, 17

	.type	Sget_pos_property,@object # @Sget_pos_property
	.data
	.align	8
Sget_pos_property:
	.quad	167772160               # 0xa000000
	.quad	Fget_pos_property
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.56
	.quad	0
	.quad	0
	.size	Sget_pos_property, 48

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"point-marker"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"mark-marker"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"point"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"region-beginning"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"region-end"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"field-beginning"
	.size	.L.str.62, 16

	.type	Sfield_beginning,@object # @Sfield_beginning
	.data
	.align	8
Sfield_beginning:
	.quad	167772160               # 0xa000000
	.quad	Ffield_beginning
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Sfield_beginning, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"field-end"
	.size	.L.str.63, 10

	.type	Sfield_end,@object      # @Sfield_end
	.data
	.align	8
Sfield_end:
	.quad	167772160               # 0xa000000
	.quad	Ffield_end
	.short	0                       # 0x0
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Sfield_end, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"field-string"
	.size	.L.str.64, 13

	.type	Sfield_string,@object   # @Sfield_string
	.data
	.align	8
Sfield_string:
	.quad	167772160               # 0xa000000
	.quad	Ffield_string
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Sfield_string, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"field-string-no-properties"
	.size	.L.str.65, 27

	.type	Sfield_string_no_properties,@object # @Sfield_string_no_properties
	.data
	.align	8
Sfield_string_no_properties:
	.quad	167772160               # 0xa000000
	.quad	Ffield_string_no_properties
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Sfield_string_no_properties, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"delete-field"
	.size	.L.str.66, 13

	.type	Sdelete_field,@object   # @Sdelete_field
	.data
	.align	8
Sdelete_field:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_field
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Sdelete_field, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"constrain-to-field"
	.size	.L.str.67, 19

	.type	Sconstrain_to_field,@object # @Sconstrain_to_field
	.data
	.align	8
Sconstrain_to_field:
	.quad	167772160               # 0xa000000
	.quad	Fconstrain_to_field
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Sconstrain_to_field, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"line-beginning-position"
	.size	.L.str.68, 24

	.type	Sline_beginning_position,@object # @Sline_beginning_position
	.data
	.align	8
Sline_beginning_position:
	.quad	167772160               # 0xa000000
	.quad	Fline_beginning_position
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Sline_beginning_position, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"line-end-position"
	.size	.L.str.69, 18

	.type	Sline_end_position,@object # @Sline_end_position
	.data
	.align	8
Sline_end_position:
	.quad	167772160               # 0xa000000
	.quad	Fline_end_position
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Sline_end_position, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"save-excursion"
	.size	.L.str.70, 15

	.type	Ssave_excursion,@object # @Ssave_excursion
	.data
	.align	8
Ssave_excursion:
	.quad	167772160               # 0xa000000
	.quad	Fsave_excursion
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Ssave_excursion, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"save-current-buffer"
	.size	.L.str.71, 20

	.type	Ssave_current_buffer,@object # @Ssave_current_buffer
	.data
	.align	8
Ssave_current_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fsave_current_buffer
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Ssave_current_buffer, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"buffer-size"
	.size	.L.str.72, 12

	.type	Sbuffer_size,@object    # @Sbuffer_size
	.data
	.align	8
Sbuffer_size:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_size
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Sbuffer_size, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"point-max"
	.size	.L.str.73, 10

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"point-min"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"point-min-marker"
	.size	.L.str.75, 17

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"point-max-marker"
	.size	.L.str.76, 17

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gap-position"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gap-size"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"position-bytes"
	.size	.L.str.79, 15

	.type	Sposition_bytes,@object # @Sposition_bytes
	.data
	.align	8
Sposition_bytes:
	.quad	167772160               # 0xa000000
	.quad	Fposition_bytes
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Sposition_bytes, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"byte-to-position"
	.size	.L.str.80, 17

	.type	Sbyte_to_position,@object # @Sbyte_to_position
	.data
	.align	8
Sbyte_to_position:
	.quad	167772160               # 0xa000000
	.quad	Fbyte_to_position
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Sbyte_to_position, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"bobp"
	.size	.L.str.81, 5

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"eobp"
	.size	.L.str.82, 5

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"bolp"
	.size	.L.str.83, 5

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"eolp"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"following-char"
	.size	.L.str.85, 15

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"preceding-char"
	.size	.L.str.86, 15

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"char-after"
	.size	.L.str.87, 11

	.type	Schar_after,@object     # @Schar_after
	.data
	.align	8
Schar_after:
	.quad	167772160               # 0xa000000
	.quad	Fchar_after
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.87
	.quad	0
	.quad	0
	.size	Schar_after, 48

	.type	.L.str.88,@object       # @.str.88
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.88:
	.asciz	"char-before"
	.size	.L.str.88, 12

	.type	Schar_before,@object    # @Schar_before
	.data
	.align	8
Schar_before:
	.quad	167772160               # 0xa000000
	.quad	Fchar_before
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.88
	.quad	0
	.quad	0
	.size	Schar_before, 48

	.type	.L.str.89,@object       # @.str.89
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.89:
	.asciz	"insert"
	.size	.L.str.89, 7

	.type	Sinsert,@object         # @Sinsert
	.data
	.align	8
Sinsert:
	.quad	167772160               # 0xa000000
	.quad	Finsert
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Sinsert, 48

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"insert-before-markers"
	.size	.L.str.90, 22

	.type	Sinsert_before_markers,@object # @Sinsert_before_markers
	.data
	.align	8
Sinsert_before_markers:
	.quad	167772160               # 0xa000000
	.quad	Finsert_before_markers
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Sinsert_before_markers, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"insert-and-inherit"
	.size	.L.str.91, 19

	.type	Sinsert_and_inherit,@object # @Sinsert_and_inherit
	.data
	.align	8
Sinsert_and_inherit:
	.quad	167772160               # 0xa000000
	.quad	Finsert_and_inherit
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Sinsert_and_inherit, 48

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"insert-before-markers-and-inherit"
	.size	.L.str.92, 34

	.type	Sinsert_and_inherit_before_markers,@object # @Sinsert_and_inherit_before_markers
	.data
	.align	8
Sinsert_and_inherit_before_markers:
	.quad	167772160               # 0xa000000
	.quad	Finsert_and_inherit_before_markers
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Sinsert_and_inherit_before_markers, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"insert-char"
	.size	.L.str.93, 12

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"(list (read-char-by-name \"Insert character (Unicode name or hex): \")              (prefix-numeric-value current-prefix-arg)              t))"
	.size	.L.str.94, 141

	.type	Sinsert_char,@object    # @Sinsert_char
	.data
	.align	8
Sinsert_char:
	.quad	167772160               # 0xa000000
	.quad	Finsert_char
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	0
	.size	Sinsert_char, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"insert-byte"
	.size	.L.str.95, 12

	.type	Sinsert_byte,@object    # @Sinsert_byte
	.data
	.align	8
Sinsert_byte:
	.quad	167772160               # 0xa000000
	.quad	Finsert_byte
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Sinsert_byte, 48

	.type	Suser_login_name,@object # @Suser_login_name
	.align	8
Suser_login_name:
	.quad	167772160               # 0xa000000
	.quad	Fuser_login_name
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	0
	.quad	0
	.size	Suser_login_name, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"user-uid"
	.size	.L.str.96, 9

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"user-real-uid"
	.size	.L.str.97, 14

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"group-gid"
	.size	.L.str.98, 10

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"group-real-gid"
	.size	.L.str.99, 15

	.type	Suser_full_name,@object # @Suser_full_name
	.data
	.align	8
Suser_full_name:
	.quad	167772160               # 0xa000000
	.quad	Fuser_full_name
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.25
	.quad	0
	.quad	0
	.size	Suser_full_name, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"emacs-pid"
	.size	.L.str.100, 10

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"current-time"
	.size	.L.str.101, 13

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"time-add"
	.size	.L.str.102, 9

	.type	Stime_add,@object       # @Stime_add
	.data
	.align	8
Stime_add:
	.quad	167772160               # 0xa000000
	.quad	Ftime_add
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.102
	.quad	0
	.quad	0
	.size	Stime_add, 48

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"time-subtract"
	.size	.L.str.103, 14

	.type	Stime_subtract,@object  # @Stime_subtract
	.data
	.align	8
Stime_subtract:
	.quad	167772160               # 0xa000000
	.quad	Ftime_subtract
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.103
	.quad	0
	.quad	0
	.size	Stime_subtract, 48

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"time-less-p"
	.size	.L.str.104, 12

	.type	Stime_less_p,@object    # @Stime_less_p
	.data
	.align	8
Stime_less_p:
	.quad	167772160               # 0xa000000
	.quad	Ftime_less_p
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.104
	.quad	0
	.quad	0
	.size	Stime_less_p, 48

	.type	.L.str.105,@object      # @.str.105
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.105:
	.asciz	"get-internal-run-time"
	.size	.L.str.105, 22

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"format-time-string"
	.size	.L.str.106, 19

	.type	Sformat_time_string,@object # @Sformat_time_string
	.data
	.align	8
Sformat_time_string:
	.quad	167772160               # 0xa000000
	.quad	Fformat_time_string
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.106
	.quad	0
	.quad	0
	.size	Sformat_time_string, 48

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"float-time"
	.size	.L.str.107, 11

	.type	Sfloat_time,@object     # @Sfloat_time
	.data
	.align	8
Sfloat_time:
	.quad	167772160               # 0xa000000
	.quad	Ffloat_time
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.107
	.quad	0
	.quad	0
	.size	Sfloat_time, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"decode-time"
	.size	.L.str.108, 12

	.type	Sdecode_time,@object    # @Sdecode_time
	.data
	.align	8
Sdecode_time:
	.quad	167772160               # 0xa000000
	.quad	Fdecode_time
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Sdecode_time, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"encode-time"
	.size	.L.str.109, 12

	.type	Sencode_time,@object    # @Sencode_time
	.data
	.align	8
Sencode_time:
	.quad	167772160               # 0xa000000
	.quad	Fencode_time
	.short	6                       # 0x6
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Sencode_time, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"current-time-string"
	.size	.L.str.110, 20

	.type	Scurrent_time_string,@object # @Scurrent_time_string
	.data
	.align	8
Scurrent_time_string:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_time_string
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Scurrent_time_string, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"current-time-zone"
	.size	.L.str.111, 18

	.type	Scurrent_time_zone,@object # @Scurrent_time_zone
	.data
	.align	8
Scurrent_time_zone:
	.quad	167772160               # 0xa000000
	.quad	Fcurrent_time_zone
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Scurrent_time_zone, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"set-time-zone-rule"
	.size	.L.str.112, 19

	.type	Sset_time_zone_rule,@object # @Sset_time_zone_rule
	.data
	.align	8
Sset_time_zone_rule:
	.quad	167772160               # 0xa000000
	.quad	Fset_time_zone_rule
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.112
	.quad	0
	.quad	0
	.size	Sset_time_zone_rule, 48

	.type	.L.str.113,@object      # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"message"
	.size	.L.str.113, 8

	.type	Smessage,@object        # @Smessage
	.data
	.align	8
Smessage:
	.quad	167772160               # 0xa000000
	.quad	Fmessage
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.113
	.quad	0
	.quad	0
	.size	Smessage, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"message-box"
	.size	.L.str.114, 12

	.type	Smessage_box,@object    # @Smessage_box
	.data
	.align	8
Smessage_box:
	.quad	167772160               # 0xa000000
	.quad	Fmessage_box
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.114
	.quad	0
	.quad	0
	.size	Smessage_box, 48

	.type	.L.str.115,@object      # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"message-or-box"
	.size	.L.str.115, 15

	.type	Smessage_or_box,@object # @Smessage_or_box
	.data
	.align	8
Smessage_or_box:
	.quad	167772160               # 0xa000000
	.quad	Fmessage_or_box
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.115
	.quad	0
	.quad	0
	.size	Smessage_or_box, 48

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"current-message"
	.size	.L.str.116, 16

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"format"
	.size	.L.str.117, 7

	.type	Sformat,@object         # @Sformat
	.data
	.align	8
Sformat:
	.quad	167772160               # 0xa000000
	.quad	Fformat
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.117
	.quad	0
	.quad	0
	.size	Sformat, 48

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"format-message"
	.size	.L.str.118, 15

	.type	Sformat_message,@object # @Sformat_message
	.data
	.align	8
Sformat_message:
	.quad	167772160               # 0xa000000
	.quad	Fformat_message
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.118
	.quad	0
	.quad	0
	.size	Sformat_message, 48

	.type	.L.str.119,@object      # @.str.119
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"insert-buffer-substring"
	.size	.L.str.119, 24

	.type	Sinsert_buffer_substring,@object # @Sinsert_buffer_substring
	.data
	.align	8
Sinsert_buffer_substring:
	.quad	167772160               # 0xa000000
	.quad	Finsert_buffer_substring
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.119
	.quad	0
	.quad	0
	.size	Sinsert_buffer_substring, 48

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"compare-buffer-substrings"
	.size	.L.str.120, 26

	.type	Scompare_buffer_substrings,@object # @Scompare_buffer_substrings
	.data
	.align	8
Scompare_buffer_substrings:
	.quad	167772160               # 0xa000000
	.quad	Fcompare_buffer_substrings
	.short	6                       # 0x6
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.120
	.quad	0
	.quad	0
	.size	Scompare_buffer_substrings, 48

	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"subst-char-in-region"
	.size	.L.str.121, 21

	.type	Ssubst_char_in_region,@object # @Ssubst_char_in_region
	.data
	.align	8
Ssubst_char_in_region:
	.quad	167772160               # 0xa000000
	.quad	Fsubst_char_in_region
	.short	4                       # 0x4
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.121
	.quad	0
	.quad	0
	.size	Ssubst_char_in_region, 48

	.type	.L.str.122,@object      # @.str.122
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.122:
	.asciz	"translate-region-internal"
	.size	.L.str.122, 26

	.type	Stranslate_region_internal,@object # @Stranslate_region_internal
	.data
	.align	8
Stranslate_region_internal:
	.quad	167772160               # 0xa000000
	.quad	Ftranslate_region_internal
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.122
	.quad	0
	.quad	0
	.size	Stranslate_region_internal, 48

	.type	.L.str.123,@object      # @.str.123
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.123:
	.asciz	"delete-region"
	.size	.L.str.123, 14

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"r"
	.size	.L.str.124, 2

	.type	Sdelete_region,@object  # @Sdelete_region
	.data
	.align	8
Sdelete_region:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	0
	.size	Sdelete_region, 48

	.type	.L.str.125,@object      # @.str.125
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.125:
	.asciz	"delete-and-extract-region"
	.size	.L.str.125, 26

	.type	Sdelete_and_extract_region,@object # @Sdelete_and_extract_region
	.data
	.align	8
Sdelete_and_extract_region:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_and_extract_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	0
	.size	Sdelete_and_extract_region, 48

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"widen"
	.size	.L.str.126, 6

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.zero	1
	.size	.L.str.127, 1

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"narrow-to-region"
	.size	.L.str.128, 17

	.type	Snarrow_to_region,@object # @Snarrow_to_region
	.data
	.align	8
Snarrow_to_region:
	.quad	167772160               # 0xa000000
	.quad	Fnarrow_to_region
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.128
	.quad	.L.str.124
	.quad	0
	.size	Snarrow_to_region, 48

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"save-restriction"
	.size	.L.str.129, 17

	.type	Ssave_restriction,@object # @Ssave_restriction
	.data
	.align	8
Ssave_restriction:
	.quad	167772160               # 0xa000000
	.quad	Fsave_restriction
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.zero	4
	.quad	.L.str.129
	.quad	0
	.quad	0
	.size	Ssave_restriction, 48

	.type	.L.str.130,@object      # @.str.130
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"transpose-regions"
	.size	.L.str.130, 18

	.type	Stranspose_regions,@object # @Stranspose_regions
	.data
	.align	8
Stranspose_regions:
	.quad	167772160               # 0xa000000
	.quad	Ftranspose_regions
	.short	4                       # 0x4
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.130
	.quad	0
	.quad	0
	.size	Stranspose_regions, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
