	.text
	.file	"filelock.bc"
	.globl	lock_file
	.align	16, 0x90
	.type	lock_file,@function
lock_file:                              # @lock_file
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
	subq	$8448, %rsp             # imm = 0x2100
	movq	%rdi, -8(%rbp)
	movq	$16384, -8264(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -8272(%rbp)
	movb	$0, -8273(%rbp)
	movq	globals+1920, %rax
	movq	%rax, -8328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8328(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_19
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_truename_buffer
	xorl	%edi, %edi
	movq	%rax, -8288(%rbp)
	movq	-8288(%rbp), %rax
	movq	%rax, -8344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8344(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB0_6
# BB#3:                                 # %land.lhs.true
	movq	-8288(%rbp), %rdi
	callq	Fverify_visited_file_modtime
	xorl	%edi, %edi
	movq	%rax, -8352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8352(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_6
# BB#4:                                 # %land.lhs.true.11
	movq	-8(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -8360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8360(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_6
# BB#5:                                 # %if.then.15
	movabsq	$.L.str, %rdi
	callq	intern
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -8368(%rbp)       # 8-byte Spill
.LBB0_6:                                # %if.end.18
	testb	$1, globals+3369
	je	.LBB0_19
# BB#7:                                 # %if.then.19
	movq	-24(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	cmpq	-8264(%rbp), %rax
	jg	.LBB0_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	SBYTES
	addq	$3, %rax
	movq	-8264(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -8264(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -8376(%rbp)       # 8-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
	movb	$1, -8273(%rbp)
	movq	-24(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -8376(%rbp)       # 8-byte Spill
.LBB0_10:                               # %cond.end
	movq	-8376(%rbp), %rax       # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fill_in_lock_file_name
	leaq	-8256(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lock_if_free
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_14
# BB#11:                                # %if.then.35
	movabsq	$.L.str.2, %rdi
	movabsq	$lock_file.replacement, %rsi
	movq	-8248(%rbp), %rax
	movq	%rax, -8304(%rbp)
	movq	-8240(%rbp), %rax
	movq	-8304(%rbp), %rcx
	addq	$1, %rcx
	subq	%rcx, %rax
	movq	%rax, -8312(%rbp)
	movl	$6, -8316(%rbp)
	movq	-8304(%rbp), %rax
	movslq	-8316(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8304(%rbp), %rcx
	addq	$1, %rcx
	movq	-8312(%rbp), %rdx
	movq	%rdi, -8384(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -8392(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	callq	memmove
	movq	-8304(%rbp), %rax
	movslq	-8316(%rbp), %rcx
	addq	%rcx, %rax
	addq	-8312(%rbp), %rax
	movl	$.L.str.1, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-8304(%rbp), %rdi
	movslq	-8316(%rbp), %rdx
	movq	-8392(%rbp), %rsi       # 8-byte Reload
	movq	%rax, -8400(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-8384(%rbp), %rdi       # 8-byte Reload
	callq	intern
	leaq	-8256(%rbp), %rcx
	movq	-8(%rbp), %rsi
	addq	$24, %rcx
	movq	%rcx, %rdi
	movq	%rax, -8408(%rbp)       # 8-byte Spill
	movq	%rsi, -8416(%rbp)       # 8-byte Spill
	callq	build_string
	movq	-8408(%rbp), %rdi       # 8-byte Reload
	movq	-8416(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	xorl	%edi, %edi
	movq	%rax, -8296(%rbp)
	movq	-8296(%rbp), %rax
	movq	%rax, -8424(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8424(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_13
# BB#12:                                # %if.then.49
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	lock_file_1
	movl	%eax, -8428(%rbp)       # 4-byte Spill
.LBB0_13:                               # %if.end.51
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.52
	jmp	.LBB0_15
.LBB0_15:                               # %do.body
	testb	$1, -8273(%rbp)
	je	.LBB0_17
# BB#16:                                # %if.then.54
	xorl	%edi, %edi
	movb	$0, -8273(%rbp)
	movq	-8272(%rbp), %rax
	movq	%rax, -8440(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8448(%rbp)       # 8-byte Spill
.LBB0_17:                               # %if.end.57
	jmp	.LBB0_18
.LBB0_18:                               # %do.end
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.58
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lock_file, .Lfunc_end0-lock_file
	.cfi_endproc

	.align	16, 0x90
	.type	fill_in_lock_file_name,@function
fill_in_lock_file_name:                 # @fill_in_lock_file_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SBYTES
	movl	$47, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memrchr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-56(%rbp), %rdx         # 8-byte Reload
	subq	%rax, %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movb	$46, (%rdx,%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movb	$35, 1(%rdx,%rax)
	movq	-8(%rbp), %rax
	addq	-40(%rbp), %rax
	addq	$2, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -72(%rbp)         # 8-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fill_in_lock_file_name, .Lfunc_end1-fill_in_lock_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	lock_if_free,@function
lock_if_free:                           # @lock_if_free
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	lock_file_1
	movl	%eax, -28(%rbp)
	cmpl	$17, %eax
	jne	.LBB2_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	current_lock_owner
	movl	%eax, %ecx
	subl	$-1, %eax
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB2_5
	jmp	.LBB2_9
.LBB2_9:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB2_4
	jmp	.LBB2_10
.LBB2_10:                               # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB2_6
	jmp	.LBB2_3
.LBB2_3:                                # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB2_8
.LBB2_4:                                # %sw.bb.2
	movl	$1, -4(%rbp)
	jmp	.LBB2_8
.LBB2_5:                                # %sw.bb.3
	movl	$-1, -4(%rbp)
	jmp	.LBB2_8
.LBB2_6:                                # %sw.epilog
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_7:                                # %while.end
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpl	$0, -28(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB2_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lock_if_free, .Lfunc_end2-lock_if_free
	.cfi_endproc

	.align	16, 0x90
	.type	lock_file_1,@function
lock_file_1:                            # @lock_file_1
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
	subq	$8304, %rsp             # imm = 0x2070
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	callq	get_boot_time
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fuser_login_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_2
.LBB3_1:                                # %cond.true
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -8288(%rbp)       # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$.L.str.5, %rax
	movq	%rax, -8288(%rbp)       # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movq	-8288(%rbp), %rax       # 8-byte Reload
	movq	%rax, -48(%rbp)
	callq	Fsystem_name
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_5
.LBB3_4:                                # %cond.true.7
	movq	-56(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -8296(%rbp)       # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.9
	movabsq	$.L.str.5, %rax
	movq	%rax, -8296(%rbp)       # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end.10
	movq	-8296(%rbp), %rax       # 8-byte Reload
	movq	%rax, -64(%rbp)
	callq	getpid
	movslq	%eax, %rcx
	movq	%rcx, -8280(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_10
# BB#7:                                 # %if.then
	movl	$8193, %eax             # imm = 0x2001
	movl	%eax, %esi
	movabsq	$.L.str.6, %rdx
	leaq	-8272(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-8280(%rbp), %r9
	movq	-32(%rbp), %r10
	movq	%r10, (%rsp)
	movb	$0, %al
	callq	snprintf
	movl	$8193, %r11d            # imm = 0x2001
	movl	%r11d, %ecx
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	ja	.LBB3_9
# BB#8:                                 # %if.then.16
	movl	$36, -4(%rbp)
	jmp	.LBB3_14
.LBB3_9:                                # %if.end
	jmp	.LBB3_13
.LBB3_10:                               # %if.else
	movl	$8193, %eax             # imm = 0x2001
	movl	%eax, %esi
	movabsq	$.L.str.7, %rdx
	leaq	-8272(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-8280(%rbp), %r9
	movb	$0, %al
	callq	snprintf
	movl	$8193, %r10d            # imm = 0x2001
	movl	%r10d, %ecx
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	ja	.LBB3_12
# BB#11:                                # %if.then.22
	movl	$36, -4(%rbp)
	jmp	.LBB3_14
.LBB3_12:                               # %if.end.23
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.24
	leaq	-8272(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	create_lock_file
	movl	%eax, -4(%rbp)
.LBB3_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$8304, %rsp             # imm = 0x2070
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lock_file_1, .Lfunc_end3-lock_file_1
	.cfi_endproc

	.globl	unlock_file
	.align	16, 0x90
	.type	unlock_file,@function
unlock_file:                            # @unlock_file
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	$16384, -24(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	cmpq	-24(%rbp), %rax
	jg	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$3, %rax
	movq	-24(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movb	$1, -33(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_3:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fill_in_lock_file_name
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-16(%rbp), %rsi
	callq	current_lock_owner
	cmpl	$2, %eax
	jne	.LBB4_5
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	unlink
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body
	testb	$1, -33(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.19
	xorl	%edi, %edi
	movb	$0, -33(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB4_8:                                # %if.end.22
	jmp	.LBB4_9
.LBB4_9:                                # %do.end
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	unlock_file, .Lfunc_end4-unlock_file
	.cfi_endproc

	.align	16, 0x90
	.type	current_lock_owner,@function
current_lock_owner:                     # @current_lock_owner
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
	subq	$8368, %rsp             # imm = 0x20B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-8256(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	read_lock_data
	movq	%rax, -8264(%rbp)
	cmpq	$0, -8264(%rbp)
	jge	.LBB5_4
# BB#3:                                 # %if.then.1
	callq	__errno_location
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	cmpl	$2, (%rax)
	cmovel	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB5_40
.LBB5_4:                                # %if.end.4
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %ecx
	cmpq	-8264(%rbp), %rcx
	jge	.LBB5_6
# BB#5:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_6:                                # %if.end.7
	movl	$64, %esi
	movq	-8264(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, 24(%rcx,%rax)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	-8264(%rbp), %rdx
	movq	%rax, %rdi
	callq	memrchr
	movq	%rax, -8288(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -8288(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.14
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_8:                                # %if.end.15
	movl	$46, %esi
	movq	-8288(%rbp), %rdi
	callq	strrchr
	movq	%rax, -8296(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	cmpq	$0, -8296(%rbp)
	jne	.LBB5_10
# BB#9:                                 # %if.then.19
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_10:                               # %if.end.20
	movq	-8296(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB5_12
# BB#11:                                # %if.then.23
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_12:                               # %if.end.24
	callq	__errno_location
	movl	$10, %edx
	movl	$0, (%rax)
	movq	-8296(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strtoimax
	movq	%rax, -8272(%rbp)
	callq	__errno_location
	cmpl	$34, (%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.30
	movq	$-1, -8272(%rbp)
.LBB5_14:                               # %if.end.31
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movsbl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -8316(%rbp)       # 4-byte Spill
	je	.LBB5_15
	jmp	.LBB5_41
.LBB5_41:                               # %if.end.31
	movl	-8316(%rbp), %eax       # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -8320(%rbp)       # 4-byte Spill
	je	.LBB5_16
	jmp	.LBB5_19
.LBB5_15:                               # %sw.bb
	movq	$0, -8280(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8304(%rbp)
	jmp	.LBB5_20
.LBB5_16:                               # %sw.bb.36
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movsbl	1(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB5_18
# BB#17:                                # %if.then.41
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_18:                               # %if.end.42
	leaq	-8304(%rbp), %rsi
	movl	$10, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strtoimax
	movq	%rax, -8280(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %sw.default
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_20:                               # %sw.epilog
	movq	-8304(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	addq	-8264(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB5_22
# BB#21:                                # %if.then.51
	movl	$-1, -4(%rbp)
	jmp	.LBB5_40
.LBB5_22:                               # %if.end.52
	callq	Fsystem_name
	movq	%rax, -8312(%rbp)
	movq	-8312(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB5_23
	jmp	.LBB5_38
.LBB5_23:                               # %land.lhs.true
	movq	-8296(%rbp), %rax
	movq	-8288(%rbp), %rcx
	addq	$1, %rcx
	subq	%rcx, %rax
	movq	-8312(%rbp), %rdi
	movq	%rax, -8328(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-8328(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_38
# BB#24:                                # %land.lhs.true.60
	movq	-8288(%rbp), %rax
	addq	$1, %rax
	movq	-8312(%rbp), %rdi
	movq	%rax, -8336(%rbp)       # 8-byte Spill
	callq	SSDATA
	movq	-8312(%rbp), %rdi
	movq	%rax, -8344(%rbp)       # 8-byte Spill
	callq	SBYTES
	movq	-8336(%rbp), %rdi       # 8-byte Reload
	movq	-8344(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB5_38
# BB#25:                                # %if.then.67
	movq	-8272(%rbp), %rax
	movq	%rax, -8352(%rbp)       # 8-byte Spill
	callq	getpid
	movslq	%eax, %rcx
	movq	-8352(%rbp), %rdx       # 8-byte Reload
	cmpq	%rcx, %rdx
	jne	.LBB5_27
# BB#26:                                # %if.then.72
	movl	$2, -28(%rbp)
	jmp	.LBB5_37
.LBB5_27:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-8272(%rbp), %rcx
	jge	.LBB5_35
# BB#28:                                # %land.lhs.true.75
	cmpq	$2147483647, -8272(%rbp) # imm = 0x7FFFFFFF
	jg	.LBB5_35
# BB#29:                                # %land.lhs.true.78
	xorl	%esi, %esi
	movq	-8272(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	kill
	cmpl	$0, %eax
	jge	.LBB5_31
# BB#30:                                # %lor.lhs.false
	callq	__errno_location
	cmpl	$1, (%rax)
	jne	.LBB5_35
.LBB5_31:                               # %land.lhs.true.86
	cmpq	$0, -8280(%rbp)
	je	.LBB5_34
# BB#32:                                # %lor.lhs.false.89
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -8280(%rbp)
	jg	.LBB5_35
# BB#33:                                # %land.lhs.true.92
	movq	-8280(%rbp), %rdi
	movq	%rdi, -8360(%rbp)       # 8-byte Spill
	callq	get_boot_time
	movq	-8360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	within_one_second
	testb	$1, %al
	jne	.LBB5_34
	jmp	.LBB5_35
.LBB5_34:                               # %if.then.96
	movl	$1, -28(%rbp)
	jmp	.LBB5_36
.LBB5_35:                               # %if.else.97
	movq	-24(%rbp), %rdi
	callq	unlink
	movl	%eax, -4(%rbp)
	jmp	.LBB5_40
.LBB5_36:                               # %if.end.99
	jmp	.LBB5_37
.LBB5_37:                               # %if.end.100
	jmp	.LBB5_39
.LBB5_38:                               # %if.else.101
	movl	$1, -28(%rbp)
.LBB5_39:                               # %if.end.102
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_40:                               # %return
	movl	-4(%rbp), %eax
	addq	$8368, %rsp             # imm = 0x20B0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	current_lock_owner, .Lfunc_end5-current_lock_owner
	.cfi_endproc

	.globl	unlock_all_files
	.align	16, 0x90
	.type	unlock_all_files,@function
unlock_all_files:                       # @unlock_all_files
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
	movq	Vbuffer_alist, %rax
	movq	%rax, -8(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	$1, %al
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_9
.LBB6_4:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	392(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_7
.LBB6_5:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB6_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	392(%rax), %rdi
	callq	unlock_file
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_1
.LBB6_9:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	unlock_all_files, .Lfunc_end6-unlock_all_files
	.cfi_endproc

	.globl	Flock_buffer
	.align	16, 0x90
	.type	Flock_buffer,@function
Flock_buffer:                           # @Flock_buffer
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	392(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
.LBB7_3:                                # %if.end
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB7_6
# BB#4:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_6
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	lock_file
.LBB7_6:                                # %if.end.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Flock_buffer, .Lfunc_end7-Flock_buffer
	.cfi_endproc

	.globl	Funlock_buffer
	.align	16, 0x90
	.type	Funlock_buffer,@function
Funlock_buffer:                         # @Funlock_buffer
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
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	392(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:                                # %if.then
	movq	current_buffer, %rax
	movq	392(%rax), %rdi
	callq	unlock_file
.LBB8_3:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Funlock_buffer, .Lfunc_end8-Funlock_buffer
	.cfi_endproc

	.globl	unlock_buffer
	.align	16, 0x90
	.type	unlock_buffer,@function
unlock_buffer:                          # @unlock_buffer
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
	movq	720(%rdi), %rdi
	movq	64(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	720(%rax), %rax
	cmpq	48(%rax), %rdi
	jge	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	392(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_2
	jmp	.LBB9_3
.LBB9_2:                                # %if.then
	movq	-8(%rbp), %rax
	movq	392(%rax), %rdi
	callq	unlock_file
.LBB9_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	unlock_buffer, .Lfunc_end9-unlock_buffer
	.cfi_endproc

	.globl	Ffile_locked_p
	.align	16, 0x90
	.type	Ffile_locked_p,@function
Ffile_locked_p:                         # @Ffile_locked_p
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
	subq	$8320, %rsp             # imm = 0x2080
	movq	%rdi, -8(%rbp)
	movq	$16384, -8264(%rbp)     # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -8272(%rbp)
	movb	$0, -8273(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -8288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	cmpq	-8264(%rbp), %rax
	jg	.LBB10_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$3, %rax
	movq	-8264(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -8264(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -8296(%rbp)       # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movb	$1, -8273(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -8296(%rbp)       # 8-byte Spill
.LBB10_3:                               # %cond.end
	movq	-8296(%rbp), %rax       # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fill_in_lock_file_name
	leaq	-8256(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	current_lock_owner
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB10_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB10_9
.LBB10_5:                               # %if.else
	cmpl	$2, -28(%rbp)
	jne	.LBB10_7
# BB#6:                                 # %if.then.19
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.21
	leaq	-8256(%rbp), %rax
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	-8256(%rbp), %rdx
	addq	$24, %rax
	subq	%rax, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	make_string
	movq	%rax, -16(%rbp)
.LBB10_8:                               # %if.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.25
	jmp	.LBB10_10
.LBB10_10:                              # %do.body
	testb	$1, -8273(%rbp)
	je	.LBB10_12
# BB#11:                                # %if.then.26
	xorl	%edi, %edi
	movb	$0, -8273(%rbp)
	movq	-8272(%rbp), %rax
	movq	%rax, -8304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8304(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8312(%rbp)       # 8-byte Spill
.LBB10_12:                              # %if.end.29
	jmp	.LBB10_13
.LBB10_13:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Ffile_locked_p, .Lfunc_end10-Ffile_locked_p
	.cfi_endproc

	.globl	syms_of_filelock
	.align	16, 0x90
	.type	syms_of_filelock,@function
syms_of_filelock:                       # @syms_of_filelock
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
	jmp	.LBB11_1
.LBB11_1:                               # %do.body
	movabsq	$syms_of_filelock.o_fwd, %rdi
	movabsq	$.L.str.3, %rsi
	movabsq	$globals, %rax
	addq	$2312, %rax             # imm = 0x908
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2312
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_filelock.b_fwd, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$3369, %rax             # imm = 0xD29
	movq	%rax, %rdx
	callq	defvar_bool
# BB#4:                                 # %do.end.2
	movabsq	$Sunlock_buffer, %rdi
	movb	$1, globals+3369
	callq	defsubr
	movabsq	$Slock_buffer, %rdi
	callq	defsubr
	movabsq	$Sfile_locked_p, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end11:
	.size	syms_of_filelock, .Lfunc_end11-syms_of_filelock
	.cfi_endproc

	.align	16, 0x90
	.type	get_boot_time,@function
get_boot_time:                          # @get_boot_time
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
	subq	$320, %rsp              # imm = 0x140
	testb	$1, boot_time_initialized
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	boot_time, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_26
.LBB12_2:                               # %if.end
	movb	$1, %al
	movb	$1, boot_time_initialized
	testb	$1, %al
	jne	.LBB12_3
	jmp	.LBB12_6
.LBB12_3:                               # %if.then.1
	movabsq	$.L.str.8, %rdi
	leaq	-160(%rbp), %rsi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB12_5
# BB#4:                                 # %if.then.2
	movq	-72(%rbp), %rax
	movq	%rax, boot_time
	movq	boot_time, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_26
.LBB12_5:                               # %if.end.3
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.4
	testb	$1, initialized
	jne	.LBB12_8
# BB#7:                                 # %if.then.6
	movq	boot_time, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_26
.LBB12_8:                               # %if.end.7
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	get_boot_time_1
	cmpq	$0, boot_time
	je	.LBB12_10
# BB#9:                                 # %if.then.9
	movq	boot_time, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_26
.LBB12_10:                              # %if.end.10
	movabsq	$.L.str.9, %rdi
	movl	$1, %esi
	callq	get_boot_time_1
	movl	$0, -12(%rbp)
.LBB12_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$20, -12(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jge	.LBB12_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB12_11 Depth=1
	cmpq	$0, boot_time
	setne	%al
	xorb	$-1, %al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB12_13:                              # %land.end
                                        #   in Loop: Header=BB12_11 Depth=1
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_14
	jmp	.LBB12_25
.LBB12_14:                              # %for.body
                                        #   in Loop: Header=BB12_11 Depth=1
	xorl	%edi, %edi
	movb	$0, -209(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.9, %rdx
	leaq	-192(%rbp), %rdi
	movq	%rax, -208(%rbp)
	movl	-12(%rbp), %ecx
	movb	$0, %al
	callq	make_formatted_string
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB12_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB12_11 Depth=1
	movq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB12_19
.LBB12_16:                              # %if.else
                                        #   in Loop: Header=BB12_11 Depth=1
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.9, %rdx
	leaq	-192(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movb	$0, %al
	callq	make_formatted_string
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB12_18
# BB#17:                                # %if.then.24
                                        #   in Loop: Header=BB12_11 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	build_string
	movq	globals+2312, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movl	$1, %esi
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	make_temp_name
	movabsq	$.L.str.13, %rdi
	movq	%rax, -208(%rbp)
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	callq	builtin_lisp_symbol
	movl	$41, %edi
	movq	%rax, -256(%rbp)
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rdi
	movq	%rax, -240(%rbp)
	callq	build_string
	movl	$6, %ecx
	movl	%ecx, %edi
	leaq	-264(%rbp), %rsi
	movq	%rax, -232(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	Fcall_process
	movb	$1, -209(%rbp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB12_18:                              # %if.end.40
                                        #   in Loop: Header=BB12_11 Depth=1
	jmp	.LBB12_19
.LBB12_19:                              # %if.end.41
                                        #   in Loop: Header=BB12_11 Depth=1
	xorl	%edi, %edi
	movq	-208(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_23
# BB#20:                                # %if.then.44
                                        #   in Loop: Header=BB12_11 Depth=1
	movq	-208(%rbp), %rdi
	callq	SSDATA
	movl	$1, %esi
	movq	%rax, %rdi
	callq	get_boot_time_1
	testb	$1, -209(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.47
                                        #   in Loop: Header=BB12_11 Depth=1
	movq	-208(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB12_22:                              # %if.end.50
                                        #   in Loop: Header=BB12_11 Depth=1
	jmp	.LBB12_23
.LBB12_23:                              # %if.end.51
                                        #   in Loop: Header=BB12_11 Depth=1
	jmp	.LBB12_24
.LBB12_24:                              # %for.inc
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_11
.LBB12_25:                              # %for.end
	movq	boot_time, %rax
	movq	%rax, -8(%rbp)
.LBB12_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end12:
	.size	get_boot_time, .Lfunc_end12-get_boot_time
	.cfi_endproc

	.align	16, 0x90
	.type	create_lock_file,@function
create_lock_file:                       # @create_lock_file
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
	subq	$160, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	symlink
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB13_3:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$17, -24(%rbp)
	jne	.LBB13_9
# BB#4:                                 # %land.lhs.true
	testb	$1, -17(%rbp)
	je	.LBB13_9
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	unlink
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	symlink
	cmpl	$0, %eax
	jne	.LBB13_7
# BB#6:                                 # %cond.true.6
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false.7
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB13_8:                               # %cond.end.9
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
.LBB13_9:                               # %if.end
	cmpl	$38, -24(%rbp)
	je	.LBB13_12
# BB#10:                                # %lor.lhs.false
	cmpl	$1, -24(%rbp)
	je	.LBB13_12
# BB#11:                                # %lor.lhs.false.13
	cmpl	$36, -24(%rbp)
	jne	.LBB13_33
.LBB13_12:                              # %if.then.15
	movl	$47, %esi
	movq	-8(%rbp), %rdi
	callq	strrchr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rdi
	subq	%rdi, %rax
	movq	%rax, -40(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-40(%rbp), %rax
	addq	$15, %rax
	cmpq	-48(%rbp), %rax
	ja	.LBB13_14
# BB#13:                                # %cond.true.19
	movq	-40(%rbp), %rax
	addq	$15, %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$30, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB13_15
.LBB13_14:                              # %cond.false.22
	movb	$1, -57(%rbp)
	movq	-40(%rbp), %rax
	addq	$15, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB13_15:                              # %cond.end.25
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	$524288, %esi           # imm = 0x80000
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-72(%rbp), %rax
	addq	-40(%rbp), %rax
	movl	$create_lock_file.nonce_base, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-72(%rbp), %rdi
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	mkostemp
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB13_17
# BB#16:                                # %if.then.31
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB13_28
.LBB13_17:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	movl	$0, -24(%rbp)
	movl	-76(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	write
	cmpq	-88(%rbp), %rax
	jne	.LBB13_19
# BB#18:                                # %lor.lhs.false.36
	movl	$292, %esi              # imm = 0x124
	movl	-76(%rbp), %edi
	callq	fchmod
	cmpl	$0, %eax
	je	.LBB13_20
.LBB13_19:                              # %if.then.39
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB13_20:                              # %if.end.41
	movl	-76(%rbp), %edi
	callq	emacs_close
	cmpl	$0, %eax
	je	.LBB13_22
# BB#21:                                # %if.then.44
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB13_22:                              # %if.end.46
	cmpl	$0, -24(%rbp)
	jne	.LBB13_25
# BB#23:                                # %land.lhs.true.48
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	rename_lock_file
	cmpl	$0, %eax
	je	.LBB13_25
# BB#24:                                # %if.then.52
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB13_25:                              # %if.end.54
	cmpl	$0, -24(%rbp)
	je	.LBB13_27
# BB#26:                                # %if.then.56
	movq	-72(%rbp), %rdi
	callq	unlink
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB13_27:                              # %if.end.58
	jmp	.LBB13_28
.LBB13_28:                              # %if.end.59
	jmp	.LBB13_29
.LBB13_29:                              # %do.body
	testb	$1, -57(%rbp)
	je	.LBB13_31
# BB#30:                                # %if.then.61
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB13_31:                              # %if.end.64
	jmp	.LBB13_32
.LBB13_32:                              # %do.end
	jmp	.LBB13_33
.LBB13_33:                              # %if.end.65
	movl	-24(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	create_lock_file, .Lfunc_end13-create_lock_file
	.cfi_endproc

	.align	16, 0x90
	.type	get_boot_time_1,@function
get_boot_time_1:                        # @get_boot_time_1
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
	subq	$416, %rsp              # imm = 0x1A0
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB14_4
# BB#1:                                 # %if.then
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$4, %edx
	movl	$512, %ecx              # imm = 0x200
	movq	-8(%rbp), %rsi
	callq	faccessat
	cmpl	$0, %eax
	je	.LBB14_3
# BB#2:                                 # %if.then.1
	jmp	.LBB14_15
.LBB14_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	utmpname
	movl	%eax, -412(%rbp)        # 4-byte Spill
.LBB14_4:                               # %if.end.3
	callq	setutent
.LBB14_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-400(%rbp), %rdi
	movw	$2, -400(%rbp)
	callq	getutid
	movq	%rax, -408(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.LBB14_7
# BB#6:                                 # %if.then.6
	jmp	.LBB14_14
.LBB14_7:                               # %if.end.7
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-408(%rbp), %rax
	movslq	340(%rax), %rax
	cmpq	boot_time, %rax
	jle	.LBB14_11
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-408(%rbp), %rax
	movslq	340(%rax), %rax
	movq	%rax, boot_time
	testb	$1, -9(%rbp)
	jne	.LBB14_10
# BB#9:                                 # %if.then.15
	jmp	.LBB14_14
.LBB14_10:                              # %if.end.16
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_11
.LBB14_11:                              # %if.end.17
                                        #   in Loop: Header=BB14_5 Depth=1
	callq	getutent
	movq	%rax, -408(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.LBB14_13
# BB#12:                                # %if.then.20
	jmp	.LBB14_14
.LBB14_13:                              # %if.end.21
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_5
.LBB14_14:                              # %while.end
	callq	endutent
.LBB14_15:                              # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end14:
	.size	get_boot_time_1, .Lfunc_end14-get_boot_time_1
	.cfi_endproc

	.align	16, 0x90
	.type	rename_lock_file,@function
rename_lock_file:                       # @rename_lock_file
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
	subq	$192, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB15_14
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	link
	cmpl	$0, %eax
	jne	.LBB15_5
# BB#2:                                 # %if.then.1
	movq	-16(%rbp), %rdi
	callq	unlink
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -177(%rbp)         # 1-byte Spill
	je	.LBB15_4
# BB#3:                                 # %lor.rhs
	callq	__errno_location
	cmpl	$2, (%rax)
	sete	%cl
	movb	%cl, -177(%rbp)         # 1-byte Spill
.LBB15_4:                               # %lor.end
	movb	-177(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB15_15
.LBB15_5:                               # %if.end
	callq	__errno_location
	cmpl	$38, (%rax)
	je	.LBB15_8
# BB#6:                                 # %land.lhs.true
	callq	__errno_location
	cmpl	$1, (%rax)
	je	.LBB15_8
# BB#7:                                 # %if.then.10
	movl	$-1, -4(%rbp)
	jmp	.LBB15_15
.LBB15_8:                               # %if.end.11
	leaq	-176(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	lstat
	cmpl	$0, %eax
	je	.LBB15_10
# BB#9:                                 # %lor.lhs.false
	callq	__errno_location
	cmpl	$75, (%rax)
	jne	.LBB15_11
.LBB15_10:                              # %if.then.16
	callq	__errno_location
	movl	$17, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB15_15
.LBB15_11:                              # %if.end.18
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB15_13
# BB#12:                                # %if.then.21
	movl	$-1, -4(%rbp)
	jmp	.LBB15_15
.LBB15_13:                              # %if.end.22
	jmp	.LBB15_14
.LBB15_14:                              # %if.end.23
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	rename
	movl	%eax, -4(%rbp)
.LBB15_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rename_lock_file, .Lfunc_end15-rename_lock_file
	.cfi_endproc

	.align	16, 0x90
	.type	read_lock_data,@function
read_lock_data:                         # @read_lock_data
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$8193, %eax             # imm = 0x2001
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	readlinkat
	xorl	%edi, %edi
	movb	%dil, %r8b
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	movb	%r8b, -53(%rbp)         # 1-byte Spill
	jge	.LBB16_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB16_1 Depth=1
	callq	__errno_location
	cmpl	$22, (%rax)
	sete	%cl
	movb	%cl, -53(%rbp)          # 1-byte Spill
.LBB16_3:                               # %land.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_4
	jmp	.LBB16_19
.LBB16_4:                               # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$131072, %esi           # imm = 0x20000
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	emacs_open
	xorl	%edx, %edx
	movl	%eax, -36(%rbp)
	cmpl	-36(%rbp), %edx
	jg	.LBB16_8
# BB#5:                                 # %if.then
	movl	$8193, %eax             # imm = 0x2001
	movl	%eax, %edx
	movl	-36(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	read
	movq	%rax, -48(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -52(%rbp)
	movl	-36(%rbp), %edi
	callq	emacs_close
	cmpl	$0, %eax
	je	.LBB16_7
# BB#6:                                 # %if.then.9
	movq	$-1, -8(%rbp)
	jmp	.LBB16_20
.LBB16_7:                               # %if.end
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_20
.LBB16_8:                               # %if.end.11
                                        #   in Loop: Header=BB16_1 Depth=1
	callq	__errno_location
	cmpl	$40, (%rax)
	je	.LBB16_10
# BB#9:                                 # %if.then.14
	movq	$-1, -8(%rbp)
	jmp	.LBB16_20
.LBB16_10:                              # %if.end.15
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_11
.LBB16_11:                              # %do.body
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB16_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB16_17
.LBB16_14:                              # %if.else
                                        #   in Loop: Header=BB16_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB16_16
# BB#15:                                # %if.then.21
                                        #   in Loop: Header=BB16_1 Depth=1
	callq	process_pending_signals
.LBB16_16:                              # %if.end.22
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_17
.LBB16_17:                              # %if.end.23
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_18
.LBB16_18:                              # %do.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_1
.LBB16_19:                              # %while.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	read_lock_data, .Lfunc_end16-read_lock_data
	.cfi_endproc

	.align	16, 0x90
	.type	within_one_second,@function
within_one_second:                      # @within_one_second
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	subq	-16(%rbp), %rsi
	cmpq	$-1, %rsi
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jl	.LBB17_2
# BB#1:                                 # %land.rhs
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	cmpq	$1, %rax
	setle	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB17_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end17:
	.size	within_one_second, .Lfunc_end17-within_one_second
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ask-user-about-supersession-threat"
	.size	.L.str, 35

	.type	lock_file.replacement,@object # @lock_file.replacement
	.section	.rodata,"a",@progbits
lock_file.replacement:
	.asciz	" (pid "
	.size	lock_file.replacement, 7

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	")"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ask-user-about-lock"
	.size	.L.str.2, 20

	.type	syms_of_filelock.o_fwd,@object # @syms_of_filelock.o_fwd
	.local	syms_of_filelock.o_fwd
	.comm	syms_of_filelock.o_fwd,16,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"temporary-file-directory"
	.size	.L.str.3, 25

	.type	syms_of_filelock.b_fwd,@object # @syms_of_filelock.b_fwd
	.local	syms_of_filelock.b_fwd
	.comm	syms_of_filelock.b_fwd,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"create-lockfiles"
	.size	.L.str.4, 17

	.type	Sunlock_buffer,@object  # @Sunlock_buffer
	.data
	.align	8
Sunlock_buffer:
	.quad	167772160               # 0xa000000
	.quad	Funlock_buffer
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sunlock_buffer, 48

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s@%s.%ld:%ld"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s@%s.%ld"
	.size	.L.str.7, 10

	.type	boot_time_initialized,@object # @boot_time_initialized
	.local	boot_time_initialized
	.comm	boot_time_initialized,1,1
	.type	boot_time,@object       # @boot_time
	.local	boot_time
	.comm	boot_time,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/var/run/random-seed"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/var/log/wtmp"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s.%d"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s.%d.gz"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"wt"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gzip"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-cd"
	.size	.L.str.14, 4

	.type	create_lock_file.nonce_base,@object # @create_lock_file.nonce_base
	.section	.rodata,"a",@progbits
create_lock_file.nonce_base:
	.asciz	".#-emacsXXXXXX"
	.size	create_lock_file.nonce_base, 15

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"unlock-buffer"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"lock-buffer"
	.size	.L.str.16, 12

	.type	Slock_buffer,@object    # @Slock_buffer
	.data
	.align	8
Slock_buffer:
	.quad	167772160               # 0xa000000
	.quad	Flock_buffer
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.size	Slock_buffer, 48

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"file-locked-p"
	.size	.L.str.17, 14

	.type	Sfile_locked_p,@object  # @Sfile_locked_p
	.data
	.align	8
Sfile_locked_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_locked_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.quad	0
	.quad	0
	.size	Sfile_locked_p, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
