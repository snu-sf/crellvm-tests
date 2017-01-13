	.text
	.file	"gp_nsync.bc"
	.globl	gp_semaphore_sizeof
	.align	16, 0x90
	.type	gp_semaphore_sizeof,@function
gp_semaphore_sizeof:                    # @gp_semaphore_sizeof
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$8, %eax
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
	testq	%rdi, %rdi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, (%rdi)
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
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
	xorl	%eax, %eax
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
	movl	(%rdi), %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	je	.LBB3_2
# BB#1:                                 # %if.end
	decl	%ecx
	movl	%ecx, (%rdi)
	xorl	%eax, %eax
.LBB3_2:                                # %return
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
	incl	(%rdi)
	xorl	%eax, %eax
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
	movl	$8, %eax
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
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	$0, (%rdi)
.LBB6_2:                                # %if.end
	xorl	%eax, %eax
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
	xorl	%eax, %eax
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
	movl	$-1, %eax
	cmpq	$0, (%rdi)
	jne	.LBB8_2
# BB#1:                                 # %if.end
	movq	%rdi, (%rdi)
	xorl	%eax, %eax
.LBB8_2:                                # %return
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
	movl	$-1, %eax
	cmpq	%rdi, (%rdi)
	jne	.LBB9_2
# BB#1:                                 # %if.end
	movq	$0, (%rdi)
	xorl	%eax, %eax
.LBB9_2:                                # %return
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
	movl	$-1, %eax
	retq
.Lfunc_end10:
	.size	gp_create_thread, .Lfunc_end10-gp_create_thread
	.cfi_endproc

	.globl	gp_thread_start
	.align	16, 0x90
	.type	gp_thread_start,@function
gp_thread_start:                        # @gp_thread_start
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdx)
	movl	$-1, %eax
	retq
.Lfunc_end11:
	.size	gp_thread_start, .Lfunc_end11-gp_thread_start
	.cfi_endproc

	.globl	gp_thread_finish
	.align	16, 0x90
	.type	gp_thread_finish,@function
gp_thread_finish:                       # @gp_thread_finish
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end12:
	.size	gp_thread_finish, .Lfunc_end12-gp_thread_finish
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
