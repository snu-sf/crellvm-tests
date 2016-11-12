	.text
	.file	"logfile.bc"
	.globl	lf_move_fd
	.align	16, 0x90
	.type	lf_move_fd,@function
lf_move_fd:                             # @lf_move_fd
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$-1, -16(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_2:                                # %if.end
	cmpl	$0, -8(%rbp)
	jl	.LBB0_5
# BB#3:                                 # %land.lhs.true
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_5
# BB#4:                                 # %if.then.3
	movl	-8(%rbp), %edi
	callq	dup
	movl	-12(%rbp), %esi
	movl	%eax, %edi
	callq	lf_move_fd
	movl	%eax, -16(%rbp)
.LBB0_5:                                # %if.end.5
	movl	-8(%rbp), %edi
	callq	close
	movl	-16(%rbp), %edi
	movl	%edi, -4(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB0_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lf_move_fd, .Lfunc_end0-lf_move_fd
	.cfi_endproc

	.globl	logreopen_register
	.align	16, 0x90
	.type	logreopen_register,@function
logreopen_register:                     # @logreopen_register
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movabsq	$logfile_reopen, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, lf_reopen_fn
	popq	%rbp
	retq
.Lfunc_end1:
	.size	logreopen_register, .Lfunc_end1-logreopen_register
	.cfi_endproc

	.align	16, 0x90
	.type	logfile_reopen,@function
logfile_reopen:                         # @logfile_reopen
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %edi
	callq	close
	movl	$1089, %esi             # imm = 0x441
	movl	$438, %edx              # imm = 0x1B6
	movq	-16(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jl	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movl	-36(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	lf_move_fd
	cmpl	$0, %eax
	jge	.LBB2_5
.LBB2_2:                                # %if.then
	movq	-32(%rbp), %rdi
	callq	logfclose
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#3:                                 # %do.body
	jmp	.LBB2_4
.LBB2_4:                                # %do.end
	movl	$-1, -4(%rbp)
	jmp	.LBB2_8
.LBB2_5:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	changed_logfile
# BB#6:                                 # %do.body.5
	jmp	.LBB2_7
.LBB2_7:                                # %do.end.6
	movl	$0, -4(%rbp)
.LBB2_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	logfile_reopen, .Lfunc_end2-logfile_reopen
	.cfi_endproc

	.globl	logfopen
	.align	16, 0x90
	.type	logfopen,@function
logfopen:                               # @logfopen
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	lookup_logfile
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_3:                                # %if.end
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_11
.LBB3_4:                                # %if.end.3
	movl	$48, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.6
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_6:                                # %if.end.7
	movl	$144, %eax
	movl	%eax, %edi
	callq	malloc
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
	cmpq	$0, %rax
	jne	.LBB3_8
# BB#7:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_8:                                # %if.end.11
	movq	-16(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	%rax, 16(%rdi)
	cmpq	$0, %rax
	jne	.LBB3_10
# BB#9:                                 # %if.then.15
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB3_11
.LBB3_10:                               # %if.end.17
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-32(%rbp), %rdi
	callq	changed_logfile
	movq	logroot, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, logroot
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	logfopen, .Lfunc_end3-logfopen
	.cfi_endproc

	.align	16, 0x90
	.type	lookup_logfile,@function
lookup_logfile:                         # @lookup_logfile
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	logroot, %rdi
	movq	%rdi, -24(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	movq	$0, -8(%rbp)
.LBB4_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lookup_logfile, .Lfunc_end4-lookup_logfile
	.cfi_endproc

	.align	16, 0x90
	.type	changed_logfile,@function
changed_logfile:                        # @changed_logfile
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -160(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	fileno
	leaq	-152(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$0, %eax
	jge	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_4
.LBB5_2:                                # %if.end
	movq	-104(%rbp), %rax
	movq	-160(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jle	.LBB5_4
# BB#3:                                 # %if.then.4
	movq	-104(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-64(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 88(%rcx)
.LBB5_4:                                # %if.end.9
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	changed_logfile, .Lfunc_end5-changed_logfile
	.cfi_endproc

	.globl	islogfile
	.align	16, 0x90
	.type	islogfile,@function
islogfile:                              # @islogfile
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
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, logroot
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	lookup_logfile
	xorl	%ecx, %ecx
	movl	$1, %edx
	cmpq	$0, %rax
	cmovnel	%edx, %ecx
	movl	%ecx, -4(%rbp)
.LBB6_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	islogfile, .Lfunc_end6-islogfile
	.cfi_endproc

	.globl	logfclose
	.align	16, 0x90
	.type	logfclose,@function
logfclose:                              # @logfclose
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
	movabsq	$logroot, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, -24(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB7_4
# BB#3:                                 # %if.then
	jmp	.LBB7_6
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB7_8
# BB#7:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB7_13
.LBB7_8:                                # %if.end.3
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 24(%rax)
	cmpl	$0, %ecx
	jle	.LBB7_10
# BB#9:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_10:                               # %if.end.6
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	jge	.LBB7_12
# BB#11:                                # %if.then.9
	callq	abort
.LBB7_12:                               # %if.end.10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fclose
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	free
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
	movl	$0, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	logfclose, .Lfunc_end7-logfclose
	.cfi_endproc

	.globl	logfwrite
	.align	16, 0x90
	.type	logfwrite,@function
logfwrite:                              # @logfwrite
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	stolen_logfile
	cmpl	$0, %eax
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	lf_reopen_fn, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	fileno
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.end
	movl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	32(%rax), %r8d
	addl	$1, %r8d
	movq	-16(%rbp), %rax
	addl	28(%rax), %r8d
	movl	%r8d, 28(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	changed_logfile
	movl	-32(%rbp), %r8d
	movl	%r8d, -4(%rbp)
.LBB8_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	logfwrite, .Lfunc_end8-logfwrite
	.cfi_endproc

	.align	16, 0x90
	.type	stolen_logfile,@function
stolen_logfile:                         # @stolen_logfile
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
	subq	$176, %rsp
	movl	$144, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	fileno
	movq	-168(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$0, %eax
	jge	.LBB9_2
# BB#1:                                 # %if.then
	movq	-168(%rbp), %rax
	movq	$0, (%rax)
	movq	-168(%rbp), %rax
	movq	$0, 8(%rax)
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
	jmp	.LBB9_4
.LBB9_4:                                # %do.end
	cmpq	$0, -160(%rbp)
	jne	.LBB9_7
# BB#5:                                 # %land.lhs.true
	cmpq	$0, -152(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then.5
	movl	$0, -4(%rbp)
	jmp	.LBB9_29
.LBB9_7:                                # %if.end.6
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_9
# BB#8:                                 # %land.lhs.true.9
	movq	-168(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_15
.LBB9_9:                                # %lor.lhs.false
	movq	-168(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_15
# BB#10:                                # %lor.lhs.false.13
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-112(%rbp), %rax
	jl	.LBB9_15
# BB#11:                                # %lor.lhs.false.16
	movq	-168(%rbp), %rax
	movq	88(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB9_15
# BB#12:                                # %lor.lhs.false.20
	movq	-168(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB9_26
# BB#13:                                # %land.lhs.true.25
	movq	-168(%rbp), %rax
	movq	88(%rax), %rax
	movq	-168(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB9_15
# BB#14:                                # %land.lhs.true.31
	movq	-56(%rbp), %rax
	movq	-168(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jl	.LBB9_26
.LBB9_15:                               # %if.then.37
	jmp	.LBB9_16
.LBB9_16:                               # %do.body.38
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.39
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.40
	jmp	.LBB9_19
.LBB9_19:                               # %do.end.41
	jmp	.LBB9_20
.LBB9_20:                               # %do.body.42
	jmp	.LBB9_21
.LBB9_21:                               # %do.end.43
	jmp	.LBB9_22
.LBB9_22:                               # %do.body.44
	jmp	.LBB9_23
.LBB9_23:                               # %do.end.45
	jmp	.LBB9_24
.LBB9_24:                               # %do.body.46
	jmp	.LBB9_25
.LBB9_25:                               # %do.end.47
	movl	$-1, -4(%rbp)
	jmp	.LBB9_29
.LBB9_26:                               # %if.end.48
	jmp	.LBB9_27
.LBB9_27:                               # %do.body.49
	jmp	.LBB9_28
.LBB9_28:                               # %do.end.50
	movl	$0, -4(%rbp)
.LBB9_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	stolen_logfile, .Lfunc_end9-stolen_logfile
	.cfi_endproc

	.globl	logfflush
	.align	16, 0x90
	.type	logfflush,@function
logfflush:                              # @logfflush
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_9
# BB#1:                                 # %if.then
	movq	logroot, %rax
	movq	%rax, -16(%rbp)
.LBB10_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	stolen_logfile
	cmpl	$0, %eax
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	lf_reopen_fn, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	fileno
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	cmpl	$0, %eax
	je	.LBB10_6
# BB#5:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB10_14
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fflush
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	32(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 32(%rdi)
	movq	-16(%rbp), %rdi
	callq	changed_logfile
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB10_2
.LBB10_8:                               # %for.end
	jmp	.LBB10_13
.LBB10_9:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	stolen_logfile
	cmpl	$0, %eax
	je	.LBB10_12
# BB#10:                                # %land.lhs.true.11
	movq	lf_reopen_fn, %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	fileno
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movb	$0, %al
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	cmpl	$0, %eax
	je	.LBB10_12
# BB#11:                                # %if.then.18
	movl	$-1, -4(%rbp)
	jmp	.LBB10_14
.LBB10_12:                              # %if.end.19
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fflush
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	32(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 32(%rdi)
	movq	-16(%rbp), %rdi
	callq	changed_logfile
.LBB10_13:                              # %if.end.24
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	logfflush, .Lfunc_end10-logfflush
	.cfi_endproc

	.type	lf_reopen_fn,@object    # @lf_reopen_fn
	.data
	.align	8
lf_reopen_fn:
	.quad	logfile_reopen
	.size	lf_reopen_fn, 8

	.type	logroot,@object         # @logroot
	.local	logroot
	.comm	logroot,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
