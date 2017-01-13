	.text
	.file	"generate.bc"
	.globl	msg_job_pages_printed
	.align	16, 0x90
	.type	msg_job_pages_printed,@function
msg_job_pages_printed:                  # @msg_job_pages_printed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	108(%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 128(%rdi)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-28(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -12(%rbp)
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	a2ps_destination_to_string
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, 112(%rax)
	jne	.LBB0_8
# BB#3:                                 # %if.then.2
	jmp	.LBB0_4
.LBB0_4:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then.4
	movabsq	$.L.str, %rdi
	movq	stderr, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB0_6:                                # %if.end.7
	jmp	.LBB0_7
.LBB0_7:                                # %do.end
	jmp	.LBB0_20
.LBB0_8:                                # %if.else
	cmpl	$1, -12(%rbp)
	jne	.LBB0_14
# BB#9:                                 # %if.then.9
	jmp	.LBB0_10
.LBB0_10:                               # %do.body.10
	movl	msg_verbosity, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB0_12
# BB#11:                                # %if.then.13
	movabsq	$.L.str.1, %rdi
	movq	stderr, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movl	112(%rdi), %edx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB0_12:                               # %if.end.17
	jmp	.LBB0_13
.LBB0_13:                               # %do.end.18
	jmp	.LBB0_19
.LBB0_14:                               # %if.else.19
	jmp	.LBB0_15
.LBB0_15:                               # %do.body.20
	movl	msg_verbosity, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB0_17
# BB#16:                                # %if.then.23
	movabsq	$.L.str.2, %rdi
	movq	stderr, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movl	112(%rdi), %edx
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB0_17:                               # %if.end.27
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.28
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.29
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.30
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	callq	macro_meta_sequence_get
	cmpq	$0, %rax
	je	.LBB0_34
# BB#21:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 116(%rax)
	je	.LBB0_34
# BB#22:                                # %if.then.34
	movq	-8(%rbp), %rax
	cmpl	$1, 116(%rax)
	jne	.LBB0_28
# BB#23:                                # %if.then.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.body.38
	movl	msg_verbosity, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB0_26
# BB#25:                                # %if.then.41
	movabsq	$.L.str.4, %rdi
	movq	stderr, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB0_26:                               # %if.end.44
	jmp	.LBB0_27
.LBB0_27:                               # %do.end.45
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.body.47
	movl	msg_verbosity, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB0_31
# BB#30:                                # %if.then.50
	movabsq	$.L.str.5, %rdi
	movq	stderr, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movl	116(%rdi), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB0_31:                               # %if.end.54
	jmp	.LBB0_32
.LBB0_32:                               # %do.end.55
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.56
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.57
	movq	-24(%rbp), %rdi
	callq	free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	msg_job_pages_printed, .Lfunc_end0-msg_job_pages_printed
	.cfi_endproc

	.globl	msg_nothing_printed
	.align	16, 0x90
	.type	msg_nothing_printed,@function
msg_nothing_printed:                    # @msg_nothing_printed
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
	jmp	.LBB1_1
.LBB1_1:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$3, %eax
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movq	stderr, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	msg_nothing_printed, .Lfunc_end1-msg_nothing_printed
	.cfi_endproc

	.globl	print_toc
	.align	16, 0x90
	.type	print_toc,@function
print_toc:                              # @print_toc
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	job, %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	xstrdup
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	a2ps_open_input_session
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	job, %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movb	$1, 32(%rax)
# BB#1:                                 # %do.body
	movq	job(%rip), %rax
	movq	1632(%rax), %rcx
	movq	40(%rcx), %rdx
	movq	48(%rcx), %rcx
	movq	-8(%rcx,%rdx,8), %rsi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	expand_user_string
	movq	%rax, -224(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	strcpy
	movq	%rax, -240(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	leaq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	end_of_line, %edx
	callq	buffer_string_set
	movabsq	$.L.str.7, %rdi
	movq	job, %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	get_style_sheet
	leaq	-208(%rbp), %rsi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ssh_print_postscript
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	job, %rdi
	callq	a2ps_close_input_session
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	print_toc, .Lfunc_end2-print_toc
	.cfi_endproc

	.globl	print
	.align	16, 0x90
	.type	print,@function
print:                                  # @print
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
	subq	$688, %rsp              # imm = 0x2B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -552(%rbp)
	movq	-8(%rbp), %rdi
	callq	input_new
	movq	%rax, -568(%rbp)
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	job, %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -584(%rbp)
	testb	$1, delegate_p
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-584(%rbp), %rax
	movq	24(%rax), %rdi
	movq	job, %rax
	movl	280(%rax), %ecx
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	output_format_to_key
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_subcontract
	movq	%rax, -552(%rbp)
	cmpq	$0, %rax
	je	.LBB3_3
# BB#2:                                 # %if.then
	movl	$4, -572(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movq	-584(%rbp), %rax
	movq	24(%rax), %rdi
	callq	string_to_style_kind
	movl	%eax, -572(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.8
	movabsq	$.L.str.8, %rsi
	movq	stderr, %rdi
	movq	-584(%rbp), %rax
	movq	(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	24(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB3_7:                                # %if.end.11
	jmp	.LBB3_8
.LBB3_8:                                # %do.end
	movl	-572(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	ja	.LBB3_36
# BB#37:                                # %do.end
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_9:                                # %sw.bb
	movq	job, %rdi
	callq	page_flush
	movabsq	$.L.str.9, %rdi
	leaq	-544(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-584(%rbp), %rdi
	movq	24(%rdi), %rdx
	movq	-552(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movq	-584(%rbp), %rdi
	movq	-568(%rbp), %rsi
	movq	-552(%rbp), %rdx
	movl	%eax, -628(%rbp)        # 4-byte Spill
	callq	subcontract
	cmpl	$0, %eax
	je	.LBB3_11
# BB#10:                                # %if.then.18
	leaq	-544(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	job, %rdi
	callq	msg_file_pages_printed
	jmp	.LBB3_16
.LBB3_11:                               # %if.else.20
	jmp	.LBB3_12
.LBB3_12:                               # %do.body.21
	movl	msg_verbosity, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB3_14
# BB#13:                                # %if.then.24
	movabsq	$.L.str.10, %rdi
	movq	stderr, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	leaq	-544(%rbp), %rcx
	movq	-584(%rbp), %rdi
	movq	(%rdi), %rdx
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -644(%rbp)        # 4-byte Spill
.LBB3_14:                               # %if.end.29
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.30
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.31
	jmp	.LBB3_36
.LBB3_17:                               # %sw.bb.32
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.33
	movl	msg_verbosity, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB3_20
# BB#19:                                # %if.then.36
	movabsq	$.L.str.11, %rdi
	movq	stderr, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-584(%rbp), %rdi
	movq	(%rdi), %rdx
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB3_20:                               # %if.end.40
	jmp	.LBB3_21
.LBB3_21:                               # %do.end.41
	jmp	.LBB3_36
.LBB3_22:                               # %sw.bb.42
	movq	job, %rax
	cmpl	$0, 312(%rax)
	je	.LBB3_24
# BB#23:                                # %if.then.44
	jmp	.LBB3_34
.LBB3_24:                               # %if.end.45
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.46
	movl	msg_verbosity, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB3_27
# BB#26:                                # %if.then.49
	movabsq	$.L.str.12, %rdi
	movq	stderr, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-584(%rbp), %rdi
	movq	(%rdi), %rdx
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB3_27:                               # %if.end.53
	jmp	.LBB3_28
.LBB3_28:                               # %do.end.54
	jmp	.LBB3_36
.LBB3_29:                               # %sw.bb.55
	cmpl	$0, highlight_level
	jne	.LBB3_31
# BB#30:                                # %if.then.56
	jmp	.LBB3_34
.LBB3_31:                               # %if.end.57
	movq	-584(%rbp), %rax
	movq	24(%rax), %rdi
	callq	get_style_sheet
	movq	%rax, -560(%rbp)
	cmpq	$0, -560(%rbp)
	jne	.LBB3_33
# BB#32:                                # %if.then.61
	jmp	.LBB3_34
.LBB3_33:                               # %if.end.62
	movq	-568(%rbp), %rdi
	movq	-560(%rbp), %rax
	cmpl	$1, 72(%rax)
	sete	%cl
	movzbl	%cl, %edx
	andl	$1, %edx
	movl	%edx, %esi
	callq	buffer_set_lower_case
	movq	job, %rdi
	movq	-568(%rbp), %rsi
	movq	-560(%rbp), %rdx
	callq	ssh_print_postscript
	movq	job, %rdi
	movq	-560(%rbp), %rax
	movq	8(%rax), %rsi
	callq	msg_file_pages_printed
	movq	-16(%rbp), %rax
	movl	(%rax), %r8d
	addl	$1, %r8d
	movl	%r8d, (%rax)
	jmp	.LBB3_36
.LBB3_34:                               # %plain_print
	jmp	.LBB3_35
.LBB3_35:                               # %sw.bb.66
	movq	job, %rdi
	movq	-568(%rbp), %rsi
	callq	plain_print_postscript
	movabsq	$.L.str.13, %rdi
	movq	job, %rsi
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	msg_file_pages_printed
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB3_36:                               # %sw.epilog
	movq	-568(%rbp), %rdi
	callq	input_end
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print, .Lfunc_end3-print
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_35
	.quad	.LBB3_22
	.quad	.LBB3_29
	.quad	.LBB3_17
	.quad	.LBB3_9

	.text
	.align	16, 0x90
	.type	input_new,@function
input_new:                              # @input_new
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
	subq	$272, %rsp              # imm = 0x110
	movl	$184, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	job, %rdi
	movq	-8(%rbp), %rsi
	callq	a2ps_open_input_session
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_3
# BB#2:                                 # %lor.lhs.false.4
	movq	-8(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_9
.LBB4_3:                                # %if.then
	movq	-24(%rbp), %rax
	movb	$1, 97(%rax)
	movq	job, %rax
	movq	264(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	movq	stdin, %rsi
	movl	end_of_line, %edx
	callq	buffer_stream_set
# BB#4:                                 # %do.body
	cmpq	$0, sample_tmpname
	je	.LBB4_6
# BB#5:                                 # %cond.true
	movq	sample_tmpname, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.16, %rsi
	callq	tempnam
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB4_7:                                # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, sample_tmpname
# BB#8:                                 # %do.end
	movq	-16(%rbp), %rdi
	movq	sample_tmpname, %rsi
	callq	buffer_sample_get
	jmp	.LBB4_18
.LBB4_9:                                # %if.else
	movq	-24(%rbp), %rax
	movb	$0, 97(%rax)
	movq	-8(%rbp), %rdi
	callq	isdir
	cmpl	$0, %eax
	je	.LBB4_11
# BB#10:                                # %if.then.12
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movq	-24(%rbp), %rcx
	movb	$0, 96(%rcx)
.LBB4_11:                               # %if.end
	movabsq	$.L.str.18, %rsi
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -184(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_13
# BB#12:                                # %if.then.19
	callq	__errno_location
	movabsq	$.L.str.19, %rdi
	movl	(%rax), %esi
	movl	%esi, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movq	-24(%rbp), %rcx
	movb	$0, 96(%rcx)
	jmp	.LBB4_17
.LBB4_13:                               # %if.else.24
	leaq	-168(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB4_15
# BB#14:                                # %if.then.28
	callq	__errno_location
	movabsq	$.L.str.20, %rdi
	movl	(%rax), %esi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-228(%rbp), %esi        # 4-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movq	-24(%rbp), %rcx
	movb	$0, 96(%rcx)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.33
	leaq	-192(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	localtime
	movl	$56, %ecx
	movl	%ecx, %edx
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	-176(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-248(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB4_16:                               # %if.end.35
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.36
	movq	-16(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	end_of_line, %edx
	callq	buffer_stream_set
.LBB4_18:                               # %if.end.37
	movq	-24(%rbp), %rax
	testb	$1, 96(%rax)
	jne	.LBB4_20
# BB#19:                                # %if.then.40
	movabsq	$.L.str.21, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB4_28
.LBB4_20:                               # %if.else.41
	cmpq	$0, style_request
	je	.LBB4_23
# BB#21:                                # %lor.lhs.false.44
	movq	style_request, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_23
# BB#22:                                # %if.then.48
	movq	style_request, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB4_27
.LBB4_23:                               # %if.else.50
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	cmpq	$0, sample_tmpname
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	je	.LBB4_25
# BB#24:                                # %cond.true.53
	movq	sample_tmpname, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB4_26
.LBB4_25:                               # %cond.false.54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB4_26:                               # %cond.end.56
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_command
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
.LBB4_27:                               # %if.end.60
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.61
	cmpq	$0, sample_tmpname
	je	.LBB4_30
# BB#29:                                # %if.then.63
	movq	sample_tmpname, %rdi
	callq	unlink
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_30:                               # %if.end.65
	movq	-16(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end4:
	.size	input_new, .Lfunc_end4-input_new
	.cfi_endproc

	.align	16, 0x90
	.type	string_to_style_kind,@function
string_to_style_kind:                   # @string_to_style_kind
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB5_12
.LBB5_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	movl	$3, -4(%rbp)
	jmp	.LBB5_12
.LBB5_4:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB5_12
.LBB5_6:                                # %if.else.8
	movq	-16(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_8
# BB#7:                                 # %if.then.11
	movl	$4, -4(%rbp)
	jmp	.LBB5_12
.LBB5_8:                                # %if.end
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.12
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.13
	jmp	.LBB5_11
.LBB5_11:                               # %if.end.14
	movl	$2, -4(%rbp)
.LBB5_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	string_to_style_kind, .Lfunc_end5-string_to_style_kind
	.cfi_endproc

	.align	16, 0x90
	.type	msg_file_pages_printed,@function
msg_file_pages_printed:                 # @msg_file_pages_printed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1632(%rsi), %rsi
	movq	40(%rsi), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movl	120(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 128(%rsi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -20(%rbp)
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$1, 116(%rax)
	jne	.LBB6_8
# BB#3:                                 # %if.then.9
	jmp	.LBB6_4
.LBB6_4:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.24, %rdi
	movq	stderr, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB6_6:                                # %if.end.19
	jmp	.LBB6_7
.LBB6_7:                                # %do.end
	jmp	.LBB6_20
.LBB6_8:                                # %if.else
	cmpl	$1, -20(%rbp)
	jne	.LBB6_14
# BB#9:                                 # %if.then.21
	jmp	.LBB6_10
.LBB6_10:                               # %do.body.22
	movl	msg_verbosity, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB6_12
# BB#11:                                # %if.then.25
	movabsq	$.L.str.25, %rdi
	movq	stderr, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rsi
	movq	1632(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdi,8), %rsi
	movl	116(%rsi), %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_12:                               # %if.end.42
	jmp	.LBB6_13
.LBB6_13:                               # %do.end.43
	jmp	.LBB6_19
.LBB6_14:                               # %if.else.44
	jmp	.LBB6_15
.LBB6_15:                               # %do.body.45
	movl	msg_verbosity, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB6_17
# BB#16:                                # %if.then.48
	movabsq	$.L.str.26, %rdi
	movq	stderr, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	1632(%rdi), %rdi
	movq	40(%rdi), %rdi
	subq	$1, %rdi
	movq	-8(%rbp), %rsi
	movq	1632(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdi,8), %rsi
	movl	116(%rsi), %r8d
	movl	-20(%rbp), %r9d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB6_17:                               # %if.end.65
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.66
	jmp	.LBB6_19
.LBB6_19:                               # %if.end.67
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.68
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	msg_file_pages_printed, .Lfunc_end6-msg_file_pages_printed
	.cfi_endproc

	.align	16, 0x90
	.type	input_end,@function
input_end:                              # @input_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB7_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	stdin, %rax
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fclose
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	buffer_release
	movq	-8(%rbp), %rdi
	callq	free
	movq	job, %rdi
	callq	a2ps_close_input_session
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	input_end, .Lfunc_end7-input_end
	.cfi_endproc

	.globl	guess
	.align	16, 0x90
	.type	guess,@function
guess:                                  # @guess
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	input_new
	movabsq	$.L.str.14, %rdi
	movq	%rax, -16(%rbp)
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	stdin, %rax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fclose
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB8_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	guess, .Lfunc_end8-guess
	.cfi_endproc

	.type	sample_tmpname,@object  # @sample_tmpname
	.bss
	.globl	sample_tmpname
	.align	8
sample_tmpname:
	.quad	0
	.size	sample_tmpname, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[Total: 1 page on 1 sheet] %s\n"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"[Total: %d pages on 1 sheet] %s\n"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"[Total: %d pages on %d sheets] %s\n"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cfg.wrapped"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"[1 line wrapped]\n"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"[%d lines wrapped]\n"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"[No output produced]\n"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pre"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Getting ready to print file `%s', with command `%s'\n"
	.size	.L.str.8, 53

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s, delegated to %s"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"[%s (%s): failed.  Ignored]\n"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"[%s (unprintable): ignored]\n"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"[%s (binary): ignored]\n"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plain"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"[%s (%s)]\n"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"a2_"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"`%s' is a directory"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"r"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"cannot open file `%s'"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"cannot get informations on file `%s'"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"UNPRINTABLE"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"binary"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"delegate"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"[%s (%s): 1 page on 1 sheet]\n"
	.size	.L.str.24, 30

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"[%s (%s): %d pages on 1 sheet]\n"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"[%s (%s): %d pages on %d sheets]\n"
	.size	.L.str.26, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
