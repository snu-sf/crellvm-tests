	.text
	.file	"zfilter.bc"
	.globl	zSFD
	.align	16, 0x90
	.type	zSFD,@function
zSFD:                                   # @zSFD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 208
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	%rbx, 16(%rsp)
	movq	s_SFD_template+40(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.then
	leaq	24(%rsp), %rdi
	callq	*%rax
.LBB0_2:                                # %if.end
	cmpl	$3, 80(%r14)
	jl	.LBB0_8
# BB#3:                                 # %land.lhs.true
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_8
# BB#4:                                 # %if.then.3
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB0_16
# BB#5:                                 # %do.end
	leaq	12(%rsp), %r9
	movl	$.L.str, %esi
	xorl	%edx, %edx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_16
# BB#6:                                 # %if.end.13
	leaq	16(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	jle	.LBB0_16
# BB#7:                                 # %cleanup
	movslq	12(%rsp), %rax
	movq	%rax, 136(%rsp)
	xorl	%esi, %esi
	movq	16(%rsp), %rdi
	jmp	.LBB0_12
.LBB0_8:                                # %if.else
	movq	16(%rsp), %rdi
	movzbl	-15(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB0_9
# BB#10:                                # %if.end.32
	movq	-8(%rdi), %rcx
	movl	$-15, %eax
	testq	%rcx, %rcx
	js	.LBB0_16
# BB#11:                                # %if.end.38
	movq	%rcx, 136(%rsp)
	movl	$2, %esi
.LBB0_12:                               # %if.end.43
	movzwl	(%rdi), %r8d
	movl	%r8d, %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB0_13
# BB#15:                                # %if.end.58
	movq	8(%rdi), %rax
	movq	%rax, 144(%rsp)
	movl	4(%rdi), %eax
	movl	%eax, 152(%rsp)
	andl	$12, %r8d
	leaq	24(%rsp), %rcx
	movl	$s_SFD_template, %edx
	movq	%r14, %rdi
	callq	filter_read
	jmp	.LBB0_16
.LBB0_9:                                # %if.then.29
	addq	$-16, %rdi
	callq	check_type_failed
.LBB0_16:                               # %cleanup.67
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_13:                               # %if.then.50
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB0_16
# BB#14:                                # %cond.true
	callq	check_type_failed
	jmp	.LBB0_16
.Lfunc_end0:
	.size	zSFD, .Lfunc_end0-zSFD
	.cfi_endproc

	.globl	filter_read
	.align	16, 0x90
	.type	filter_read,@function
filter_read:                            # @filter_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 144
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	624(%rbp), %rbx
	movl	28(%rdx), %edi
	movl	56(%rbp), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	cmpl	$4, %r8d
	movl	$4, %r13d
	cmoval	%r8d, %r13d
	movslq	%esi, %rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rbx, %r12
	subq	%rdx, %r12
	negq	%rdx
	movl	$0, 60(%rsp)
	movzbl	1(%rbx,%rdx), %edx
	cmpl	$2, %edx
	jne	.LBB1_1
# BB#2:                                 # %do.body
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	negq	%rax
	shlq	$4, %rax
	movq	8(%rbx,%rax), %rax
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	$-7, %r14d
	testb	$32, (%rax)
	je	.LBB1_30
# BB#3:                                 # %do.end
	leaq	60(%rsp), %rcx
	movl	$.L.str.2, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	dict_bool_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_30
# BB#4:                                 # %if.end.10
	movb	-15(%r12), %dl
	addq	$-16, %r12
	jmp	.LBB1_5
.LBB1_1:
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
.LBB1_5:                                # %if.end.11
	leaq	8(%rbp), %rbx
	movzwl	(%r12), %eax
	movl	%eax, %r15d
	andl	$12, %r15d
	cmpl	%r15d, %r13d
	cmoval	%r13d, %r15d
	movzbl	%dl, %ecx
	cmpl	$3, %ecx
	jne	.LBB1_6
# BB#10:                                # %do.body.50
	movq	8(%r12), %rax
	movq	%rax, 64(%rsp)
	movzwl	264(%rax), %edx
	testl	%edx, %edx
	jne	.LBB1_14
# BB#11:                                # %do.body.50
	movl	4(%r12), %ecx
	cmpl	%ecx, %edx
	je	.LBB1_14
# BB#12:                                # %land.lhs.true
	movzwl	266(%rax), %eax
	cmpl	%ecx, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.67
	movq	%r12, %rdi
	callq	file_switch_to_read
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_30
.LBB1_14:                               # %do.end.79
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	movq	64(%rsp), %r15
.LBB1_19:                               # %ens
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	24(%r8), %eax
	movq	256(%r15), %rcx
	movq	(%rcx), %rcx
	movl	28(%rcx), %ecx
	cmpb	$0, 155(%r15)
	je	.LBB1_27
# BB#20:                                # %lor.lhs.false.i
	leal	1(%rax,%rcx), %esi
	cmpl	%esi, 144(%r15)
	jae	.LBB1_27
# BB#21:                                # %if.end.i
	movq	(%rbx), %rdi
	cmpq	$0, 136(%r15)
	je	.LBB1_22
# BB#24:                                # %if.else.i
	movl	60(%rsp), %r13d
	movq	%rdi, (%rsp)
	leaq	72(%rsp), %rdx
	movl	$.L.str.4, %edi
	movl	$s_filter_read_procs, %ecx
	movl	$s_Null1D_template, %r8d
	xorl	%r9d, %r9d
	callq	filter_open
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_29
# BB#25:                                # %if.end.33.i
	movq	80(%rsp), %rax
	movq	%r15, 240(%rax)
	movl	$2, 248(%rax)
	movl	%r13d, 288(%rax)
	movq	%rax, 64(%rsp)
	jmp	.LBB1_26
.LBB1_6:                                # %if.end.11
	cmpl	$18, %ecx
	jne	.LBB1_15
# BB#7:                                 # %do.body.30
	movl	$-7, %r14d
	testb	$32, %al
	je	.LBB1_30
# BB#8:                                 # %do.end.39
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	movq	(%rbx), %rdi
	movl	$.L.str.3, %esi
	callq	file_alloc_stream
	movq	%rax, 64(%rsp)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB1_29
# BB#9:                                 # %if.end.46
	movq	8(%r12), %rsi
	movl	4(%r12), %edx
	movq	%rax, %rdi
	callq	sread_string
	movq	64(%rsp), %rax
	movl	$1, 248(%rax)
	jmp	.LBB1_26
.LBB1_15:                               # %do.body.81
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB1_16
# BB#17:                                # %do.end.92
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	movq	(%rbx), %rdx
	leaq	64(%rsp), %rsi
	movq	%r12, %rdi
	callq	sread_proc
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_29
# BB#18:                                # %if.end.100
	movq	64(%rsp), %r15
	movl	$2, 248(%r15)
	jmp	.LBB1_19
.LBB1_16:                               # %if.then.88
	movq	%r12, %rdi
	callq	check_proc_failed
	movl	%eax, %r14d
	jmp	.LBB1_30
.LBB1_22:                               # %if.then.6.i
	cmpl	$128, %esi
	movl	$128, %r13d
	cmoval	%esi, %r13d
	movl	$.L.str.20, %edx
	movl	%r13d, %esi
	callq	*64(%rdi)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB1_29
# BB#23:                                # %if.end.12.i
	movq	%rax, 136(%r15)
	leaq	-1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movq	%rcx, 112(%r15)
	movl	%r13d, %ecx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 128(%r15)
	movl	%r13d, 148(%r15)
	movl	%r13d, 144(%r15)
.LBB1_26:                               # %filter_ensure_buf.exit.thread
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB1_27:                               # %sw.epilog
	movl	28(%rsp), %esi          # 4-byte Reload
	incl	%esi
	cmpl	$128, %esi
	cmovbl	file_default_buffer_size(%rip), %esi
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movl	$.L.str.4, %edi
	movl	$s_filter_read_procs, %ecx
	movq	%r12, %rdx
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	filter_open
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_29
# BB#28:                                # %if.end.122
	movq	8(%r12), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, 240(%rax)
	movl	60(%rsp), %ecx
	movl	%ecx, 288(%rax)
	movq	16(%rsp), %rax          # 8-byte Reload
	subq	%r12, %rax
	subq	%rax, 624(%rbp)
.LBB1_29:                               # %out
	movq	%rbx, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
.LBB1_30:                               # %cleanup.131
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	filter_read, .Lfunc_end1-filter_read
	.cfi_endproc

	.globl	filter_read_simple
	.align	16, 0x90
	.type	filter_read_simple,@function
filter_read_simple:                     # @filter_read_simple
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	jmp	filter_read             # TAILCALL
.Lfunc_end2:
	.size	filter_read_simple, .Lfunc_end2-filter_read_simple
	.cfi_endproc

	.globl	filter_write
	.align	16, 0x90
	.type	filter_write,@function
filter_write:                           # @filter_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 128
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	624(%rdi), %r12
	movl	24(%rdx), %ebx
	movl	56(%rdi), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	cmpl	$4, %r8d
	movl	$4, %r13d
	cmoval	%r8d, %r13d
	movslq	%esi, %rax
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%r12, %rbp
	subq	%rdx, %rbp
	negq	%rdx
	movl	$0, 44(%rsp)
	movzbl	1(%r12,%rdx), %edx
	cmpl	$2, %edx
	jne	.LBB3_1
# BB#2:                                 # %do.body
	movq	%rdi, %r15
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	negq	%rax
	shlq	$4, %rax
	movq	8(%r12,%rax), %rax
	movl	$-7, %r14d
	testb	$32, (%rax)
	je	.LBB3_29
# BB#3:                                 # %do.end
	leaq	44(%rsp), %rcx
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	dict_bool_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_29
# BB#4:                                 # %if.end.10
	movb	-15(%rbp), %dl
	addq	$-16, %rbp
	movq	%r15, %rdi
	jmp	.LBB3_5
.LBB3_1:
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
.LBB3_5:                                # %if.end.11
	leaq	8(%rdi), %rbx
	movzwl	(%rbp), %eax
	movl	%eax, %r15d
	andl	$12, %r15d
	cmpl	%r15d, %r13d
	cmoval	%r13d, %r15d
	movzbl	%dl, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_6
# BB#10:                                # %do.body.50
	movq	%rdi, %r13
	movq	8(%rbp), %rax
	movq	%rax, 48(%rsp)
	movzwl	266(%rax), %eax
	cmpl	4(%rbp), %eax
	je	.LBB3_12
# BB#11:                                # %if.then.57
	movq	%rbp, %rdi
	callq	file_switch_to_write
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_29
.LBB3_12:                               # %do.end.65
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	movq	48(%rsp), %r15
.LBB3_17:                               # %ens
	movq	32(%rsp), %r8           # 8-byte Reload
	movl	28(%r8), %eax
	movq	256(%r15), %rcx
	movq	(%rcx), %rcx
	movl	24(%rcx), %ecx
	cmpb	$0, 155(%r15)
	je	.LBB3_25
# BB#18:                                # %lor.lhs.false.i
	leal	1(%rax,%rcx), %esi
	cmpl	%esi, 144(%r15)
	jae	.LBB3_25
# BB#19:                                # %if.end.i
	movq	(%rbx), %rdi
	cmpq	$0, 136(%r15)
	je	.LBB3_20
# BB#22:                                # %if.else.i
	movl	44(%rsp), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	%rdi, (%rsp)
	leaq	56(%rsp), %rdx
	movl	$.L.str.7, %edi
	movl	$s_filter_write_procs, %ecx
	movl	$s_NullE_template, %r8d
	xorl	%r9d, %r9d
	callq	filter_open
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_28
# BB#23:                                # %if.end.33.i
	movq	64(%rsp), %rax
	movq	%r15, 240(%rax)
	movl	$2, 248(%rax)
	movl	16(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 288(%rax)
	movq	%rax, 48(%rsp)
	jmp	.LBB3_24
.LBB3_6:                                # %if.end.11
	cmpl	$18, %ecx
	jne	.LBB3_13
# BB#7:                                 # %do.body.30
	movq	%rdi, %r13
	movl	$-7, %r14d
	testb	$16, %al
	je	.LBB3_29
# BB#8:                                 # %do.end.39
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	movq	(%rbx), %rdi
	movl	$.L.str.6, %esi
	callq	file_alloc_stream
	movq	%rax, 48(%rsp)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB3_28
# BB#9:                                 # %if.end.46
	movq	8(%rbp), %rsi
	movl	4(%rbp), %edx
	movq	%rax, %rdi
	callq	swrite_string
	movq	48(%rsp), %rax
	movl	$1, 248(%rax)
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	jmp	.LBB3_26
.LBB3_13:                               # %do.body.67
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB3_14
# BB#15:                                # %do.end.78
	movq	%rdi, %r13
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	movq	(%rbx), %rdx
	leaq	48(%rsp), %rsi
	movq	%rbp, %rdi
	callq	swrite_proc
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_28
# BB#16:                                # %if.end.86
	movq	48(%rsp), %r15
	movl	$2, 248(%r15)
	jmp	.LBB3_17
.LBB3_14:                               # %if.then.74
	movq	%rbp, %rdi
	callq	check_proc_failed
	movl	%eax, %r14d
	jmp	.LBB3_29
.LBB3_20:                               # %if.then.6.i
	cmpl	$128, %esi
	movl	$128, %eax
	cmoval	%esi, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	$.L.str.20, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB3_28
# BB#21:                                # %if.end.12.i
	movq	%rax, 136(%r15)
	leaq	-1(%rax), %rcx
	movq	%rcx, 120(%r15)
	movq	%rcx, 112(%r15)
	movl	16(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 128(%r15)
	movl	%edx, 148(%r15)
	movl	%edx, 144(%r15)
.LBB3_24:                               # %filter_ensure_buf.exit.thread
	movq	32(%rsp), %r8           # 8-byte Reload
.LBB3_25:                               # %filter_ensure_buf.exit.thread
	movq	24(%rsp), %r9           # 8-byte Reload
.LBB3_26:                               # %sw.epilog
	movl	20(%rsp), %esi          # 4-byte Reload
	incl	%esi
	cmpl	$128, %esi
	cmovbl	file_default_buffer_size(%rip), %esi
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movl	$.L.str.7, %edi
	movl	$s_filter_write_procs, %ecx
	movq	%rbp, %rdx
	callq	filter_open
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB3_28
# BB#27:                                # %if.end.108
	movq	8(%rbp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, 240(%rax)
	movl	44(%rsp), %ecx
	movl	%ecx, 288(%rax)
	subq	%rbp, %r12
	subq	%r12, 624(%r13)
.LBB3_28:                               # %out
	movq	%rbx, %rdi
	movl	40(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
.LBB3_29:                               # %cleanup.117
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	filter_write, .Lfunc_end3-filter_write
	.cfi_endproc

	.globl	filter_write_simple
	.align	16, 0x90
	.type	filter_write_simple,@function
filter_write_simple:                    # @filter_write_simple
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %rdx
	jmp	filter_write            # TAILCALL
.Lfunc_end4:
	.size	filter_write_simple, .Lfunc_end4-filter_write_simple
	.cfi_endproc

	.globl	filter_mark_temp
	.align	16, 0x90
	.type	filter_mark_temp,@function
filter_mark_temp:                       # @filter_mark_temp
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movl	%esi, 248(%rax)
	retq
.Lfunc_end5:
	.size	filter_mark_temp, .Lfunc_end5-filter_mark_temp
	.cfi_endproc

	.globl	filter_mark_strm_temp
	.align	16, 0x90
	.type	filter_mark_strm_temp,@function
filter_mark_strm_temp:                  # @filter_mark_strm_temp
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	movq	240(%rax), %rcx
	movl	%esi, 248(%rcx)
	movl	288(%rcx), %ecx
	movl	%ecx, 288(%rax)
	retq
.Lfunc_end6:
	.size	filter_mark_strm_temp, .Lfunc_end6-filter_mark_strm_temp
	.cfi_endproc

	.align	16, 0x90
	.type	zPSSE,@function
zPSSE:                                  # @zPSSE
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$s_PSSE_template, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	filter_write            # TAILCALL
.Lfunc_end7:
	.size	zPSSE, .Lfunc_end7-zPSSE
	.cfi_endproc

	.align	16, 0x90
	.type	zAXE,@function
zAXE:                                   # @zAXE
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$s_AXE_template, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	filter_write            # TAILCALL
.Lfunc_end8:
	.size	zAXE, .Lfunc_end8-zAXE
	.cfi_endproc

	.align	16, 0x90
	.type	zAXD,@function
zAXD:                                   # @zAXD
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$s_AXD_template, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	filter_read             # TAILCALL
.Lfunc_end9:
	.size	zAXD, .Lfunc_end9-zAXD
	.cfi_endproc

	.align	16, 0x90
	.type	zNullE,@function
zNullE:                                 # @zNullE
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$s_NullE_template, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	filter_write            # TAILCALL
.Lfunc_end10:
	.size	zNullE, .Lfunc_end10-zNullE
	.cfi_endproc

	.align	16, 0x90
	.type	zPFBD,@function
zPFBD:                                  # @zPFBD
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$136, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 144
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB11_1
# BB#2:                                 # %if.end
	movzwl	8(%rax), %eax
	movl	%eax, 116(%rsp)
	leaq	8(%rsp), %rcx
	movl	$1, %esi
	movl	$s_PFBD_template, %edx
	xorl	%r8d, %r8d
	callq	filter_read
	addq	$136, %rsp
	retq
.LBB11_1:                               # %if.then
	movq	%rax, %rdi
	callq	check_type_failed
	addq	$136, %rsp
	retq
.Lfunc_end11:
	.size	zPFBD, .Lfunc_end11-zPFBD
	.cfi_endproc

	.align	16, 0x90
	.type	zRLE,@function
zRLE:                                   # @zRLE
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 160
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	632(%r14), %rcx
	addq	$16, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB12_9
# BB#1:                                 # %if.end
	movzbl	-15(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB12_4
# BB#2:                                 # %if.then.i
	movq	-8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB12_9
# BB#3:                                 # %do.end.i
	leaq	-16(%rbx), %rdi
	leaq	108(%rsp), %rcx
	movl	$.L.str.21, %esi
	movl	$1, %edx
	callq	dict_bool_param
	testl	%eax, %eax
	jns	.LBB12_5
	jmp	.LBB12_9
.LBB12_4:                               # %if.else.i
	movl	$1, 108(%rsp)
.LBB12_5:                               # %do.body
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB12_6
# BB#7:                                 # %if.end.11
	movq	8(%rbx), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	$-15, %eax
	jne	.LBB12_9
# BB#8:                                 # %do.end
	movq	%rcx, 112(%rsp)
	leaq	(%rsp), %rcx
	movl	$1, %esi
	movl	$s_RLE_template, %edx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	filter_write
	jmp	.LBB12_9
.LBB12_6:                               # %if.then.9
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB12_9:                               # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	zRLE, .Lfunc_end12-zRLE
	.cfi_endproc

	.align	16, 0x90
	.type	zRLD,@function
zRLD:                                   # @zRLD
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 144
.Ltmp39:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB13_3
# BB#1:                                 # %if.then.i
	movq	8(%rdi), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB13_5
# BB#2:                                 # %do.end.i
	leaq	116(%rsp), %rcx
	movl	$.L.str.21, %esi
	movl	$1, %edx
	callq	dict_bool_param
	testl	%eax, %eax
	jns	.LBB13_4
	jmp	.LBB13_5
.LBB13_3:                               # %if.else.i
	movl	$1, 116(%rsp)
.LBB13_4:                               # %if.end
	leaq	8(%rsp), %rcx
	xorl	%esi, %esi
	movl	$s_RLD_template, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	filter_read
.LBB13_5:                               # %cleanup
	addq	$128, %rsp
	popq	%rbx
	retq
.Lfunc_end13:
	.size	zRLD, .Lfunc_end13-zRLD
	.cfi_endproc

	.align	16, 0x90
	.type	zEOFD,@function
zEOFD:                                  # @zEOFD
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$s_EOFD_template, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	filter_read             # TAILCALL
.Lfunc_end14:
	.size	zEOFD, .Lfunc_end14-zEOFD
	.cfi_endproc

	.align	16, 0x90
	.type	s_Null1D_process,@function
s_Null1D_process:                       # @s_Null1D_process
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	cmpq	8(%rsi), %rcx
	jae	.LBB15_3
# BB#1:                                 # %if.end
	movq	8(%rdx), %r8
	movl	$1, %eax
	cmpq	16(%rdx), %r8
	jae	.LBB15_3
# BB#2:                                 # %if.end.5
	leaq	1(%rcx), %rdi
	movq	%rdi, (%rsi)
	movb	1(%rcx), %cl
	leaq	1(%r8), %rsi
	movq	%rsi, 8(%rdx)
	movb	%cl, 1(%r8)
.LBB15_3:                               # %return
	retq
.Lfunc_end15:
	.size	s_Null1D_process, .Lfunc_end15-s_Null1D_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_EOFD_process,@function
s_EOFD_process:                         # @s_EOFD_process
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end16:
	.size	s_EOFD_process, .Lfunc_end16-s_EOFD_process
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"EODCount"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"EODString"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"CloseSource"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"filter_read(string stream)"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"CloseTarget"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"filter_write(string)"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"w"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.psstringencode"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"2.subfiledecode"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"filterdict"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1ASCIIHexEncode"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1ASCIIHexDecode"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1NullEncode"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"2PFBDecode"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1PSStringEncode"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2RunLengthEncode"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1RunLengthDecode"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"3SubFileDecode"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1.EOFDecode"
	.size	.L.str.19, 12

	.type	zfilter_op_defs,@object # @zfilter_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfilter_op_defs
	.align	16
zfilter_op_defs:
	.quad	.L.str.8
	.quad	zPSSE
	.quad	.L.str.9
	.quad	zSFD
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.11
	.quad	zAXE
	.quad	.L.str.12
	.quad	zAXD
	.quad	.L.str.13
	.quad	zNullE
	.quad	.L.str.14
	.quad	zPFBD
	.quad	.L.str.15
	.quad	zPSSE
	.quad	.L.str.16
	.quad	zRLE
	.quad	.L.str.17
	.quad	zRLD
	.quad	.L.str.18
	.quad	zSFD
	.quad	.L.str.19
	.quad	zEOFD
	.zero	16
	.size	zfilter_op_defs, 208

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"filter_ensure_buf"
	.size	.L.str.20, 18

	.type	s_Null1D_template,@object # @s_Null1D_template
	.section	.rodata,"a",@progbits
	.align	8
s_Null1D_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_Null1D_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_Null1D_template, 56

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"EndOfData"
	.size	.L.str.21, 10

	.type	s_EOFD_template,@object # @s_EOFD_template
	.section	.rodata,"a",@progbits
	.align	8
s_EOFD_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_EOFD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_EOFD_template, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
