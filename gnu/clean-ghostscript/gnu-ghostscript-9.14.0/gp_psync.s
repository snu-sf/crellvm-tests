	.text
	.file	"gp_psync.bc"
	.globl	gp_semaphore_sizeof
	.align	16, 0x90
	.type	gp_semaphore_sizeof,@function
gp_semaphore_sizeof:                    # @gp_semaphore_sizeof
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$96, %eax
	retq
.Lfunc_end0:
	.size	gp_semaphore_sizeof, .Lfunc_end0-gp_semaphore_sizeof
	.cfi_endproc

	.globl	gp_semaphore_open
	.align	16, 0x90
	.type	gp_semaphore_open,@function
gp_semaphore_open:                      # @gp_semaphore_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$-1, %ecx
	testq	%rbx, %rbx
	je	.LBB1_4
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	leaq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	testl	%eax, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then.1
	addq	$48, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pthread_cond_init
.LBB1_3:                                # %if.end.3
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovel	%eax, %ecx
.LBB1_4:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gp_semaphore_open, .Lfunc_end1-gp_semaphore_open
	.cfi_endproc

	.globl	gp_semaphore_close
	.align	16, 0x90
	.type	gp_semaphore_close,@function
gp_semaphore_close:                     # @gp_semaphore_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	48(%rbx), %rdi
	callq	pthread_cond_destroy
	movl	%eax, %ebp
	addq	$8, %rbx
	movq	%rbx, %rdi
	callq	pthread_mutex_destroy
	testl	%ebp, %ebp
	cmovnel	%ebp, %eax
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gp_semaphore_close, .Lfunc_end2-gp_semaphore_close
	.cfi_endproc

	.globl	gp_semaphore_wait
	.align	16, 0x90
	.type	gp_semaphore_wait,@function
gp_semaphore_wait:                      # @gp_semaphore_wait
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	leaq	8(%r15), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	jne	.LBB3_7
# BB#1:                                 # %while.cond.preheader
	leaq	48(%r15), %rbx
	.align	16, 0x90
.LBB3_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r15), %eax
	testl	%eax, %eax
	jne	.LBB3_5
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pthread_cond_wait
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB3_2
# BB#4:
	xorl	%ebx, %ebx
	jmp	.LBB3_6
.LBB3_5:                                # %if.then.10
	decl	%eax
	movl	%eax, (%r15)
	xorl	%ebp, %ebp
	movb	$1, %bl
.LBB3_6:                                # %if.end.12
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ecx
	testb	%bl, %bl
	cmovel	%ebp, %ecx
	testl	%ecx, %ecx
	movl	$-12, %eax
	cmovel	%ecx, %eax
.LBB3_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gp_semaphore_wait, .Lfunc_end3-gp_semaphore_wait
	.cfi_endproc

	.globl	gp_semaphore_signal
	.align	16, 0x90
	.type	gp_semaphore_signal,@function
gp_semaphore_signal:                    # @gp_semaphore_signal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	jne	.LBB4_4
# BB#1:                                 # %if.end
	movl	(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rbx)
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB4_3
# BB#2:                                 # %if.then.3
	addq	$48, %rbx
	movq	%rbx, %rdi
	callq	pthread_cond_signal
	movl	%eax, %ebp
.LBB4_3:                                # %if.end.6
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ecx
	testl	%ebp, %ebp
	cmovnel	%ebp, %ecx
	testl	%ecx, %ecx
	movl	$-12, %eax
	cmovel	%ecx, %eax
.LBB4_4:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gp_semaphore_signal, .Lfunc_end4-gp_semaphore_signal
	.cfi_endproc

	.globl	gp_monitor_sizeof
	.align	16, 0x90
	.type	gp_monitor_sizeof,@function
gp_monitor_sizeof:                      # @gp_monitor_sizeof
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$48, %eax
	retq
.Lfunc_end5:
	.size	gp_monitor_sizeof, .Lfunc_end5-gp_monitor_sizeof
	.cfi_endproc

	.globl	gp_monitor_open
	.align	16, 0x90
	.type	gp_monitor_open,@function
gp_monitor_open:                        # @gp_monitor_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.end
	movq	$0, 40(%rdi)
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-12, %eax
	cmovel	%ecx, %eax
.LBB6_2:                                # %cleanup
	popq	%rdx
	retq
.Lfunc_end6:
	.size	gp_monitor_open, .Lfunc_end6-gp_monitor_open
	.cfi_endproc

	.globl	gp_monitor_close
	.align	16, 0x90
	.type	gp_monitor_close,@function
gp_monitor_close:                       # @gp_monitor_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 16
	callq	pthread_mutex_destroy
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.Lfunc_end7:
	.size	gp_monitor_close, .Lfunc_end7-gp_monitor_close
	.cfi_endproc

	.globl	gp_monitor_enter
	.align	16, 0x90
	.type	gp_monitor_enter,@function
gp_monitor_enter:                       # @gp_monitor_enter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	pthread_mutex_trylock
	movl	%eax, %ebp
	callq	pthread_self
	movq	%rax, %r14
	testl	%ebp, %ebp
	je	.LBB8_1
# BB#2:                                 # %if.else
	xorl	%eax, %eax
	cmpq	40(%rbx), %r14
	je	.LBB8_4
# BB#3:                                 # %if.else.7
	movq	%rbx, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ecx
	movq	%r14, 40(%rbx)
	testl	%ecx, %ecx
	movl	$-12, %eax
	cmovel	%ecx, %eax
	jmp	.LBB8_4
.LBB8_1:                                # %if.then
	movq	%r14, 40(%rbx)
	xorl	%eax, %eax
.LBB8_4:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gp_monitor_enter, .Lfunc_end8-gp_monitor_enter
	.cfi_endproc

	.globl	gp_monitor_leave
	.align	16, 0x90
	.type	gp_monitor_leave,@function
gp_monitor_leave:                       # @gp_monitor_leave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	pthread_mutex_unlock
	movq	$0, 40(%rbx)
	testl	%eax, %eax
	movl	$-12, %ecx
	cmovnel	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gp_monitor_leave, .Lfunc_end9-gp_monitor_leave
	.cfi_endproc

	.globl	gp_create_thread
	.align	16, 0x90
	.type	gp_create_thread,@function
gp_create_thread:                       # @gp_create_thread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 96
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB10_3
# BB#1:                                 # %if.end
	movq	%r15, (%rbx)
	movq	%r14, 8(%rbx)
	leaq	(%rsp), %r14
	movq	%r14, %rdi
	callq	pthread_attr_init
	movl	$1, %esi
	movq	%r14, %rdi
	callq	pthread_attr_setdetachstate
	leaq	56(%rsp), %rdi
	movl	$gp_thread_begin_wrapper, %edx
	movq	%r14, %rsi
	movq	%rbx, %rcx
	callq	pthread_create
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB10_3
# BB#2:                                 # %if.then.7
	movq	%rbx, %rdi
	callq	free
	movl	$-12, %eax
.LBB10_3:                               # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	gp_create_thread, .Lfunc_end10-gp_create_thread
	.cfi_endproc

	.align	16, 0x90
	.type	gp_thread_begin_wrapper,@function
gp_thread_begin_wrapper:                # @gp_thread_begin_wrapper
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -24
.Ltmp43:
	.cfi_offset %r14, -16
	movq	(%rdi), %r14
	movq	8(%rdi), %rbx
	callq	free
	movq	%rbx, %rdi
	callq	*%r14
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	gp_thread_begin_wrapper, .Lfunc_end11-gp_thread_begin_wrapper
	.cfi_endproc

	.globl	gp_thread_start
	.align	16, 0x90
	.type	gp_thread_start,@function
gp_thread_start:                        # @gp_thread_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 112
.Ltmp50:
	.cfi_offset %rbx, -48
.Ltmp51:
	.cfi_offset %r12, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB12_4
# BB#1:                                 # %if.end
	movq	%r12, (%rbx)
	movq	%r15, 8(%rbx)
	leaq	(%rsp), %r15
	movq	%r15, %rdi
	callq	pthread_attr_init
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	pthread_attr_setdetachstate
	leaq	56(%rsp), %rdi
	movl	$gp_thread_begin_wrapper, %edx
	movq	%r15, %rsi
	movq	%rbx, %rcx
	callq	pthread_create
	testl	%eax, %eax
	je	.LBB12_3
# BB#2:                                 # %if.then.7
	movq	$0, (%r14)
	movq	%rbx, %rdi
	callq	free
	movl	$-12, %ebp
	jmp	.LBB12_4
.LBB12_3:                               # %if.end.8
	movq	56(%rsp), %rax
	movq	%rax, (%r14)
.LBB12_4:                               # %cleanup
	movl	%ebp, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gp_thread_start, .Lfunc_end12-gp_thread_start
	.cfi_endproc

	.globl	gp_thread_finish
	.align	16, 0x90
	.type	gp_thread_finish,@function
gp_thread_finish:                       # @gp_thread_finish
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB13_1
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	jmp	pthread_join            # TAILCALL
.LBB13_1:                               # %return
	retq
.Lfunc_end13:
	.size	gp_thread_finish, .Lfunc_end13-gp_thread_finish
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
