	.text
	.file	"zfproc.bc"
	.globl	sread_proc
	.align	16, 0x90
	.type	sread_proc,@function
sread_proc:                             # @sread_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	file_alloc_stream
	movq	%rax, %r13
	movl	$st_sproc_state, %esi
	movl	$.L.str.3, %edx
	movq	%r12, %rdi
	callq	s_alloc_state
	movq	%rax, %rbx
	testq	%r13, %r13
	je	.LBB0_2
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#3:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$s_proc_read_procs, %ecx
	movl	$1, %r8d
	movq	%r13, %rdi
	callq	s_std_init
	movq	$s_proc_read_process, 224(%r13)
	movq	$s_proc_read_template, (%rbx)
	movq	%r12, 8(%rbx)
	movl	$0, 108(%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, 120(%rbx)
	movq	$0, 144(%rbx)
	movw	$4720, 136(%rbx)        # imm = 0x1270
	movl	$0, 140(%rbx)
	movl	$0, 112(%rbx)
	movq	%rbx, 256(%r13)
	movq	%r13, (%r14)
	movw	$-4, 152(%r13)
	jmp	.LBB0_4
.LBB0_2:                                # %s_proc_init.exit.thread
	movl	$.L.str.3, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
	movl	$-25, %ebp
.LBB0_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sread_proc, .Lfunc_end0-sread_proc
	.cfi_endproc

	.globl	s_handle_read_exception
	.align	16, 0x90
	.type	s_handle_read_exception,@function
s_handle_read_exception:                # @s_handle_read_exception
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r13d
	movq	%rdx, %r12
	cmpl	$-4, %esi
	jne	.LBB1_1
# BB#7:                                 # %sw.epilog
	leal	4(%r13), %esi
	movq	8(%r12), %rax
	.align	16, 0x90
.LBB1_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movq	240(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB1_8
# BB#9:                                 # %for.end
	movq	536(%rdi), %rax
	movslq	%esi, %r15
	shlq	$4, %r15
	subq	%r15, %rax
	cmpq	%rax, 520(%rdi)
	leaq	520(%rdi), %rbx
	jbe	.LBB1_11
# BB#10:                                # %if.then
	movq	%rbx, %rdi
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	%rcx, %r14
	callq	ref_stack_extend
	movq	%r14, %rcx
	movq	(%rsp), %r14            # 8-byte Reload
	testl	%eax, %eax
	js	.LBB1_15
.LBB1_11:                               # %if.end.10
	testl	%r13d, %r13d
	je	.LBB1_13
# BB#12:                                # %if.then.11
	movq	(%rbx), %rdi
	addq	$32, %rdi
	movslq	%r13d, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rsi
	callq	memcpy
.LBB1_13:                               # %if.end.17
	movq	(%rbx), %rax
	movq	%r14, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	leaq	(%rax,%r15), %rcx
	movq	%rcx, (%rbx)
	movq	$s_proc_read_continue, -24(%rax,%r15)
	movq	(%rbx), %rax
	movw	$3968, -32(%rax)        # imm = 0xF80
	movl	$0, -28(%rax)
	movups	(%r12), %xmm0
	movups	%xmm0, -16(%rax)
	movq	(%rbx), %rax
	andw	$-129, -16(%rax)
	movq	256(%rbp), %rcx
	movups	120(%rcx), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB1_14
.LBB1_1:                                # %entry
	movl	$-12, %eax
	cmpl	$-3, %esi
	jne	.LBB1_15
# BB#2:                                 # %sw.bb
	leal	2(%r13), %esi
	movq	536(%rdi), %rax
	movslq	%esi, %rdx
	shlq	$4, %rdx
	subq	%rdx, %rax
	cmpq	%rax, 520(%rdi)
	leaq	520(%rdi), %rbx
	jbe	.LBB1_4
# BB#3:                                 # %if.then.i
	movq	%rbx, %rdi
	movq	%rcx, %rbp
	callq	ref_stack_extend
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB1_15
.LBB1_4:                                # %if.end.7.i
	testl	%r13d, %r13d
	je	.LBB1_6
# BB#5:                                 # %if.then.8.i
	movq	(%rbx), %rdi
	addq	$32, %rdi
	movslq	%r13d, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rsi
	callq	memcpy
.LBB1_6:                                # %if.end.14.i
	incl	%r13d
	movq	(%rbx), %rax
	movq	%r14, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	movslq	%r13d, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	%rcx, (%rbx)
.LBB1_14:                               # %cleanup.69
	movl	$5, %eax
.LBB1_15:                               # %cleanup.69
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_handle_read_exception, .Lfunc_end1-s_handle_read_exception
	.cfi_endproc

	.align	16, 0x90
	.type	s_proc_read_continue,@function
s_proc_read_continue:                   # @s_proc_read_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rdx
	movzbl	1(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB2_10
# BB#1:                                 # %if.end
	movq	8(%rdx), %rsi
	movw	266(%rsi), %ax
	orw	264(%rsi), %ax
	movzwl	%ax, %ecx
	movl	$-7, %eax
	cmpl	4(%rdx), %ecx
	jne	.LBB2_9
# BB#2:                                 # %do.end
	leaq	-16(%rdx), %r8
	movzwl	(%r8), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$4640, %ecx             # imm = 0x1220
	jne	.LBB2_3
	.align	16, 0x90
.LBB2_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	movw	$0, 152(%rax)
	movq	240(%rax), %rsi
	testq	%rsi, %rsi
	jne	.LBB2_5
# BB#6:                                 # %while.end
	movq	256(%rax), %rax
	movups	(%r8), %xmm0
	movups	%xmm0, 136(%rax)
	movl	$0, 112(%rax)
	cmpl	$0, -12(%rdx)
	jne	.LBB2_8
# BB#7:                                 # %if.then.30
	movl	$1, 108(%rax)
.LBB2_8:                                # %if.end.31
	addq	$-32, 624(%rdi)
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_10:                               # %if.then
	movq	%rdx, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB2_3:                                # %if.then.14
	movzbl	1(%r8), %ecx
	cmpl	$18, %ecx
	jne	.LBB2_4
.LBB2_9:                                # %cleanup
	retq
.LBB2_4:                                # %cond.true
	movq	%r8, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end2:
	.size	s_proc_read_continue, .Lfunc_end2-s_proc_read_continue
	.cfi_endproc

	.globl	swrite_proc
	.align	16, 0x90
	.type	swrite_proc,@function
swrite_proc:                            # @swrite_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 64
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	file_alloc_stream
	movq	%rax, %r12
	movl	$st_sproc_state, %esi
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	callq	s_alloc_state
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.LBB3_2
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#3:                                 # %if.end.i
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$s_proc_write_procs, %ecx
	movl	$2, %r8d
	movq	%r12, %rdi
	callq	s_std_init
	movq	$s_proc_write_process, 224(%r12)
	movq	$s_proc_write_template, (%rbx)
	movq	%r13, 8(%rbx)
	movl	$0, 108(%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, 120(%rbx)
	movq	$0, 144(%rbx)
	movw	$4720, 136(%rbx)        # imm = 0x1270
	movl	$0, 140(%rbx)
	movl	$0, 112(%rbx)
	movq	%rbx, 256(%r12)
	movq	%r12, (%r14)
	jmp	.LBB3_4
.LBB3_2:                                # %if.then.i
	movl	$.L.str.3, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%r13)
	movl	$-25, %ebp
.LBB3_4:                                # %s_proc_init.exit
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	swrite_proc, .Lfunc_end3-swrite_proc
	.cfi_endproc

	.globl	s_handle_write_exception
	.align	16, 0x90
	.type	s_handle_write_exception,@function
s_handle_write_exception:               # @s_handle_write_exception
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 64
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r13d
	movq	%rdx, %r12
	cmpl	$-4, %esi
	jne	.LBB4_1
# BB#7:                                 # %sw.epilog
	movq	8(%r12), %rax
	.align	16, 0x90
.LBB4_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	movq	240(%rdx), %rax
	testq	%rax, %rax
	jne	.LBB4_8
# BB#9:                                 # %for.end
	movq	256(%rdx), %rbp
	leal	6(%r13), %esi
	movq	536(%rdi), %rax
	movslq	%esi, %r15
	shlq	$4, %r15
	subq	%r15, %rax
	cmpq	%rax, 520(%rdi)
	leaq	520(%rdi), %rbx
	jbe	.LBB4_11
# BB#10:                                # %if.then
	movq	%rbx, %rdi
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	%rcx, %r14
	callq	ref_stack_extend
	movq	%r14, %rcx
	movq	(%rsp), %r14            # 8-byte Reload
	testl	%eax, %eax
	js	.LBB4_15
.LBB4_11:                               # %if.end.10
	testl	%r13d, %r13d
	je	.LBB4_13
# BB#12:                                # %if.then.11
	movq	(%rbx), %rdi
	addq	$32, %rdi
	movslq	%r13d, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rsi
	callq	memcpy
.LBB4_13:                               # %cleanup.cont.81
	movq	(%rbx), %rax
	movq	%r14, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	leaq	(%rax,%r15), %rcx
	movq	%rcx, (%rbx)
	movq	$s_proc_write_continue, -56(%rax,%r15)
	movq	(%rbx), %rax
	movw	$3968, -64(%rax)        # imm = 0xF80
	movl	$0, -60(%rax)
	movups	(%r12), %xmm0
	movups	%xmm0, -48(%rax)
	movq	(%rbx), %rax
	andw	$-129, -48(%rax)
	cmpl	$0, 108(%rbp)
	sete	%cl
	movzbl	%cl, %ecx
	movw	%cx, -8(%rax)
	movw	$256, -16(%rax)         # imm = 0x100
	movups	120(%rbp), %xmm0
	movups	%xmm0, -32(%rax)
	movq	(%rbx), %rax
	movups	136(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movl	112(%rbp), %eax
	movq	(%rbx), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB4_14
.LBB4_1:                                # %entry
	movl	$-12, %eax
	cmpl	$-3, %esi
	jne	.LBB4_15
# BB#2:                                 # %sw.bb
	leal	2(%r13), %esi
	movq	536(%rdi), %rax
	movslq	%esi, %rdx
	shlq	$4, %rdx
	subq	%rdx, %rax
	cmpq	%rax, 520(%rdi)
	leaq	520(%rdi), %rbx
	jbe	.LBB4_4
# BB#3:                                 # %if.then.i
	movq	%rbx, %rdi
	movq	%rcx, %rbp
	callq	ref_stack_extend
	movq	%rbp, %rcx
	testl	%eax, %eax
	js	.LBB4_15
.LBB4_4:                                # %if.end.7.i
	testl	%r13d, %r13d
	je	.LBB4_6
# BB#5:                                 # %if.then.8.i
	movq	(%rbx), %rdi
	addq	$32, %rdi
	movslq	%r13d, %rdx
	shlq	$4, %rdx
	movq	%rcx, %rsi
	callq	memcpy
.LBB4_6:                                # %if.end.14.i
	incl	%r13d
	movq	(%rbx), %rax
	movq	%r14, 24(%rax)
	movq	(%rbx), %rax
	movw	$3968, 16(%rax)         # imm = 0xF80
	movl	$0, 20(%rax)
	movslq	%r13d, %rcx
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	%rcx, (%rbx)
.LBB4_14:                               # %cleanup.94
	movl	$5, %eax
.LBB4_15:                               # %cleanup.94
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	s_handle_write_exception, .Lfunc_end4-s_handle_write_exception
	.cfi_endproc

	.align	16, 0x90
	.type	s_proc_write_continue,@function
s_proc_write_continue:                  # @s_proc_write_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rcx
	movq	624(%rcx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$3, %eax
	jne	.LBB5_9
# BB#1:                                 # %if.end
	movq	8(%rdi), %rdx
	movw	266(%rdx), %ax
	orw	264(%rdx), %ax
	movzwl	%ax, %esi
	movl	$-7, %eax
	cmpl	4(%rdi), %esi
	jne	.LBB5_7
# BB#2:                                 # %do.end
	addq	$-16, %rdi
	movzwl	(%rdi), %esi
	andl	$16144, %esi            # imm = 0x3F10
	cmpl	$4624, %esi             # imm = 0x1210
	je	.LBB5_3
# BB#8:                                 # %if.then.14
	movzbl	1(%rdi), %ecx
	cmpl	$18, %ecx
	je	.LBB5_7
.LBB5_9:                                # %if.then
	jmp	check_type_failed       # TAILCALL
	.align	16, 0x90
.LBB5_5:                                # %if.then.28
                                        #   in Loop: Header=BB5_3 Depth=1
	movw	$0, (%rax)
.LBB5_3:                                # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	240(%rdx), %rsi
	leaq	152(%rdx), %rax
	testq	%rsi, %rsi
	je	.LBB5_6
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rsi, %rdx
	movzwl	(%rax), %esi
	cmpl	$65532, %esi            # imm = 0xFFFC
	jne	.LBB5_3
	jmp	.LBB5_5
.LBB5_6:                                # %while.end
	movw	$0, (%rax)
	movq	256(%rdx), %rax
	movups	(%rdi), %xmm0
	movups	%xmm0, 136(%rax)
	movl	$0, 112(%rax)
	addq	$-32, 624(%rcx)
	xorl	%eax, %eax
.LBB5_7:                                # %cleanup
	retq
.Lfunc_end5:
	.size	s_proc_write_continue, .Lfunc_end5-s_proc_write_continue
	.cfi_endproc

	.globl	s_is_proc
	.align	16, 0x90
	.type	s_is_proc,@function
s_is_proc:                              # @s_is_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	224(%rdi), %rax
	movl	$s_proc_read_process, %ecx
	cmpq	%rcx, %rax
	sete	%cl
	movl	$s_proc_write_process, %edx
	cmpq	%rdx, %rax
	sete	%al
	orb	%cl, %al
	movzbl	%al, %eax
	retq
.Lfunc_end6:
	.size	s_is_proc, .Lfunc_end6-s_is_proc
	.cfi_endproc

	.align	16, 0x90
	.type	s_proc_read_process,@function
s_proc_read_process:                    # @s_proc_read_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 48
.Ltmp57:
	.cfi_offset %rbx, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	112(%rbx), %esi
	movl	140(%rbx), %eax
	subl	%esi, %eax
	jne	.LBB7_1
# BB#2:                                 # %if.end.13
	movl	$-1, %eax
	cmpl	$0, 108(%rbx)
	jne	.LBB7_4
# BB#3:                                 # %select.mid
	movl	$-4, %eax
	jmp	.LBB7_4
.LBB7_1:                                # %if.then
	movl	16(%r14), %ebp
	movq	8(%r14), %rdi
	subl	%edi, %ebp
	cmpl	%eax, %ebp
	cmovael	%eax, %ebp
	incq	%rdi
	addq	144(%rbx), %rsi
	movl	%ebp, %r15d
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, 8(%r14)
	addl	%ebp, 112(%rbx)
	movl	$1, %eax
.LBB7_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	s_proc_read_process, .Lfunc_end7-s_proc_read_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_proc_write_process,@function
s_proc_write_process:                   # @s_proc_write_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	8(%r15), %ebx
	movq	(%r15), %rsi
	subl	%esi, %ebx
	jne	.LBB8_3
# BB#1:                                 # %lor.lhs.false
	testl	%ecx, %ecx
	je	.LBB8_6
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 108(%r12)
	je	.LBB8_3
.LBB8_6:                                # %if.end
	movl	%ecx, 108(%r12)
	negl	%ecx
	sbbl	%eax, %eax
	jmp	.LBB8_7
.LBB8_3:                                # %if.then
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	112(%r12), %edi
	movl	140(%r12), %ebp
	subl	%edi, %ebp
	cmpl	%ebp, %ebx
	movl	%ebp, %r14d
	cmovbl	%ebx, %r14d
	addq	144(%r12), %rdi
	incq	%rsi
	movl	%r14d, %r13d
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, (%r15)
	addl	%r14d, 112(%r12)
	cmpl	%ebp, %ebx
	movl	$-4, %eax
	ja	.LBB8_7
# BB#4:                                 # %if.else
	xorl	%eax, %eax
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB8_7
# BB#5:                                 # %if.then.18
	movl	$1, 108(%r12)
	movl	$-4, %eax
.LBB8_7:                                # %cleanup.25
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	s_proc_write_process, .Lfunc_end8-s_proc_write_process
	.cfi_endproc

	.align	16, 0x90
	.type	sproc_clear_marks,@function
sproc_clear_marks:                      # @sproc_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-2, 120(%rsi)
	andb	$-2, 136(%rsi)
	retq
.Lfunc_end9:
	.size	sproc_clear_marks, .Lfunc_end9-sproc_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	sproc_enum_ptrs,@function
sproc_enum_ptrs:                        # @sproc_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB10_1
# BB#3:                                 # %sw.bb.1
	addq	$136, %rsi
	jmp	.LBB10_4
.LBB10_1:                               # %entry
	testl	%ecx, %ecx
	jne	.LBB10_5
# BB#2:                                 # %sw.bb
	addq	$120, %rsi
.LBB10_4:                               # %cleanup
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
.LBB10_5:                               # %cleanup
	retq
.Lfunc_end10:
	.size	sproc_enum_ptrs, .Lfunc_end10-sproc_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	sproc_reloc_ptrs,@function
sproc_reloc_ptrs:                       # @sproc_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 32
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	leaq	120(%rbx), %rdi
	leaq	136(%rbx), %r15
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 120(%rbx)
	movq	(%r14), %rax
	leaq	152(%rbx), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 136(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	sproc_reloc_ptrs, .Lfunc_end11-sproc_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	s_proc_set_defaults,@function
s_proc_set_defaults:                    # @s_proc_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movw	$3584, 120(%rdi)        # imm = 0xE00
	movw	$3584, 136(%rdi)        # imm = 0xE00
	retq
.Lfunc_end12:
	.size	s_proc_set_defaults, .Lfunc_end12-s_proc_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	s_proc_write_flush,@function
s_proc_write_flush:                     # @s_proc_write_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	s_process_write_buf
	testl	%eax, %eax
	js	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	movq	256(%rbx), %rdx
	movl	$-4, %ecx
	cmpl	$0, 112(%rdx)
	jne	.LBB13_3
.LBB13_2:                               # %cond.true
	movl	%eax, %ecx
.LBB13_3:                               # %cond.end
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	s_proc_write_flush, .Lfunc_end13-s_proc_write_flush
	.cfi_endproc

	.type	s_proc_read_template,@object # @s_proc_read_template
	.section	.rodata,"a",@progbits
	.align	8
s_proc_read_template:
	.quad	st_sproc_state
	.quad	0
	.quad	s_proc_read_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_proc_set_defaults
	.quad	0
	.size	s_proc_read_template, 56

	.type	s_proc_read_procs,@object # @s_proc_read_procs
	.align	8
s_proc_read_procs:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_read_reset
	.quad	s_std_read_flush
	.quad	s_std_null
	.quad	0
	.quad	0
	.size	s_proc_read_procs, 56

	.type	s_proc_write_template,@object # @s_proc_write_template
	.align	8
s_proc_write_template:
	.quad	st_sproc_state
	.quad	0
	.quad	s_proc_write_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_proc_set_defaults
	.quad	0
	.size	s_proc_write_template, 56

	.type	s_proc_write_procs,@object # @s_proc_write_procs
	.align	8
s_proc_write_procs:
	.quad	s_std_noavailable
	.quad	s_std_noseek
	.quad	s_std_write_reset
	.quad	s_proc_write_flush
	.quad	s_std_null
	.quad	0
	.quad	0
	.size	s_proc_write_procs, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2%s_proc_read_continue"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2%s_proc_write_continue"
	.size	.L.str.1, 24

	.type	zfproc_op_defs,@object  # @zfproc_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfproc_op_defs
	.align	16
zfproc_op_defs:
	.quad	.L.str
	.quad	s_proc_read_continue
	.quad	.L.str.1
	.quad	s_proc_write_continue
	.zero	16
	.size	zfproc_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"s_proc_init(stream)"
	.size	.L.str.2, 20

	.type	st_sproc_state,@object  # @st_sproc_state
	.section	.rodata,"a",@progbits
	.align	8
st_sproc_state:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	sproc_clear_marks
	.quad	sproc_enum_ptrs
	.quad	sproc_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_sproc_state, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"s_proc_init(state)"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"procedure stream state"
	.size	.L.str.4, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
