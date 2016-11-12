	.text
	.file	"atimer.bc"
	.globl	start_atimer
	.align	16, 0x90
	.type	start_atimer,@function
start_atimer:                           # @start_atimer
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movl	%edi, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, free_atimers
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	free_atimers, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, free_atimers
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movl	$64, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -48(%rbp)
.LBB0_3:                                # %if.end
	movq	-48(%rbp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 48(%rdx)
	leaq	-176(%rbp), %rdi
	callq	block_atimers
	movl	-20(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_8
.LBB0_8:                                # %if.end
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB0_5
	jmp	.LBB0_9
.LBB0_9:                                # %if.end
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB0_6
	jmp	.LBB0_7
.LBB0_4:                                # %sw.bb
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-8(%rbp), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB0_7
.LBB0_5:                                # %sw.bb.4
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	current_timespec
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-192(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-208(%rbp), %rax
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-200(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.LBB0_7
.LBB0_6:                                # %sw.bb.8
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	current_timespec
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-224(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-232(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
.LBB0_7:                                # %sw.epilog
	movq	-48(%rbp), %rdi
	callq	schedule_atimer
	leaq	-176(%rbp), %rdi
	callq	unblock_atimers
	callq	set_alarm
	movq	-48(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.size	start_atimer, .Lfunc_end0-start_atimer
	.cfi_endproc

	.align	16, 0x90
	.type	block_atimers,@function
block_atimers:                          # @block_atimers
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
	subq	$160, %rsp
	leaq	-136(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	sigemptyset
	leaq	-136(%rbp), %rdi
	movl	$14, %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	sigaddset
	leaq	-136(%rbp), %rdi
	movl	$2, %esi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-136(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movl	%eax, -152(%rbp)        # 4-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	block_atimers, .Lfunc_end1-block_atimers
	.cfi_endproc

	.align	16, 0x90
	.type	schedule_atimer,@function
schedule_atimer:                        # @schedule_atimer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	atimers, %rdi
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB2_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	movq	8(%rcx), %rdx
	movq	16(%rcx), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	setl	%r8b
	movb	%r8b, -25(%rbp)         # 1-byte Spill
.LBB2_3:                                # %land.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_5
.LBB2_4:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_5:                                # %while.end
	cmpq	$0, -24(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB2_8
.LBB2_7:                                # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, atimers
.LBB2_8:                                # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	schedule_atimer, .Lfunc_end2-schedule_atimer
	.cfi_endproc

	.align	16, 0x90
	.type	unblock_atimers,@function
unblock_atimers:                        # @unblock_atimers
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
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	pthread_sigmask
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	unblock_atimers, .Lfunc_end3-unblock_atimers
	.cfi_endproc

	.align	16, 0x90
	.type	set_alarm,@function
set_alarm:                              # @set_alarm
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
	subq	$176, %rsp
	cmpq	$0, atimers
	je	.LBB4_13
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	cmpl	timerfd, %eax
	jle	.LBB4_3
# BB#2:                                 # %lor.lhs.false
	testb	$1, alarm_timer_ok
	je	.LBB4_9
.LBB4_3:                                # %if.then.2
	movl	$1, %esi
	leaq	-96(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	atimers, %rdi
	movq	8(%rdi), %r8
	movq	%r8, -80(%rbp)
	movq	16(%rdi), %rdi
	movq	%rdi, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	timerfd, %edi
	callq	timerfd_settime
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#4:                                 # %if.then.5
	movl	timerfd, %edi
	callq	add_timer_wait_descriptor
	jmp	.LBB4_13
.LBB4_5:                                # %if.end
	testb	$1, alarm_timer_ok
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
	movl	$1, %esi
	leaq	-96(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	alarm_timer, %rdi
	callq	timer_settime
	cmpl	$0, %eax
	jne	.LBB4_8
# BB#7:                                 # %if.then.9
	jmp	.LBB4_13
.LBB4_8:                                # %if.end.10
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.11
	callq	current_timespec
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	atimers, %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB4_11
# BB#10:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1000000, %eax          # imm = 0xF4240
	movl	%eax, %esi
	callq	make_timespec
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %cond.false
	movq	atimers, %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB4_12:                               # %cond.end
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	make_timeval
	xorl	%edi, %edi
	leaq	-32(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	%rcx, %rdx
	callq	setitimer
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB4_13:                               # %if.end.25
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	set_alarm, .Lfunc_end4-set_alarm
	.cfi_endproc

	.globl	cancel_atimer
	.align	16, 0x90
	.type	cancel_atimer,@function
cancel_atimer:                          # @cancel_atimer
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
	subq	$176, %rsp
	leaq	-144(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	block_atimers
	movl	$0, -12(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	cmpl	$2, -12(%rbp)
	jge	.LBB5_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$atimers, %rax
	movabsq	$stopped_atimers, %rcx
	cmpl	$0, -12(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	$0, -160(%rbp)
.LBB5_3:                                # %for.cond.1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -152(%rbp)
	movb	%cl, -169(%rbp)         # 1-byte Spill
	je	.LBB5_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-152(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setne	%cl
	movb	%cl, -169(%rbp)         # 1-byte Spill
.LBB5_5:                                # %land.end
                                        #   in Loop: Header=BB5_3 Depth=2
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_6
	jmp	.LBB5_8
.LBB5_6:                                # %for.body.4
                                        #   in Loop: Header=BB5_3 Depth=2
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB5_3
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB5_13
# BB#9:                                 # %if.then
	cmpq	$0, -160(%rbp)
	je	.LBB5_11
# BB#10:                                # %if.then.7
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB5_12:                               # %if.end
	movq	free_atimers, %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, free_atimers
	jmp	.LBB5_15
.LBB5_13:                               # %if.end.12
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %for.inc.13
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_15:                               # %for.end.14
	leaq	-144(%rbp), %rdi
	callq	unblock_atimers
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cancel_atimer, .Lfunc_end5-cancel_atimer
	.cfi_endproc

	.globl	stop_other_atimers
	.align	16, 0x90
	.type	stop_other_atimers,@function
stop_other_atimers:                     # @stop_other_atimers
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
	subq	$160, %rsp
	leaq	-136(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	block_atimers
	cmpq	$0, -8(%rbp)
	je	.LBB6_14
# BB#1:                                 # %if.then
	movq	atimers, %rax
	movq	%rax, -144(%rbp)
	movq	$0, -152(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -144(%rbp)
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB6_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setne	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB6_4:                                # %land.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	-153(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_7
.LBB6_5:                                # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_6
.LBB6_6:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB6_2
.LBB6_7:                                # %for.end
	movq	-144(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB6_12
# BB#8:                                 # %if.then.3
	cmpq	$0, -152(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB6_11
.LBB6_10:                               # %if.else
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, atimers
.LBB6_11:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.10
	movq	$0, -8(%rbp)
.LBB6_13:                               # %if.end.11
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.12
	movq	atimers, %rdi
	movq	stopped_atimers, %rsi
	callq	append_atimer_lists
	leaq	-136(%rbp), %rdi
	movq	%rax, stopped_atimers
	movq	-8(%rbp), %rax
	movq	%rax, atimers
	callq	unblock_atimers
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	stop_other_atimers, .Lfunc_end6-stop_other_atimers
	.cfi_endproc

	.align	16, 0x90
	.type	append_atimer_lists,@function
append_atimer_lists:                    # @append_atimer_lists
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_9
.LBB7_2:                                # %if.else
	cmpq	$0, -24(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else.3
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB7_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB7_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_5
.LBB7_8:                                # %for.end
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_9:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	append_atimer_lists, .Lfunc_end7-append_atimer_lists
	.cfi_endproc

	.globl	run_all_atimers
	.align	16, 0x90
	.type	run_all_atimers,@function
run_all_atimers:                        # @run_all_atimers
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
	subq	$144, %rsp
	cmpq	$0, stopped_atimers
	je	.LBB8_5
# BB#1:                                 # %if.then
	leaq	-144(%rbp), %rdi
	movq	atimers, %rax
	movq	%rax, -8(%rbp)
	callq	block_atimers
	movq	stopped_atimers, %rax
	movq	%rax, atimers
	movq	$0, stopped_atimers
.LBB8_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB8_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	schedule_atimer
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_2
.LBB8_4:                                # %while.end
	leaq	-144(%rbp), %rdi
	callq	unblock_atimers
.LBB8_5:                                # %if.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	run_all_atimers, .Lfunc_end8-run_all_atimers
	.cfi_endproc

	.globl	timerfd_callback
	.align	16, 0x90
	.type	timerfd_callback,@function
timerfd_callback:                       # @timerfd_callback
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
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rcx, %rsi
	callq	emacs_read
	movq	%rax, -24(%rbp)
	cmpq	$8, -24(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	callq	do_pending_atimers
	jmp	.LBB9_6
.LBB9_2:                                # %if.else
	cmpq	$0, -24(%rbp)
	jge	.LBB9_4
# BB#3:                                 # %if.then.2
	jmp	.LBB9_5
.LBB9_4:                                # %if.else.3
	callq	emacs_abort
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	timerfd_callback, .Lfunc_end9-timerfd_callback
	.cfi_endproc

	.globl	do_pending_atimers
	.align	16, 0x90
	.type	do_pending_atimers,@function
do_pending_atimers:                     # @do_pending_atimers
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
	subq	$128, %rsp
	cmpq	$0, atimers
	je	.LBB10_2
# BB#1:                                 # %if.then
	leaq	-128(%rbp), %rdi
	callq	block_atimers
	callq	run_timers
	leaq	-128(%rbp), %rdi
	callq	unblock_atimers
.LBB10_2:                               # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	do_pending_atimers, .Lfunc_end10-do_pending_atimers
	.cfi_endproc

	.align	16, 0x90
	.type	run_timers,@function
run_timers:                             # @run_timers
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
	subq	$64, %rsp
	callq	current_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, atimers
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB11_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	atimers, %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	setle	%r8b
	movb	%r8b, -41(%rbp)         # 1-byte Spill
.LBB11_3:                               # %land.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_8
.LBB11_4:                               # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	atimers, %rax
	movq	%rax, -24(%rbp)
	movq	atimers, %rax
	movq	56(%rax), %rax
	movq	%rax, atimers
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpl	$2, (%rax)
	jne	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	24(%rcx), %rdx
	movq	32(%rcx), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	timespec_add
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rdi
	callq	schedule_atimer
	jmp	.LBB11_7
.LBB11_6:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	free_atimers, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, free_atimers
.LBB11_7:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_8:                               # %while.end
	callq	set_alarm
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	run_timers, .Lfunc_end11-run_timers
	.cfi_endproc

	.globl	turn_on_atimers
	.align	16, 0x90
	.type	turn_on_atimers,@function
turn_on_atimers:                        # @turn_on_atimers
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
	andb	$1, %al
	movb	%al, -1(%rbp)
	testb	$1, -1(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	callq	set_alarm
	jmp	.LBB12_5
.LBB12_2:                               # %if.else
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	testb	$1, alarm_timer_ok
	je	.LBB12_4
# BB#3:                                 # %if.then.2
	movl	$1, %esi
	leaq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	alarm_timer, %rdi
	callq	timer_settime
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB12_4:                               # %if.end
	movl	$1, %esi
	leaq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	timerfd, %edi
	callq	timerfd_settime
	xorl	%edi, %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	alarm
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB12_5:                               # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	turn_on_atimers, .Lfunc_end12-turn_on_atimers
	.cfi_endproc

	.globl	init_atimer
	.align	16, 0x90
	.type	init_atimer,@function
init_atimer:                            # @init_atimer
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
	subq	$224, %rsp
	movabsq	$.L.str, %rdi
	callq	egetenv
	cmpq	$0, %rax
	je	.LBB13_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	xorl	%edi, %edi
	movl	$526336, %esi           # imm = 0x80800
	callq	timerfd_create
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB13_3:                               # %cond.end
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, timerfd
	cmpl	$0, timerfd
	jge	.LBB13_5
# BB#4:                                 # %if.then
	xorl	%edi, %edi
	leaq	-64(%rbp), %rsi
	movabsq	$alarm_timer, %rax
	movq	%rax, %rcx
	movl	$0, -52(%rbp)
	movl	$14, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdx
	callq	timer_create
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movb	%r8b, alarm_timer_ok
.LBB13_5:                               # %if.end
	leaq	-216(%rbp), %rdi
	movabsq	$handle_alarm_signal, %rsi
	movq	$0, atimers
	movq	$0, stopped_atimers
	movq	$0, free_atimers
	callq	emacs_sigaction_init
	movl	$14, %edi
	leaq	-216(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	%eax, -224(%rbp)        # 4-byte Spill
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	init_atimer, .Lfunc_end13-init_atimer
	.cfi_endproc

	.align	16, 0x90
	.type	handle_alarm_signal,@function
handle_alarm_signal:                    # @handle_alarm_signal
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
	movl	%edi, -4(%rbp)
	movb	$1, pending_signals
	popq	%rbp
	retq
.Lfunc_end14:
	.size	handle_alarm_signal, .Lfunc_end14-handle_alarm_signal
	.cfi_endproc

	.type	free_atimers,@object    # @free_atimers
	.local	free_atimers
	.comm	free_atimers,8,8
	.type	stopped_atimers,@object # @stopped_atimers
	.local	stopped_atimers
	.comm	stopped_atimers,8,8
	.type	atimers,@object         # @atimers
	.local	atimers
	.comm	atimers,8,8
	.type	alarm_timer_ok,@object  # @alarm_timer_ok
	.local	alarm_timer_ok
	.comm	alarm_timer_ok,1,1
	.type	alarm_timer,@object     # @alarm_timer
	.local	alarm_timer
	.comm	alarm_timer,8,8
	.type	timerfd,@object         # @timerfd
	.local	timerfd
	.comm	timerfd,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"EMACS_IGNORE_TIMERFD"
	.size	.L.str, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
