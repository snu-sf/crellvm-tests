	.text
	.file	"profiler.bc"
	.globl	Fprofiler_cpu_start
	.align	16, 0x90
	.type	Fprofiler_cpu_start,@function
Fprofiler_cpu_start:                    # @Fprofiler_cpu_start
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, profiler_cpu_running
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	movq	cpu_log, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_4
# BB#3:                                 # %if.then.1
	movq	$0, cpu_gc_count
	movq	globals+3232, %rdi
	movq	globals+3240, %rsi
	callq	make_log
	movq	%rax, cpu_log
.LBB0_4:                                # %if.end.3
	movq	-8(%rbp), %rdi
	callq	setup_cpu_timer
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.1, %rdi
	movl	$0, profiler_cpu_running
	movb	$0, %al
	callq	error
.LBB0_6:                                # %if.else
	movl	-12(%rbp), %eax
	movl	%eax, profiler_cpu_running
	cmpl	$0, profiler_cpu_running
	jne	.LBB0_8
# BB#7:                                 # %if.then.8
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	error
.LBB0_8:                                # %if.end.9
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.10
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Fprofiler_cpu_start, .Lfunc_end0-Fprofiler_cpu_start
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI1_1:
	.quad	4609434218613702656     # double 1.5
	.text
	.align	16, 0x90
	.type	make_log,@function
make_log:                               # @make_log
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
	subq	$144, %rsp
	movsd	.LCPI1_1, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	make_float
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	make_float
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$hashtest_profiler, %rsi
	movq	hashtest_profiler+32(%rip), %rcx
	movq	%rsp, %rdx
	movq	%rcx, 32(%rdx)
	movups	hashtest_profiler+16(%rip), %xmm0
	movups	%xmm0, 16(%rdx)
	movups	hashtest_profiler(%rip), %xmm0
	movups	%xmm0, (%rdx)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	make_hash_table
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XHASH_TABLE
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdi
	callq	ASIZE
	sarq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	jle	.LBB1_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	set_hash_key_slot
	jmp	.LBB1_1
.LBB1_3:                                # %while.end
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	make_log, .Lfunc_end1-make_log
	.cfi_endproc

	.align	16, 0x90
	.type	setup_cpu_timer,@function
setup_cpu_timer:                        # @setup_cpu_timer
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
	subq	$400, %rsp              # imm = 0x190
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rdi, -16(%rbp)
	movl	$1000000000, -220(%rbp) # imm = 0x3B9ACA00
	movq	-16(%rbp), %rsi
	movslq	-220(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	cqto
	idivq	%rdi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	jge	.LBB2_2
# BB#1:                                 # %cond.true
	movslq	-220(%rbp), %rax
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	imulq	%rcx, %rax
	movl	-220(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB2_5
# BB#4:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB2_20
.LBB2_5:                                # %if.end
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, current_sampling_interval
	movq	current_sampling_interval, %rax
	movslq	-220(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	current_sampling_interval, %rcx
	movslq	-220(%rbp), %rsi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rdx, %rsi
	callq	make_timespec
	leaq	-168(%rbp), %rdi
	movabsq	$deliver_profiler_signal, %rsi
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	emacs_sigaction_init
	movl	$27, %edi
	leaq	-168(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	callq	sigaction
	testb	$1, profiler_timer_ok
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jne	.LBB2_13
# BB#6:                                 # %if.then.9
	movabsq	$profiler_timer, %rax
	movq	%rax, -312(%rbp)
	movl	$27, -304(%rbp)
	movl	$0, -300(%rbp)
	movl	$0, -244(%rbp)
.LBB2_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-244(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB2_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	-312(%rbp), %rsi
	movabsq	$profiler_timer, %rdx
	movslq	-244(%rbp), %rax
	movl	setup_cpu_timer.system_clock(,%rax,4), %edi
	callq	timer_create
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.16
	movb	$1, profiler_timer_ok
	jmp	.LBB2_12
.LBB2_10:                               # %if.end.17
                                        #   in Loop: Header=BB2_7 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               # %for.inc
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-244(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB2_7
.LBB2_12:                               # %for.end
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.18
	testb	$1, profiler_timer_ok
	je	.LBB2_17
# BB#14:                                # %if.then.20
	xorl	%esi, %esi
	leaq	-344(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdi
	movq	%rdi, -344(%rbp)
	movq	-208(%rbp), %rdi
	movq	%rdi, -336(%rbp)
	movq	-344(%rbp), %rdi
	movq	%rdi, -328(%rbp)
	movq	-336(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movq	profiler_timer, %rdi
	callq	timer_settime
	cmpl	$0, %eax
	jne	.LBB2_16
# BB#15:                                # %if.then.24
	movl	$1, -4(%rbp)
	jmp	.LBB2_20
.LBB2_16:                               # %if.end.25
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.26
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	make_timeval
	movl	$2, %edi
	leaq	-200(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, -360(%rbp)
	movq	%rdx, -352(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	%r8, %rdx
	callq	setitimer
	cmpl	$0, %eax
	jne	.LBB2_19
# BB#18:                                # %if.then.34
	movl	$2, -4(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.end.35
	movl	$0, -4(%rbp)
.LBB2_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end2:
	.size	setup_cpu_timer, .Lfunc_end2-setup_cpu_timer
	.cfi_endproc

	.globl	Fprofiler_cpu_stop
	.align	16, 0x90
	.type	Fprofiler_cpu_stop,@function
Fprofiler_cpu_stop:                     # @Fprofiler_cpu_stop
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
	subq	$160, %rsp
	movl	profiler_cpu_running(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB3_1
	jmp	.LBB3_6
.LBB3_6:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB3_2
	jmp	.LBB3_7
.LBB3_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_3
	jmp	.LBB3_4
.LBB3_1:                                # %sw.bb
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %sw.bb.1
	xorl	%eax, %eax
	leaq	-40(%rbp), %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rcx, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	memset
	movq	profiler_timer, %rdi
	movl	-100(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	timer_settime
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %sw.bb.3
	movl	$2, %edi
	leaq	-72(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%esi, %esi
	movl	$32, %ecx
	movl	%ecx, %r8d
	movq	%rax, %r9
	movl	%edi, -120(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	memset
	movl	-120(%rbp), %edi        # 4-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	setitimer
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB3_4:                                # %sw.epilog
	movl	$27, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	signal
	movl	$901, %edi              # imm = 0x385
	movl	$0, profiler_cpu_running
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB3_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Fprofiler_cpu_stop, .Lfunc_end3-Fprofiler_cpu_stop
	.cfi_endproc

	.globl	Fprofiler_cpu_running_p
	.align	16, 0x90
	.type	Fprofiler_cpu_running_p,@function
Fprofiler_cpu_running_p:                # @Fprofiler_cpu_running_p
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
	cmpl	$0, profiler_cpu_running
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB4_3:                                # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fprofiler_cpu_running_p, .Lfunc_end4-Fprofiler_cpu_running_p
	.cfi_endproc

	.globl	Fprofiler_cpu_log
	.align	16, 0x90
	.type	Fprofiler_cpu_log,@function
Fprofiler_cpu_log:                      # @Fprofiler_cpu_log
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
	subq	$32, %rsp
	movq	cpu_log, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, profiler_cpu_running
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movq	globals+3232, %rdi
	movq	globals+3240, %rsi
	callq	make_log
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB5_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	$192, %edi
	movq	%rax, cpu_log
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	cpu_gc_count, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	Fputhash
	movq	$0, cpu_gc_count
	movq	-8(%rbp), %rdx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fprofiler_cpu_log, .Lfunc_end5-Fprofiler_cpu_log
	.cfi_endproc

	.globl	Fprofiler_memory_start
	.align	16, 0x90
	.type	Fprofiler_memory_start,@function
Fprofiler_memory_start:                 # @Fprofiler_memory_start
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
	subq	$16, %rsp
	testb	$1, profiler_memory_running
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	error
.LBB6_2:                                # %if.end
	xorl	%edi, %edi
	movq	memory_log, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_4
# BB#3:                                 # %if.then.1
	movq	globals+3232, %rdi
	movq	globals+3240, %rsi
	callq	make_log
	movq	%rax, memory_log
.LBB6_4:                                # %if.end.3
	movl	$901, %edi              # imm = 0x385
	movb	$1, profiler_memory_running
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fprofiler_memory_start, .Lfunc_end6-Fprofiler_memory_start
	.cfi_endproc

	.globl	Fprofiler_memory_stop
	.align	16, 0x90
	.type	Fprofiler_memory_stop,@function
Fprofiler_memory_stop:                  # @Fprofiler_memory_stop
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
	testb	$1, profiler_memory_running
	jne	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$901, %edi              # imm = 0x385
	movb	$0, profiler_memory_running
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fprofiler_memory_stop, .Lfunc_end7-Fprofiler_memory_stop
	.cfi_endproc

	.globl	Fprofiler_memory_running_p
	.align	16, 0x90
	.type	Fprofiler_memory_running_p,@function
Fprofiler_memory_running_p:             # @Fprofiler_memory_running_p
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
	testb	$1, profiler_memory_running
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fprofiler_memory_running_p, .Lfunc_end8-Fprofiler_memory_running_p
	.cfi_endproc

	.globl	Fprofiler_memory_log
	.align	16, 0x90
	.type	Fprofiler_memory_log,@function
Fprofiler_memory_log:                   # @Fprofiler_memory_log
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
	movq	memory_log, %rax
	movq	%rax, -8(%rbp)
	testb	$1, profiler_memory_running
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movq	globals+3232, %rdi
	movq	globals+3240, %rsi
	callq	make_log
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, memory_log
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fprofiler_memory_log, .Lfunc_end9-Fprofiler_memory_log
	.cfi_endproc

	.globl	malloc_probe
	.align	16, 0x90
	.type	malloc_probe,@function
malloc_probe:                           # @malloc_probe
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
	movq	memory_log, %rdi
	callq	XHASH_TABLE
	movabsq	$2305843009213693951, %rdi # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jae	.LBB10_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB10_3
.LBB10_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	record_backtrace
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	malloc_probe, .Lfunc_end10-malloc_probe
	.cfi_endproc

	.align	16, 0x90
	.type	record_backtrace,@function
record_backtrace:                       # @record_backtrace
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	evict_lower_half
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	HASH_KEY
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	get_backtrace
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	hash_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jl	.LBB11_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	HASH_VALUE
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	saturated_add
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	set_hash_value_slot
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	callq	hash_put
	movq	%rax, -72(%rbp)
.LBB11_5:                               # %if.end.15
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	record_backtrace, .Lfunc_end11-record_backtrace
	.cfi_endproc

	.globl	Ffunction_equal
	.align	16, 0x90
	.type	Ffunction_equal,@function
Ffunction_equal:                        # @Ffunction_equal
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movb	$1, -17(%rbp)
	jmp	.LBB12_15
.LBB12_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB12_3
	jmp	.LBB12_5
.LBB12_3:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_5
.LBB12_4:                               # %if.then.2
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	AREF
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%dl
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB12_14
.LBB12_5:                               # %if.else.6
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_12
# BB#6:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_12
# BB#7:                                 # %land.lhs.true.14
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_12
# BB#8:                                 # %land.lhs.true.19
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_12
# BB#9:                                 # %land.lhs.true.27
	movl	$271, %edi              # imm = 0x10F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB12_12
# BB#10:                                # %land.lhs.true.32
	movl	$271, %edi              # imm = 0x10F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB12_12
# BB#11:                                # %if.then.38
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	cmpq	8(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movb	%dl, -17(%rbp)
	jmp	.LBB12_13
.LBB12_12:                              # %if.else.54
	movb	$0, -17(%rbp)
.LBB12_13:                              # %if.end
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.55
	jmp	.LBB12_15
.LBB12_15:                              # %if.end.56
	testb	$1, -17(%rbp)
	je	.LBB12_17
# BB#16:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB12_18
.LBB12_17:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB12_18:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Ffunction_equal, .Lfunc_end12-Ffunction_equal
	.cfi_endproc

	.globl	syms_of_profiler
	.align	16, 0x90
	.type	syms_of_profiler,@function
syms_of_profiler:                       # @syms_of_profiler
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
	jmp	.LBB13_1
.LBB13_1:                               # %do.body
	movabsq	$syms_of_profiler.i_fwd, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$3240, %rax             # imm = 0xCA8
	movq	%rax, %rdx
	callq	defvar_int
# BB#2:                                 # %do.end
	movq	$16, globals+3240
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_profiler.i_fwd.5, %rdi
	movabsq	$.L.str.6, %rsi
	movabsq	$globals, %rax
	addq	$3232, %rax             # imm = 0xCA0
	movq	%rax, %rdx
	callq	defvar_int
# BB#4:                                 # %do.end.2
	movl	$776, %edi              # imm = 0x308
	movq	$10000, globals+3232    # imm = 0x2710
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_profiler
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, hashtest_profiler+8
	callq	builtin_lisp_symbol
	movabsq	$Sfunction_equal, %rcx
	movabsq	$hashfn_profiler, %rdx
	movabsq	$cmpfn_profiler, %rsi
	movq	%rax, hashtest_profiler+16
	movq	%rsi, hashtest_profiler+24
	movq	%rdx, hashtest_profiler+32
	movq	%rcx, %rdi
	callq	defsubr
	xorl	%edi, %edi
	movl	$0, profiler_cpu_running
	callq	builtin_lisp_symbol
	movabsq	$cpu_log, %rdi
	movq	%rax, cpu_log
	callq	staticpro
	movabsq	$Sprofiler_cpu_start, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprofiler_cpu_stop, %rdi
	callq	defsubr
	movabsq	$Sprofiler_cpu_running_p, %rdi
	callq	defsubr
	movabsq	$Sprofiler_cpu_log, %rdi
	callq	defsubr
	xorl	%edi, %edi
	movb	$0, profiler_memory_running
	callq	builtin_lisp_symbol
	movabsq	$memory_log, %rdi
	movq	%rax, memory_log
	callq	staticpro
	movabsq	$Sprofiler_memory_start, %rdi
	callq	defsubr
	movabsq	$Sprofiler_memory_stop, %rdi
	callq	defsubr
	movabsq	$Sprofiler_memory_running_p, %rdi
	callq	defsubr
	movabsq	$Sprofiler_memory_log, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end13:
	.size	syms_of_profiler, .Lfunc_end13-syms_of_profiler
	.cfi_endproc

	.align	16, 0x90
	.type	cmpfn_profiler,@function
cmpfn_profiler:                         # @cmpfn_profiler
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_11
.LBB14_1:                               # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB14_2
	jmp	.LBB14_11
.LBB14_2:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB14_4
# BB#3:                                 # %if.then.4
	movb	$0, -1(%rbp)
	jmp	.LBB14_12
.LBB14_4:                               # %if.end
	movq	$0, -40(%rbp)
.LBB14_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB14_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	AREF
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	AREF
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffunction_equal
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_8
# BB#7:                                 # %if.then.11
	movb	$0, -1(%rbp)
	jmp	.LBB14_12
.LBB14_8:                               # %if.end.12
                                        #   in Loop: Header=BB14_5 Depth=1
	jmp	.LBB14_9
.LBB14_9:                               # %for.inc
                                        #   in Loop: Header=BB14_5 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_5
.LBB14_10:                              # %for.end
	movb	$1, -1(%rbp)
	jmp	.LBB14_12
.LBB14_11:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.LBB14_12:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	cmpfn_profiler, .Lfunc_end14-cmpfn_profiler
	.cfi_endproc

	.align	16, 0x90
	.type	hashfn_profiler,@function
hashfn_profiler:                        # @hashfn_profiler
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_14
.LBB15_1:                               # %if.then
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB15_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	COMPILEDP
	testb	$1, %al
	jne	.LBB15_4
	jmp	.LBB15_5
.LBB15_4:                               # %cond.true
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	XUINT
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB15_11
.LBB15_5:                               # %cond.false
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_9
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	$271, %edi              # imm = 0x10F
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB15_9
# BB#8:                                 # %cond.true.17
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XUINT
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false.25
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-56(%rbp), %rdi
	callq	XUINT
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB15_10:                              # %cond.end
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB15_11:                              # %cond.end.27
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	sxhash_combine
	movq	%rax, -32(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB15_2
.LBB15_13:                              # %for.end
	movq	-32(%rbp), %rdi
	callq	SXHASH_REDUCE
	movq	%rax, -8(%rbp)
	jmp	.LBB15_15
.LBB15_14:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	XUINT
	movq	%rax, -8(%rbp)
.LBB15_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	hashfn_profiler, .Lfunc_end15-hashfn_profiler
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_profiler_signal,@function
deliver_profiler_signal:                # @deliver_profiler_signal
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
	subq	$16, %rsp
	movabsq	$handle_profiler_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	deliver_profiler_signal, .Lfunc_end16-deliver_profiler_signal
	.cfi_endproc

	.align	16, 0x90
	.type	handle_profiler_signal,@function
handle_profiler_signal:                 # @handle_profiler_signal
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	callq	backtrace_top_function
	movl	$192, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	cpu_gc_count, %rdi
	callq	saturated_add
	movq	%rax, cpu_gc_count
	jmp	.LBB17_5
.LBB17_2:                               # %if.else
	movq	$1, -16(%rbp)
	testb	$1, profiler_timer_ok
	je	.LBB17_4
# BB#3:                                 # %if.then.3
	movq	profiler_timer, %rdi
	callq	timer_getoverrun
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdi
	addq	-16(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB17_4:                               # %if.end
	movq	cpu_log, %rdi
	callq	XHASH_TABLE
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	record_backtrace
.LBB17_5:                               # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	handle_profiler_signal, .Lfunc_end17-handle_profiler_signal
	.cfi_endproc

	.align	16, 0x90
	.type	saturated_add,@function
saturated_add:                          # @saturated_add
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
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	-16(%rbp), %rsi
	cmpq	%rax, %rsi
	jge	.LBB18_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_3
.LBB18_3:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end18:
	.size	saturated_add, .Lfunc_end18-saturated_add
	.cfi_endproc

	.align	16, 0x90
	.type	evict_lower_half,@function
evict_lower_half:                       # @evict_lower_half
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	callq	ASIZE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	%ecx, %edi
	cqto
	idivq	%rdi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	approximate_median
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_4 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB19_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	HASH_VALUE
	sarq	$2, %rax
	cmpq	-24(%rbp), %rax
	jg	.LBB19_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	HASH_KEY
	movl	$5, %esi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fremhash
	movq	$0, -56(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB19_4:                               # %for.cond.8
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	ASIZE
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB19_7
# BB#5:                                 # %for.body.11
                                        #   in Loop: Header=BB19_4 Depth=2
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB19_4 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB19_4
.LBB19_7:                               # %for.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	set_hash_key_slot
.LBB19_8:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_9
.LBB19_9:                               # %for.inc.13
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB19_1
.LBB19_10:                              # %for.end.15
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	evict_lower_half, .Lfunc_end19-evict_lower_half
	.cfi_endproc

	.align	16, 0x90
	.type	approximate_median,@function
approximate_median:                     # @approximate_median
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$2, -32(%rbp)
	jge	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	HASH_VALUE
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_20
.LBB20_2:                               # %if.end
	cmpq	$3, -32(%rbp)
	jge	.LBB20_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	HASH_VALUE
	sarq	$2, %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	addq	$1, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	HASH_VALUE
	movl	$2, %ecx
	movl	%ecx, %esi
	sarq	$2, %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	movq	%rax, -8(%rbp)
	jmp	.LBB20_20
.LBB20_4:                               # %if.else
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	callq	approximate_median
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	approximate_median
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	approximate_median
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB20_12
# BB#5:                                 # %cond.true
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB20_7
# BB#6:                                 # %cond.true.16
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB20_11
.LBB20_7:                               # %cond.false
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB20_9
# BB#8:                                 # %cond.true.18
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB20_10
.LBB20_9:                               # %cond.false.19
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB20_10:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB20_11:                              # %cond.end.20
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB20_19
.LBB20_12:                              # %cond.false.22
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB20_14
# BB#13:                                # %cond.true.24
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB20_18
.LBB20_14:                              # %cond.false.25
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jge	.LBB20_16
# BB#15:                                # %cond.true.27
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB20_17
.LBB20_16:                              # %cond.false.28
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB20_17:                              # %cond.end.29
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB20_18:                              # %cond.end.31
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB20_19:                              # %cond.end.33
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB20_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	approximate_median, .Lfunc_end20-approximate_median
	.cfi_endproc

	.type	profiler_cpu_running,@object # @profiler_cpu_running
	.local	profiler_cpu_running
	.comm	profiler_cpu_running,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CPU profiler is already running"
	.size	.L.str, 32

	.type	cpu_log,@object         # @cpu_log
	.local	cpu_log
	.comm	cpu_log,8,8
	.type	cpu_gc_count,@object    # @cpu_gc_count
	.local	cpu_gc_count
	.comm	cpu_gc_count,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid sampling interval"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Unable to start profiler timer"
	.size	.L.str.2, 31

	.type	profiler_timer,@object  # @profiler_timer
	.local	profiler_timer
	.comm	profiler_timer,8,8
	.type	profiler_memory_running,@object # @profiler_memory_running
	.comm	profiler_memory_running,1,1
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Memory profiler is already running"
	.size	.L.str.3, 35

	.type	memory_log,@object      # @memory_log
	.local	memory_log
	.comm	memory_log,8,8
	.type	syms_of_profiler.i_fwd,@object # @syms_of_profiler.i_fwd
	.local	syms_of_profiler.i_fwd
	.comm	syms_of_profiler.i_fwd,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"profiler-max-stack-depth"
	.size	.L.str.4, 25

	.type	syms_of_profiler.i_fwd.5,@object # @syms_of_profiler.i_fwd.5
	.local	syms_of_profiler.i_fwd.5
	.comm	syms_of_profiler.i_fwd.5,16,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"profiler-log-size"
	.size	.L.str.6, 18

	.type	hashtest_profiler,@object # @hashtest_profiler
	.local	hashtest_profiler
	.comm	hashtest_profiler,40,8
	.type	Sprofiler_cpu_stop,@object # @Sprofiler_cpu_stop
	.data
	.align	8
Sprofiler_cpu_stop:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_cpu_stop
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sprofiler_cpu_stop, 48

	.type	Sprofiler_cpu_running_p,@object # @Sprofiler_cpu_running_p
	.align	8
Sprofiler_cpu_running_p:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_cpu_running_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sprofiler_cpu_running_p, 48

	.type	Sprofiler_cpu_log,@object # @Sprofiler_cpu_log
	.align	8
Sprofiler_cpu_log:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_cpu_log
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Sprofiler_cpu_log, 48

	.type	Sprofiler_memory_start,@object # @Sprofiler_memory_start
	.align	8
Sprofiler_memory_start:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_memory_start
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Sprofiler_memory_start, 48

	.type	Sprofiler_memory_stop,@object # @Sprofiler_memory_stop
	.align	8
Sprofiler_memory_stop:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_memory_stop
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.size	Sprofiler_memory_stop, 48

	.type	Sprofiler_memory_running_p,@object # @Sprofiler_memory_running_p
	.align	8
Sprofiler_memory_running_p:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_memory_running_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.size	Sprofiler_memory_running_p, 48

	.type	Sprofiler_memory_log,@object # @Sprofiler_memory_log
	.align	8
Sprofiler_memory_log:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_memory_log
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	0
	.quad	0
	.size	Sprofiler_memory_log, 48

	.type	current_sampling_interval,@object # @current_sampling_interval
	.local	current_sampling_interval
	.comm	current_sampling_interval,8,8
	.type	profiler_timer_ok,@object # @profiler_timer_ok
	.local	profiler_timer_ok
	.comm	profiler_timer_ok,1,1
	.type	setup_cpu_timer.system_clock,@object # @setup_cpu_timer.system_clock
	.section	.rodata,"a",@progbits
	.align	16
setup_cpu_timer.system_clock:
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	setup_cpu_timer.system_clock, 16

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"function-equal"
	.size	.L.str.7, 15

	.type	Sfunction_equal,@object # @Sfunction_equal
	.data
	.align	8
Sfunction_equal:
	.quad	167772160               # 0xa000000
	.quad	Ffunction_equal
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sfunction_equal, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"profiler-cpu-start"
	.size	.L.str.8, 19

	.type	Sprofiler_cpu_start,@object # @Sprofiler_cpu_start
	.data
	.align	8
Sprofiler_cpu_start:
	.quad	167772160               # 0xa000000
	.quad	Fprofiler_cpu_start
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sprofiler_cpu_start, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"profiler-cpu-stop"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"profiler-cpu-running-p"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"profiler-cpu-log"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"profiler-memory-start"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"profiler-memory-stop"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"profiler-memory-running-p"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"profiler-memory-log"
	.size	.L.str.15, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
