	.text
	.file	"zfileio.bc"
	.globl	zclosefile
	.align	16, 0x90
	.type	zclosefile,@function
zclosefile:                             # @zclosefile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB0_22
# BB#1:                                 # %if.end
	movq	8(%rbx), %r15
	movw	266(%r15), %ax
	orw	264(%r15), %ax
	movzwl	%ax, %eax
	cmpl	4(%rbx), %eax
	jne	.LBB0_4
# BB#2:                                 # %if.then.7
	movq	%r15, %rdi
	callq	sclose
	leal	1(%rax), %ecx
	cmpl	$1, %ecx
	jbe	.LBB0_3
# BB#6:                                 # %if.then.13
	testb	$2, 155(%r15)
	jne	.LBB0_7
# BB#16:                                # %if.else
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB0_17
# BB#21:                                # %sw.bb.1.i.35
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zclosefile, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	s_handle_read_exception # TAILCALL
.LBB0_22:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB0_3:                                # %if.then.7.if.end.21_crit_edge
	movq	624(%r14), %rbx
.LBB0_4:                                # %if.end.21
	addq	$-16, %rbx
	movq	%rbx, 624(%r14)
	xorl	%ecx, %ecx
.LBB0_5:                                # %cleanup.25
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_7:                                # %if.then.17
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB0_8
# BB#15:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zclosefile, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	s_handle_write_exception # TAILCALL
.LBB0_17:                               # %if.else
	movl	$1, %ecx
	cmpl	$-1, %eax
	je	.LBB0_5
# BB#18:                                # %sw.default.i.18
	movq	8(%rbx), %rax
.LBB0_19:                               # %for.cond.i.i.27
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %dl
	je	.LBB0_12
# BB#20:                                # %land.rhs.i.i.28
                                        #   in Loop: Header=BB0_19 Depth=1
	testb	%dl, %dl
	je	.LBB0_19
	jmp	.LBB0_13
.LBB0_8:                                # %if.then.17
	movl	$1, %ecx
	cmpl	$-1, %eax
	je	.LBB0_5
# BB#9:                                 # %sw.default.i
	movq	8(%rbx), %rax
.LBB0_10:                               # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %dl
	je	.LBB0_12
# BB#11:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB0_10 Depth=1
	testb	%dl, %dl
	je	.LBB0_10
	jmp	.LBB0_13
.LBB0_12:                               # %for.end.i.i
	movl	$-12, %ecx
	testb	%dl, %dl
	je	.LBB0_5
.LBB0_13:                               # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB0_5
# BB#14:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %ecx
	jmp	.LBB0_5
.Lfunc_end0:
	.size	zclosefile, .Lfunc_end0-zclosefile
	.cfi_endproc

	.globl	zwrite
	.align	16, 0x90
	.type	zwrite,@function
zwrite:                                 # @zwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -40
.Ltmp12:
	.cfi_offset %r12, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$784, %eax              # imm = 0x310
	jne	.LBB1_1
# BB#4:                                 # %do.body.9
	movq	-8(%rbx), %r12
	movzwl	266(%r12), %eax
	movl	-12(%rbx), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_9
# BB#5:                                 # %if.then.16
	movzwl	264(%r12), %edx
	movl	$-7, %eax
	cmpl	%ecx, %edx
	jne	.LBB1_23
# BB#6:                                 # %lor.lhs.false.i
	cmpq	$0, 304(%r12)
	je	.LBB1_23
# BB#7:                                 # %if.end.i
	movl	$1, %esi
	movq	%r12, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB1_23
# BB#8:                                 # %file_switch_to_write.exit.thread24
	movw	264(%r12), %ax
	movw	%ax, 266(%r12)
	movw	$0, 264(%r12)
.LBB1_9:                                # %do.end.25
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_10
# BB#11:                                # %if.end.34
	movb	8(%rbx), %al
	movq	120(%r12), %rcx
	cmpq	128(%r12), %rcx
	jae	.LBB1_13
# BB#12:                                # %cond.end.50.thread
	leaq	1(%rcx), %rdx
	movq	%rdx, 120(%r12)
	movb	%al, 1(%rcx)
	jmp	.LBB1_14
.LBB1_1:                                # %if.then
	movzbl	1(%r15), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB1_23
# BB#2:                                 # %cond.true
	movq	%r15, %rdi
	jmp	.LBB1_3
.LBB1_10:                               # %if.then.32
	movq	%rbx, %rdi
.LBB1_3:                                # %cond.true
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB1_13:                               # %cond.end.50
	movzbl	%al, %esi
	movq	%r12, %rdi
	callq	spputc
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB1_15
.LBB1_14:                               # %if.then.54
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
.LBB1_23:                               # %cleanup.62
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB1_15:                               # %if.end.59
	leal	4(%rdx), %eax
	cmpl	$2, %eax
	jae	.LBB1_16
# BB#24:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zwrite, %r9d
	movq	%r14, %rdi
	movl	%edx, %esi
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	s_handle_write_exception # TAILCALL
.LBB1_16:                               # %if.end.59
	movl	$1, %eax
	cmpl	$-1, %edx
	je	.LBB1_23
# BB#17:                                # %sw.default.i
	movq	-8(%rbx), %rax
.LBB1_18:                               # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB1_20
# BB#19:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB1_18 Depth=1
	testb	%cl, %cl
	je	.LBB1_18
	jmp	.LBB1_21
.LBB1_20:                               # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB1_23
.LBB1_21:                               # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB1_23
# BB#22:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
	jmp	.LBB1_23
.Lfunc_end1:
	.size	zwrite, .Lfunc_end1-zwrite
	.cfi_endproc

	.globl	file_switch_to_write
	.align	16, 0x90
	.type	file_switch_to_write,@function
file_switch_to_write:                   # @file_switch_to_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	8(%rdi), %rbx
	movzwl	264(%rbx), %ecx
	movl	$-7, %eax
	cmpl	4(%rdi), %ecx
	jne	.LBB2_4
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 304(%rbx)
	je	.LBB2_4
# BB#2:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB2_4
# BB#3:                                 # %if.end.7
	movw	264(%rbx), %ax
	movw	%ax, 266(%rbx)
	movw	$0, 264(%rbx)
	xorl	%eax, %eax
.LBB2_4:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	file_switch_to_write, .Lfunc_end2-file_switch_to_write
	.cfi_endproc

	.globl	zreadline_from
	.align	16, 0x90
	.type	zreadline_from,@function
zreadline_from:                         # @zreadline_from
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 80
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbp
	callq	zis_stdin
	testl	%eax, %eax
	movl	$sreadline, %eax
	movl	$gp_readline, %ebx
	cmoveq	%rax, %rbx
	movq	%r13, 8(%rsp)
	movq	%r14, (%rsp)
	movq	$zis_stdin, 16(%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r12, %r8
	movq	%r15, %r9
	callq	*%rbx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zreadline_from, .Lfunc_end3-zreadline_from
	.cfi_endproc

	.globl	zflush
	.align	16, 0x90
	.type	zflush,@function
zflush:                                 # @zflush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	16(%rsp), %rsi
	callq	zget_stdout
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB4_17
# BB#1:                                 # %if.end
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rdi
	movl	$.L.str, %edx
	callq	make_stream_file
	movq	16(%rsp), %rdi
	callq	*208(%rdi)
	xorl	%ecx, %ecx
	leal	1(%rax), %edx
	cmpl	$2, %edx
	jb	.LBB4_17
# BB#2:                                 # %if.end.5
	movq	16(%rsp), %rdx
	movl	%eax, %ecx
	andl	$-2, %ecx
	testb	$2, 155(%rdx)
	jne	.LBB4_3
# BB#11:                                # %cond.false
	cmpl	$-4, %ecx
	jne	.LBB4_12
# BB#15:                                # %sw.bb.1.i.27
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zflush, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	s_handle_read_exception
	jmp	.LBB4_16
.LBB4_3:                                # %cond.true
	cmpl	$-4, %ecx
	jne	.LBB4_4
# BB#10:                                # %sw.bb.1.i
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zflush, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	s_handle_write_exception
.LBB4_16:                               # %cleanup
	movl	%eax, %ecx
	jmp	.LBB4_17
.LBB4_12:                               # %sw.default.i.10
	movq	8(%rsp), %rax
	.align	16, 0x90
.LBB4_13:                               # %for.cond.i.i.19
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %dl
	je	.LBB4_7
# BB#14:                                # %land.rhs.i.i.20
                                        #   in Loop: Header=BB4_13 Depth=1
	testb	%dl, %dl
	je	.LBB4_13
	jmp	.LBB4_8
.LBB4_4:                                # %sw.default.i
	movq	8(%rsp), %rax
	.align	16, 0x90
.LBB4_5:                                # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %dl
	je	.LBB4_7
# BB#6:                                 # %land.rhs.i.i
                                        #   in Loop: Header=BB4_5 Depth=1
	testb	%dl, %dl
	je	.LBB4_5
	jmp	.LBB4_8
.LBB4_7:                                # %for.end.i.i
	movl	$-12, %ecx
	testb	%dl, %dl
	je	.LBB4_17
.LBB4_8:                                # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB4_17
# BB#9:                                 # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %ecx
.LBB4_17:                               # %cleanup
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zflush, .Lfunc_end4-zflush
	.cfi_endproc

	.align	16, 0x90
	.type	zbytesavailable,@function
zbytesavailable:                        # @zbytesavailable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB5_1
# BB#3:                                 # %do.body.7
	movq	8(%rbx), %r15
	movzwl	264(%r15), %ecx
	movl	4(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB5_10
# BB#4:                                 # %if.then.12
	testw	%cx, %cx
	jne	.LBB5_9
# BB#5:                                 # %land.lhs.true
	movzwl	266(%r15), %ecx
	cmpl	%eax, %ecx
	jne	.LBB5_9
# BB#6:                                 # %lor.lhs.false.i
	movl	$-7, %eax
	cmpq	$0, 304(%r15)
	je	.LBB5_16
# BB#7:                                 # %if.end.i
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB5_16
# BB#8:                                 # %file_switch_to_read.exit.thread20
	movw	266(%r15), %ax
	movw	%ax, 264(%r15)
	movw	$0, 266(%r15)
	jmp	.LBB5_10
.LBB5_1:                                # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB5_16
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB5_16
.LBB5_9:                                # %if.else
	movq	256(%r14), %r15
.LBB5_10:                               # %do.end.31
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	savailable
	movl	%eax, %ecx
	testl	%ecx, %ecx
	je	.LBB5_13
# BB#11:                                # %do.end.31
	movl	$-12, %eax
	cmpl	$-1, %ecx
	jne	.LBB5_16
# BB#12:                                # %sw.bb
	movq	$-1, 8(%rsp)
.LBB5_13:                               # %sw.epilog
	movq	8(%r14), %rdi
	callq	gs_currentcpsimode
	testl	%eax, %eax
	movq	8(%rsp), %rax
	je	.LBB5_15
# BB#14:                                # %if.then.35
	cltq
	movq	%rax, 8(%rsp)
.LBB5_15:                               # %if.end.38
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	xorl	%eax, %eax
.LBB5_16:                               # %cleanup.42
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zbytesavailable, .Lfunc_end5-zbytesavailable
	.cfi_endproc

	.align	16, 0x90
	.type	zecho,@function
zecho:                                  # @zecho
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	624(%rax), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$1, %ecx
	jne	.LBB6_2
# BB#1:                                 # %cleanup
	addq	$-16, %rdi
	movq	%rdi, 624(%rax)
	xorl	%eax, %eax
	retq
.LBB6_2:                                # %if.then
	jmp	check_type_failed       # TAILCALL
.Lfunc_end6:
	.size	zecho, .Lfunc_end6-zecho
	.cfi_endproc

	.align	16, 0x90
	.type	zfilename,@function
zfilename:                              # @zfilename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB7_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %rdi
	movw	266(%rdi), %ax
	orw	264(%rdi), %ax
	movzwl	%ax, %ecx
	movl	$-7, %eax
	cmpl	4(%rbx), %ecx
	jne	.LBB7_11
# BB#3:                                 # %do.end
	leaq	(%rsp), %rsi
	callq	sfilename
	testl	%eax, %eax
	js	.LBB7_4
# BB#5:                                 # %if.end.16
	movq	640(%r14), %rax
	subq	624(%r14), %rax
	cmpq	$15, %rax
	jle	.LBB7_6
# BB#7:                                 # %if.end.27
	movq	8(%r14), %rdi
	movl	8(%rsp), %esi
	movl	$.L.str.28, %edx
	callq	*136(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB7_11
# BB#8:                                 # %if.end.34
	movq	(%rsp), %rsi
	movl	8(%rsp), %edx
	movq	%r15, %rdi
	callq	memcpy
	leaq	16(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB7_9
.LBB7_6:                                # %if.then.24
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB7_11
.LBB7_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB7_11
.LBB7_4:                                # %if.then.12
	movw	$0, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	jmp	.LBB7_10
.LBB7_9:                                # %if.else
	movq	%rax, 624(%r14)
	movq	%r15, 8(%rbx)
	movq	8(%r14), %rdi
	callq	imemory_space
	orl	$112, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%rbx)
	movl	8(%rsp), %eax
	movl	%eax, 4(%rbx)
	movw	$1, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
.LBB7_10:                               # %cleanup
	xorl	%eax, %eax
.LBB7_11:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	zfilename, .Lfunc_end7-zfilename
	.cfi_endproc

	.align	16, 0x90
	.type	zxfileposition,@function
zxfileposition:                         # @zxfileposition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB8_4
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movw	266(%rdi), %ax
	orw	264(%rdi), %ax
	movzwl	%ax, %ecx
	movl	$-7, %eax
	cmpl	4(%rbx), %ecx
	jne	.LBB8_3
# BB#2:                                 # %do.end
	callq	stell
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	xorl	%eax, %eax
.LBB8_3:                                # %cleanup
	popq	%rbx
	retq
.LBB8_4:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end8:
	.size	zxfileposition, .Lfunc_end8-zxfileposition
	.cfi_endproc

	.align	16, 0x90
	.type	zfileposition,@function
zfileposition:                          # @zfileposition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB9_5
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	movw	266(%rdi), %ax
	orw	264(%rdi), %ax
	movzwl	%ax, %ecx
	movl	$-7, %eax
	cmpl	4(%rbx), %ecx
	jne	.LBB9_4
# BB#2:                                 # %do.end
	movl	$-12, %eax
	testb	$4, 155(%rdi)
	je	.LBB9_4
# BB#3:                                 # %if.end.13
	callq	stell
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	xorl	%eax, %eax
.LBB9_4:                                # %cleanup
	popq	%rbx
	retq
.LBB9_5:                                # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end9:
	.size	zfileposition, .Lfunc_end9-zfileposition
	.cfi_endproc

	.align	16, 0x90
	.type	zflushfile,@function
zflushfile:                             # @zflushfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	movzbl	1(%r15), %eax
	cmpl	$3, %eax
	jne	.LBB10_21
# BB#1:                                 # %if.end
	movq	8(%r15), %rbx
	movw	266(%rbx), %ax
	orw	264(%rbx), %ax
	movzwl	%ax, %eax
	cmpl	4(%r15), %eax
	jne	.LBB10_2
# BB#6:                                 # %if.end.16
	movq	%rbx, %rdi
	callq	*208(%rbx)
	leal	1(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB10_8
# BB#7:                                 # %if.then.22
	addq	$-16, 624(%r14)
	jmp	.LBB10_4
.LBB10_21:                              # %if.then
	movq	%r15, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB10_2:                               # %if.then.7
	movl	$-7, %eax
	testb	$16, (%r15)
	jne	.LBB10_5
# BB#3:                                 # %if.end.12
	addq	$-16, %r15
	movq	%r15, 624(%r14)
.LBB10_4:                               # %cleanup
	xorl	%eax, %eax
.LBB10_5:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB10_8:                               # %if.end.27
	movl	%eax, %ecx
	andl	$-2, %ecx
	testb	$2, 155(%rbx)
	jne	.LBB10_9
# BB#17:                                # %cond.false
	cmpl	$-4, %ecx
	jne	.LBB10_18
# BB#22:                                # %sw.bb.1.i.38
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zflushfile, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	s_handle_read_exception # TAILCALL
.LBB10_9:                               # %cond.true
	cmpl	$-4, %ecx
	jne	.LBB10_10
# BB#16:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zflushfile, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%r15, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	s_handle_write_exception # TAILCALL
.LBB10_18:                              # %sw.default.i.21
	movq	8(%r15), %rax
	.align	16, 0x90
.LBB10_19:                              # %for.cond.i.i.30
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB10_13
# BB#20:                                # %land.rhs.i.i.31
                                        #   in Loop: Header=BB10_19 Depth=1
	testb	%cl, %cl
	je	.LBB10_19
	jmp	.LBB10_14
.LBB10_10:                              # %sw.default.i
	movq	8(%r15), %rax
	.align	16, 0x90
.LBB10_11:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB10_13
# BB#12:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB10_11 Depth=1
	testb	%cl, %cl
	je	.LBB10_11
	jmp	.LBB10_14
.LBB10_13:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB10_5
.LBB10_14:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB10_5
# BB#15:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
	jmp	.LBB10_5
.Lfunc_end10:
	.size	zflushfile, .Lfunc_end10-zflushfile
	.cfi_endproc

	.align	16, 0x90
	.type	zisprocfilter,@function
zisprocfilter:                          # @zisprocfilter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$3, %eax
	jne	.LBB11_5
# BB#1:                                 # %if.end
	movq	8(%rbx), %rcx
	movw	266(%rcx), %ax
	orw	264(%rcx), %ax
	movzwl	%ax, %edx
	movl	$-7, %eax
	cmpl	4(%rbx), %edx
	jne	.LBB11_4
	.align	16, 0x90
.LBB11_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdi
	movq	240(%rdi), %rcx
	testq	%rcx, %rcx
	jne	.LBB11_2
# BB#3:                                 # %while.end
	callq	s_is_proc
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	xorl	%eax, %eax
.LBB11_4:                               # %cleanup
	popq	%rbx
	retq
.LBB11_5:                               # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end11:
	.size	zisprocfilter, .Lfunc_end11-zisprocfilter
	.cfi_endproc

	.align	16, 0x90
	.type	zpeekstring,@function
zpeekstring:                            # @zpeekstring
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
	movq	%rdi, %r15
	movq	624(%r15), %r12
	leaq	-16(%r12), %r14
	movzwl	-16(%r12), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB12_1
# BB#4:                                 # %do.body.9
	movq	-8(%r12), %rbx
	movzwl	264(%rbx), %ecx
	movl	-12(%r12), %eax
	cmpl	%eax, %ecx
	je	.LBB12_11
# BB#5:                                 # %if.then.16
	testw	%cx, %cx
	jne	.LBB12_10
# BB#6:                                 # %land.lhs.true
	movzwl	266(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB12_10
# BB#7:                                 # %lor.lhs.false.i
	movl	$-7, %eax
	cmpq	$0, 304(%rbx)
	je	.LBB12_25
# BB#8:                                 # %if.end.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB12_25
# BB#9:                                 # %file_switch_to_read.exit.thread46
	movw	266(%rbx), %ax
	movw	%ax, 264(%rbx)
	movw	$0, 266(%rbx)
	jmp	.LBB12_11
.LBB12_1:                               # %if.then
	movzbl	1(%r14), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB12_25
# BB#2:                                 # %cond.true
	movq	%r14, %rdi
	jmp	.LBB12_3
.LBB12_10:                              # %if.else
	movq	256(%r15), %rbx
.LBB12_11:                              # %do.end.37
	movzwl	(%r12), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB12_12
# BB#14:                                # %if.end.56
	movl	4(%r12), %r13d
	jmp	.LBB12_15
	.align	16, 0x90
.LBB12_23:                              # %cleanup.72.thread50
                                        #   in Loop: Header=BB12_15 Depth=1
	movq	%rbx, %rdi
	callq	s_process_read_buf
.LBB12_15:                              # %if.end.56
                                        # =>This Inner Loop Header: Depth=1
	movl	120(%rbx), %ebp
	movq	112(%rbx), %rsi
	subl	%esi, %ebp
	cmpl	%r13d, %ebp
	jae	.LBB12_24
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB12_15 Depth=1
	movswl	152(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB12_17
# BB#22:                                # %sw.bb
                                        #   in Loop: Header=BB12_15 Depth=1
	movl	$-15, %eax
	cmpl	144(%rbx), %r13d
	jb	.LBB12_23
	jmp	.LBB12_25
.LBB12_12:                              # %if.then.44
	movzbl	1(%r12), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB12_25
# BB#13:                                # %cond.true.51
	movq	%r12, %rdi
.LBB12_3:                               # %cond.true
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB12_17:                              # %while.body
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB12_18
# BB#29:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zpeekstring, %r9d
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	s_handle_read_exception # TAILCALL
.LBB12_18:                              # %while.body
	cmpl	$-1, %eax
	jne	.LBB12_19
.LBB12_24:                              # %while.end
	cmpl	%r13d, %ebp
	cmoval	%r13d, %ebp
	movq	8(%r12), %rdi
	incq	%rsi
	movl	%ebp, %edx
	callq	memcpy
	movl	%ebp, 4(%r12)
	movups	(%r12), %xmm0
	movups	%xmm0, (%r14)
	cmpl	%r13d, %ebp
	sete	%al
	movzbl	%al, %eax
	movw	%ax, 8(%r12)
	movw	$256, (%r12)            # imm = 0x100
	xorl	%eax, %eax
.LBB12_25:                              # %cleanup.95
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_19:                              # %sw.default.i
	movq	-8(%r12), %rax
.LBB12_20:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB12_26
# BB#21:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB12_20 Depth=1
	testb	%cl, %cl
	je	.LBB12_20
	jmp	.LBB12_27
.LBB12_26:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB12_25
.LBB12_27:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r15, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB12_25
# BB#28:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
	jmp	.LBB12_25
.Lfunc_end12:
	.size	zpeekstring, .Lfunc_end12-zpeekstring
	.cfi_endproc

	.align	16, 0x90
	.type	zprint,@function
zprint:                                 # @zprint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 80
.Ltmp80:
	.cfi_offset %rbx, -48
.Ltmp81:
	.cfi_offset %r12, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB13_1
# BB#3:                                 # %if.end
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	zget_stdout
	testl	%eax, %eax
	js	.LBB13_20
# BB#4:                                 # %if.end.11
	movq	16(%rsp), %rdi
	movq	8(%rbx), %rbp
	movl	4(%rbx), %r12d
	leaq	28(%rsp), %rcx
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	sputs
	movl	%eax, %r15d
	andl	$-2, %eax
	cmpl	$-4, %eax
	jne	.LBB13_6
# BB#5:                                 # %sw.bb.i
	movl	28(%rsp), %eax
	addq	%rax, %rbp
	movq	%rbp, 8(%rbx)
	subl	%eax, %r12d
	movl	%r12d, 4(%rbx)
.LBB13_6:                               # %write_string.exit
	testl	%r15d, %r15d
	js	.LBB13_8
# BB#7:                                 # %if.then.15
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB13_20
.LBB13_1:                               # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB13_20
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB13_20:                              # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_8:                               # %if.end.19
	movq	16(%rsp), %rsi
	leaq	(%rsp), %rdi
	movl	$.L.str, %edx
	callq	make_stream_file
	leal	4(%r15), %eax
	cmpl	$2, %eax
	jae	.LBB13_9
# BB#16:                                # %handle_write_status.exit
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zwritestring, %r9d
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	s_handle_write_exception
	cmpl	$5, %eax
	jne	.LBB13_20
# BB#17:                                # %do.body
	leaq	16(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB13_19
# BB#18:                                # %if.then.30
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB13_20
.LBB13_9:                               # %if.end.19
	movl	$1, %eax
	cmpl	$-1, %r15d
	je	.LBB13_20
# BB#10:                                # %sw.default.i
	movq	8(%rsp), %rax
	.align	16, 0x90
.LBB13_11:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB13_13
# BB#12:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB13_11 Depth=1
	testb	%cl, %cl
	je	.LBB13_11
	jmp	.LBB13_14
.LBB13_19:                              # %if.else
	movq	%rax, 624(%r14)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movl	$5, %eax
	jmp	.LBB13_20
.LBB13_13:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB13_20
.LBB13_14:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB13_20
# BB#15:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
	jmp	.LBB13_20
.Lfunc_end13:
	.size	zprint, .Lfunc_end13-zprint
	.cfi_endproc

	.align	16, 0x90
	.type	zread,@function
zread:                                  # @zread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 32
.Ltmp88:
	.cfi_offset %rbx, -32
.Ltmp89:
	.cfi_offset %r14, -24
.Ltmp90:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB14_1
# BB#3:                                 # %do.body.7
	movq	8(%rbx), %r15
	movzwl	264(%r15), %ecx
	movl	4(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB14_10
# BB#4:                                 # %if.then.12
	testw	%cx, %cx
	jne	.LBB14_9
# BB#5:                                 # %land.lhs.true
	movzwl	266(%r15), %ecx
	cmpl	%eax, %ecx
	jne	.LBB14_9
# BB#6:                                 # %lor.lhs.false.i
	movl	$-7, %eax
	cmpq	$0, 304(%r15)
	je	.LBB14_25
# BB#7:                                 # %if.end.i
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB14_25
# BB#8:                                 # %file_switch_to_read.exit.thread40
	movw	266(%r15), %ax
	movw	%ax, 264(%r15)
	movw	$0, 266(%r15)
	jmp	.LBB14_10
.LBB14_1:                               # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB14_25
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB14_9:                               # %if.else
	movq	256(%r14), %r15
.LBB14_10:                              # %do.body.32
	leaq	16(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB14_12
# BB#11:                                # %if.then.37
	movl	$1, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB14_25
.LBB14_12:                              # %if.else.40
	movq	%rax, 624(%r14)
	movq	112(%r15), %rax
	movq	120(%r15), %rcx
	subq	%rax, %rcx
	cmpq	$2, %rcx
	jl	.LBB14_14
# BB#13:                                # %cond.end.61.thread
	leaq	1(%rax), %rcx
	movq	%rcx, 112(%r15)
	movzbl	1(%rax), %eax
	jmp	.LBB14_15
.LBB14_14:                              # %cond.end.61
	movl	$1, %esi
	movq	%r15, %rdi
	callq	spgetcc
	testl	%eax, %eax
	js	.LBB14_16
.LBB14_15:                              # %if.then.65
	cltq
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	movw	$1, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
.LBB14_25:                              # %cleanup.92
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB14_16:                              # %if.else.75
	addq	$-16, 624(%r14)
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB14_17
# BB#26:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zread, %r9d
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	s_handle_read_exception # TAILCALL
.LBB14_17:                              # %if.else.75
	cmpl	$-1, %eax
	jne	.LBB14_19
# BB#18:                                # %if.then.83
	movw	$0, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	xorl	%eax, %eax
	jmp	.LBB14_25
.LBB14_19:                              # %sw.default.i
	movq	8(%rbx), %rax
.LBB14_20:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB14_22
# BB#21:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB14_20 Depth=1
	testb	%cl, %cl
	je	.LBB14_20
	jmp	.LBB14_23
.LBB14_22:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB14_25
.LBB14_23:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB14_25
# BB#24:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
	jmp	.LBB14_25
.Lfunc_end14:
	.size	zread, .Lfunc_end14-zread
	.cfi_endproc

	.align	16, 0x90
	.type	zreadhexstring,@function
zreadhexstring:                         # @zreadhexstring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	movzwl	(%rsi), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB15_1
# BB#3:                                 # %if.end
	xorl	%edx, %edx
	movl	$-1, %ecx
	jmp	zreadhexstring_at       # TAILCALL
.LBB15_1:                               # %if.then
	movzbl	1(%rsi), %eax
	cmpl	$18, %eax
	jne	.LBB15_2
# BB#4:                                 # %cleanup
	movl	$-7, %eax
	retq
.LBB15_2:                               # %cond.true
	movq	%rsi, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end15:
	.size	zreadhexstring, .Lfunc_end15-zreadhexstring
	.cfi_endproc

	.align	16, 0x90
	.type	zreadline,@function
zreadline:                              # @zreadline
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	zreadline_at            # TAILCALL
.Lfunc_end16:
	.size	zreadline, .Lfunc_end16-zreadline
	.cfi_endproc

	.align	16, 0x90
	.type	zreadstring,@function
zreadstring:                            # @zreadstring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	xorl	%edx, %edx
	jmp	zreadstring_at          # TAILCALL
.Lfunc_end17:
	.size	zreadstring, .Lfunc_end17-zreadstring
	.cfi_endproc

	.align	16, 0x90
	.type	zresetfile,@function
zresetfile:                             # @zresetfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$3, %eax
	jne	.LBB18_4
# BB#1:                                 # %if.end
	movq	8(%rdi), %rax
	movw	266(%rax), %cx
	orw	264(%rax), %cx
	movzwl	%cx, %ecx
	cmpl	4(%rdi), %ecx
	jne	.LBB18_3
# BB#2:                                 # %if.then.7
	movq	%rax, %rdi
	callq	*200(%rax)
	movq	624(%rbx), %rdi
.LBB18_3:                               # %cleanup
	addq	$-16, %rdi
	movq	%rdi, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB18_4:                               # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end18:
	.size	zresetfile, .Lfunc_end18-zresetfile
	.cfi_endproc

	.align	16, 0x90
	.type	zsetfileposition,@function
zsetfileposition:                       # @zsetfileposition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB19_6
# BB#1:                                 # %do.body
	movzbl	-15(%rdi), %eax
	cmpl	$3, %eax
	jne	.LBB19_7
# BB#2:                                 # %if.end.11
	movq	-8(%rdi), %rcx
	movw	266(%rcx), %ax
	orw	264(%rcx), %ax
	movzwl	%ax, %edx
	movl	$-7, %eax
	cmpl	-12(%rdi), %edx
	jne	.LBB19_5
# BB#3:                                 # %do.end
	movq	8(%rdi), %rsi
	movq	%rcx, %rdi
	callq	spseek
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB19_5
# BB#4:                                 # %if.end.26
	addq	$-32, 624(%rbx)
	xorl	%eax, %eax
.LBB19_5:                               # %cleanup
	popq	%rbx
	retq
.LBB19_6:                               # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB19_7:                               # %if.then.8
	addq	$-16, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end19:
	.size	zsetfileposition, .Lfunc_end19-zsetfileposition
	.cfi_endproc

	.align	16, 0x90
	.type	zunread,@function
zunread:                                # @zunread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 32
.Ltmp98:
	.cfi_offset %rbx, -32
.Ltmp99:
	.cfi_offset %r14, -24
.Ltmp100:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB20_1
# BB#3:                                 # %do.body.9
	movq	-8(%rbx), %r15
	movzwl	264(%r15), %ecx
	movl	-12(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB20_10
# BB#4:                                 # %if.then.16
	testw	%cx, %cx
	jne	.LBB20_9
# BB#5:                                 # %land.lhs.true
	movzwl	266(%r15), %ecx
	cmpl	%eax, %ecx
	jne	.LBB20_9
# BB#6:                                 # %lor.lhs.false.i
	movl	$-7, %eax
	cmpq	$0, 304(%r15)
	je	.LBB20_14
# BB#7:                                 # %if.end.i
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB20_14
# BB#8:                                 # %file_switch_to_read.exit.thread22
	movw	266(%r15), %ax
	movw	%ax, 264(%r15)
	movw	$0, 266(%r15)
	jmp	.LBB20_10
.LBB20_1:                               # %if.then
	addq	$-16, %rbx
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB20_14
	jmp	.LBB20_2
.LBB20_9:                               # %if.else
	movq	256(%r14), %r15
.LBB20_10:                              # %do.end.37
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB20_2
# BB#11:                                # %if.end.46
	movq	8(%rbx), %rcx
	movl	$-15, %eax
	cmpq	$255, %rcx
	ja	.LBB20_14
# BB#12:                                # %if.end.51
	movzbl	%cl, %esi
	movq	%r15, %rdi
	callq	sungetc
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB20_14
# BB#13:                                # %if.end.57
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
.LBB20_14:                              # %cleanup.62
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB20_2:                               # %cond.true
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.Lfunc_end20:
	.size	zunread, .Lfunc_end20-zunread
	.cfi_endproc

	.align	16, 0x90
	.type	zwritecvp,@function
zwritecvp:                              # @zwritecvp
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	jmp	zwritecvp_at            # TAILCALL
.Lfunc_end21:
	.size	zwritecvp, .Lfunc_end21-zwritecvp
	.cfi_endproc

	.align	16, 0x90
	.type	zwritehexstring,@function
zwritehexstring:                        # @zwritehexstring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rsi
	xorl	%edx, %edx
	jmp	zwritehexstring_at      # TAILCALL
.Lfunc_end22:
	.size	zwritehexstring, .Lfunc_end22-zwritehexstring
	.cfi_endproc

	.align	16, 0x90
	.type	zwritestring,@function
zwritestring:                           # @zwritestring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp107:
	.cfi_def_cfa_offset 64
.Ltmp108:
	.cfi_offset %rbx, -56
.Ltmp109:
	.cfi_offset %r12, -48
.Ltmp110:
	.cfi_offset %r13, -40
.Ltmp111:
	.cfi_offset %r14, -32
.Ltmp112:
	.cfi_offset %r15, -24
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$784, %eax              # imm = 0x310
	jne	.LBB23_1
# BB#4:                                 # %do.body.9
	movq	-8(%rbx), %r12
	movzwl	266(%r12), %eax
	movl	-12(%rbx), %ecx
	cmpl	%ecx, %eax
	je	.LBB23_9
# BB#5:                                 # %if.then.16
	movzwl	264(%r12), %edx
	movl	$-7, %eax
	cmpl	%ecx, %edx
	jne	.LBB23_25
# BB#6:                                 # %lor.lhs.false.i
	cmpq	$0, 304(%r12)
	je	.LBB23_25
# BB#7:                                 # %if.end.i
	movl	$1, %esi
	movq	%r12, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB23_25
# BB#8:                                 # %file_switch_to_write.exit.thread24
	movw	264(%r12), %ax
	movw	%ax, 266(%r12)
	movw	$0, 264(%r12)
.LBB23_9:                               # %do.end.25
	movzwl	(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB23_10
# BB#12:                                # %if.end.44
	movq	8(%rbx), %rbp
	movl	4(%rbx), %r13d
	leaq	4(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	callq	sputs
	movl	%eax, %edx
	andl	$-2, %eax
	cmpl	$-4, %eax
	jne	.LBB23_14
# BB#13:                                # %sw.bb.i
	movl	4(%rsp), %eax
	addq	%rax, %rbp
	movq	%rbp, 8(%rbx)
	subl	%eax, %r13d
	movl	%r13d, 4(%rbx)
.LBB23_14:                              # %write_string.exit
	testl	%edx, %edx
	js	.LBB23_16
# BB#15:                                # %if.then.48
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB23_25
.LBB23_1:                               # %if.then
	movzbl	1(%r15), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB23_25
# BB#2:                                 # %cond.true
	movq	%r15, %rdi
	jmp	.LBB23_3
.LBB23_10:                              # %if.then.32
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB23_25
# BB#11:                                # %cond.true.39
	movq	%rbx, %rdi
.LBB23_3:                               # %cond.true
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB23_16:                              # %if.end.53
	leal	4(%rdx), %eax
	cmpl	$2, %eax
	jae	.LBB23_17
# BB#24:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zwritestring, %r9d
	movq	%r14, %rdi
	movl	%edx, %esi
	movq	%r15, %rdx
	callq	s_handle_write_exception
	jmp	.LBB23_25
.LBB23_17:                              # %if.end.53
	movl	$1, %eax
	cmpl	$-1, %edx
	je	.LBB23_25
# BB#18:                                # %sw.default.i
	movq	-8(%rbx), %rax
.LBB23_19:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB23_21
# BB#20:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB23_19 Depth=1
	testb	%cl, %cl
	je	.LBB23_19
	jmp	.LBB23_22
.LBB23_21:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB23_25
.LBB23_22:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB23_25
# BB#23:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
.LBB23_25:                              # %cleanup.56
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	zwritestring, .Lfunc_end23-zwritestring
	.cfi_endproc

	.align	16, 0x90
	.type	zreadhexstring_continue,@function
zreadhexstring_continue:                # @zreadhexstring_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$11, %eax
	jne	.LBB24_5
# BB#1:                                 # %if.end
	movl	8(%rsi), %ecx
	movl	%ecx, %edx
	andl	$16777215, %edx         # imm = 0xFFFFFF
	cmpl	-12(%rsi), %edx
	movl	$-15, %eax
	ja	.LBB24_8
# BB#2:                                 # %if.end
	sarl	$24, %ecx
	leal	1(%rcx), %edi
	cmpl	$16, %edi
	ja	.LBB24_8
# BB#3:                                 # %if.end.16
	addq	$-16, %rsi
	movzwl	(%rsi), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB24_4
# BB#6:                                 # %if.end.34
	movq	%rbx, %rdi
	callq	zreadhexstring_at
	testl	%eax, %eax
	js	.LBB24_8
# BB#7:                                 # %if.then.39
	addq	$-16, 624(%rbx)
	jmp	.LBB24_8
.LBB24_4:                               # %if.then.24
	movzbl	1(%rsi), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	jne	.LBB24_5
.LBB24_8:                               # %cleanup
	popq	%rbx
	retq
.LBB24_5:                               # %if.then
	movq	%rsi, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end24:
	.size	zreadhexstring_continue, .Lfunc_end24-zreadhexstring_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zreadline_continue,@function
zreadline_continue:                     # @zreadline_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movl	-12(%rsi), %edx
	movzbl	1(%rsi), %eax
	cmpl	$11, %eax
	jne	.LBB25_8
# BB#1:                                 # %if.end
	movq	8(%rsi), %r8
	movl	$-15, %eax
	cmpq	%rdx, %r8
	ja	.LBB25_7
# BB#2:                                 # %if.end.11
	addq	$-16, %rsi
	testl	%r8d, %r8d
	je	.LBB25_3
# BB#4:                                 # %cond.false
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r8d, %edx
	jmp	.LBB25_5
.LBB25_8:                               # %if.then
	movq	%rsi, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.LBB25_3:                               # %cond.true
	movl	$1, %ecx
	movq	%rbx, %rdi
.LBB25_5:                               # %cond.end
	callq	zreadline_at
	testl	%eax, %eax
	js	.LBB25_7
# BB#6:                                 # %if.then.23
	addq	$-16, 624(%rbx)
.LBB25_7:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end25:
	.size	zreadline_continue, .Lfunc_end25-zreadline_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zreadstring_continue,@function
zreadstring_continue:                   # @zreadstring_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB26_6
# BB#1:                                 # %if.end
	movq	8(%rcx), %rdx
	movl	$-15, %eax
	testq	%rdx, %rdx
	js	.LBB26_5
# BB#2:                                 # %lor.lhs.false
	movl	-12(%rcx), %esi
	cmpq	%rsi, %rdx
	jg	.LBB26_5
# BB#3:                                 # %if.end.11
	addq	$-16, %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	zreadstring_at
	testl	%eax, %eax
	js	.LBB26_5
# BB#4:                                 # %if.then.19
	addq	$-16, 624(%rbx)
.LBB26_5:                               # %cleanup
	popq	%rbx
	retq
.LBB26_6:                               # %if.then
	movq	%rcx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end26:
	.size	zreadstring_continue, .Lfunc_end26-zreadstring_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zwritecvp_continue,@function
zwritecvp_continue:                     # @zwritecvp_continue
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB27_3
# BB#1:                                 # %if.end
	movq	8(%rax), %rdx
	movl	%edx, %ecx
	cmpq	%rcx, %rdx
	jne	.LBB27_2
# BB#4:                                 # %if.end.9
	addq	$-16, %rax
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	jmp	zwritecvp_at            # TAILCALL
.LBB27_3:                               # %if.then
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.LBB27_2:                               # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end27:
	.size	zwritecvp_continue, .Lfunc_end27-zwritecvp_continue
	.cfi_endproc

	.align	16, 0x90
	.type	zwritehexstring_continue,@function
zwritehexstring_continue:               # @zwritehexstring_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB28_5
# BB#1:                                 # %if.end
	movq	8(%rcx), %rdx
	movl	$-15, %eax
	cmpq	$1, %rdx
	ja	.LBB28_4
# BB#2:                                 # %if.end.5
	addq	$-16, %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	zwritehexstring_at
	testl	%eax, %eax
	js	.LBB28_4
# BB#3:                                 # %if.then.12
	addq	$-16, 624(%rbx)
.LBB28_4:                               # %cleanup
	popq	%rbx
	retq
.LBB28_5:                               # %if.then
	movq	%rcx, %rdi
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end28:
	.size	zwritehexstring_continue, .Lfunc_end28-zwritehexstring_continue
	.cfi_endproc

	.globl	file_switch_to_read
	.align	16, 0x90
	.type	file_switch_to_read,@function
file_switch_to_read:                    # @file_switch_to_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbx, -16
	movq	8(%rdi), %rbx
	movzwl	266(%rbx), %ecx
	movl	$-7, %eax
	cmpl	4(%rdi), %ecx
	jne	.LBB29_4
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 304(%rbx)
	je	.LBB29_4
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB29_4
# BB#3:                                 # %if.end.7
	movw	266(%rbx), %ax
	movw	%ax, 264(%rbx)
	movw	$0, 266(%rbx)
	xorl	%eax, %eax
.LBB29_4:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end29:
	.size	file_switch_to_read, .Lfunc_end29-file_switch_to_read
	.cfi_endproc

	.align	16, 0x90
	.type	zreadhexstring_at,@function
zreadhexstring_at:                      # @zreadhexstring_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp130:
	.cfi_def_cfa_offset 128
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movl	%ecx, 52(%rsp)
	leaq	-16(%r12), %rdi
	movzwl	-16(%r12), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB30_1
# BB#3:                                 # %do.body.9
	movq	-8(%r12), %rbx
	movzwl	264(%rbx), %ecx
	movl	-12(%r12), %eax
	cmpl	%eax, %ecx
	jne	.LBB30_5
# BB#4:
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	jmp	.LBB30_11
.LBB30_1:                               # %if.then
	movzbl	1(%rdi), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB30_29
# BB#2:                                 # %cond.true
	callq	check_type_failed
	jmp	.LBB30_29
.LBB30_5:                               # %if.then.16
	testw	%cx, %cx
	jne	.LBB30_10
# BB#6:                                 # %land.lhs.true
	movzwl	266(%rbx), %ecx
	cmpl	%eax, %ecx
	jne	.LBB30_10
# BB#7:                                 # %lor.lhs.false.i
	movl	$-7, %eax
	cmpq	$0, 304(%rbx)
	je	.LBB30_29
# BB#8:                                 # %if.end.i
	xorl	%esi, %esi
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	sswitch
	movq	%r15, %rdx
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB30_29
# BB#9:                                 # %file_switch_to_read.exit.thread43
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movw	266(%rbx), %ax
	movw	%ax, 264(%rbx)
	movw	$0, 266(%rbx)
	jmp	.LBB30_12
.LBB30_10:                              # %if.else
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	256(%rbp), %rbx
.LBB30_11:                              # %do.end.37
	movq	%rbp, 8(%rsp)           # 8-byte Spill
.LBB30_12:                              # %do.end.37
	movq	8(%r12), %r15
	movl	%r14d, %eax
	leaq	-1(%r15,%rax), %rax
	movl	4(%r12), %ecx
	movq	%rax, 32(%rsp)
	leaq	-1(%r15,%rcx), %rax
	movq	%rax, 40(%rsp)
	leaq	112(%rbx), %rbp
	leaq	24(%rsp), %r13
	leaq	52(%rsp), %r14
	jmp	.LBB30_13
	.align	16, 0x90
.LBB30_17:                              # %if.end.64
                                        #   in Loop: Header=BB30_13 Depth=1
	decq	(%rbp)
.LBB30_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	s_hex_process
	testl	%eax, %eax
	jne	.LBB30_14
# BB#16:                                # %if.end.59
                                        #   in Loop: Header=BB30_13 Depth=1
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	spgetcc
	testl	%eax, %eax
	jns	.LBB30_17
	jmp	.LBB30_18
.LBB30_14:                              # %for.cond
	cmpl	$1, %eax
	jne	.LBB30_18
# BB#15:                                # %if.then.49
	movups	(%r12), %xmm0
	movq	16(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	movw	$1, 8(%r12)
	jmp	.LBB30_28
.LBB30_18:                              # %for.end
	movl	32(%rsp), %ecx
	incl	%ecx
	subl	%r15d, %ecx
	cmpl	$-1, %eax
	je	.LBB30_27
# BB#19:                                # %if.then.73
	movl	%eax, %edx
	andl	$-2, %edx
	cmpl	$-4, %edx
	jne	.LBB30_20
# BB#26:                                # %sw.bb.1.i
	movl	52(%rsp), %edx
	shll	$24, %edx
	orl	%ecx, %edx
	movq	%rdx, 64(%rsp)
	movw	$2816, 56(%rsp)         # imm = 0xB00
	leaq	56(%rsp), %rcx
	movl	$1, %r8d
	movl	$zreadhexstring_continue, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	%eax, %esi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	s_handle_read_exception
	jmp	.LBB30_29
.LBB30_27:                              # %if.end.76
	movups	(%r12), %xmm0
	movq	16(%rsp), %rax          # 8-byte Reload
	movups	%xmm0, (%rax)
	movl	%ecx, -12(%r12)
	movw	$0, 8(%r12)
.LBB30_28:                              # %cleanup.85
	movw	$256, (%r12)            # imm = 0x100
	xorl	%eax, %eax
	jmp	.LBB30_29
.LBB30_20:                              # %sw.default.i
	movq	-8(%r12), %rax
	movq	8(%rsp), %rdi           # 8-byte Reload
	.align	16, 0x90
.LBB30_21:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB30_23
# BB#22:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB30_21 Depth=1
	testb	%cl, %cl
	je	.LBB30_21
	jmp	.LBB30_24
.LBB30_23:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB30_29
.LBB30_24:                              # %if.then.i.i
	addq	$28, %rsi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB30_29
# BB#25:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
.LBB30_29:                              # %cleanup.85
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	zreadhexstring_at, .Lfunc_end30-zreadhexstring_at
	.cfi_endproc

	.align	16, 0x90
	.type	zreadline_at,@function
zreadline_at:                           # @zreadline_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp142:
	.cfi_def_cfa_offset 112
.Ltmp143:
	.cfi_offset %rbx, -48
.Ltmp144:
	.cfi_offset %r12, -40
.Ltmp145:
	.cfi_offset %r13, -32
.Ltmp146:
	.cfi_offset %r14, -24
.Ltmp147:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	%edx, 44(%rsp)
	movl	%ecx, 40(%rsp)
	movzwl	(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB31_1
# BB#4:                                 # %do.body
	leaq	-16(%rbx), %r15
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB31_5
# BB#7:                                 # %do.body.28
	movq	-8(%rbx), %r13
	movzwl	264(%r13), %ecx
	movl	-12(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB31_14
# BB#8:                                 # %if.then.35
	testw	%cx, %cx
	jne	.LBB31_13
# BB#9:                                 # %land.lhs.true
	movzwl	266(%r13), %ecx
	cmpl	%eax, %ecx
	jne	.LBB31_13
# BB#10:                                # %lor.lhs.false.i
	movl	$-7, %r12d
	cmpq	$0, 304(%r13)
	je	.LBB31_34
# BB#11:                                # %if.end.i
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	sswitch
	movl	$-12, %r12d
	testl	%eax, %eax
	js	.LBB31_34
# BB#12:                                # %file_switch_to_read.exit.thread59
	movw	266(%r13), %ax
	movw	%ax, 264(%r13)
	movw	$0, 266(%r13)
	jmp	.LBB31_14
.LBB31_1:                               # %if.then
	movzbl	1(%rbx), %eax
	movl	$-7, %r12d
	cmpl	$18, %eax
	je	.LBB31_34
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	jmp	.LBB31_3
.LBB31_5:                               # %if.then.13
	movzbl	1(%r15), %eax
	movl	$-7, %r12d
	cmpl	$3, %eax
	je	.LBB31_34
# BB#6:                                 # %cond.true.21
	movq	%r15, %rdi
.LBB31_3:                               # %cleanup.85
	callq	check_type_failed
	movl	%eax, %r12d
	jmp	.LBB31_34
.LBB31_13:                              # %if.else
	movq	256(%r14), %r13
.LBB31_14:                              # %do.end.56
	movq	8(%rbx), %rax
	movq	%rax, 24(%rsp)
	movl	4(%rbx), %eax
	movl	%eax, 32(%rsp)
	movq	%r13, %rdi
	callq	zis_stdin
	testl	%eax, %eax
	movl	$sreadline, %eax
	movl	$gp_readline, %r10d
	cmoveq	%rax, %r10
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	44(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$zis_stdin, 16(%rsp)
	xorl	%r12d, %r12d
	leaq	24(%rsp), %r8
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	callq	*%r10
	leal	1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB31_15
# BB#33:                                # %sw.epilog
	movl	44(%rsp), %ecx
	movl	%ecx, 4(%rbx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	jmp	.LBB31_34
.LBB31_15:                              # %do.end.56
	movl	$-15, %r12d
	cmpl	$1, %eax
	je	.LBB31_34
# BB#16:                                # %sw.default
	movl	44(%rsp), %ecx
	movl	40(%rsp), %edx
	movl	%edx, %esi
	orl	%ecx, %esi
	je	.LBB31_17
# BB#26:                                # %if.else.68
	testl	%edx, %edx
	je	.LBB31_28
# BB#27:                                # %if.then.70
	movl	%ecx, 4(%rbx)
	movl	$0, 44(%rsp)
	xorl	%ecx, %ecx
.LBB31_28:                              # %if.end.73
	movl	%eax, %edx
	andl	$-2, %edx
	cmpl	$-4, %edx
	jne	.LBB31_29
# BB#32:                                # %sw.bb.1.i.53
	movl	%ecx, %ecx
	movq	%rcx, 56(%rsp)
	movw	$2816, 48(%rsp)         # imm = 0xB00
	leaq	48(%rsp), %rcx
	movl	$1, %r8d
	movl	$zreadline_continue, %r9d
	jmp	.LBB31_25
.LBB31_17:                              # %if.then.65
	movl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	$-4, %ecx
	jne	.LBB31_18
# BB#24:                                # %sw.bb.1.i
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$zreadline, %r9d
.LBB31_25:                              # %cleanup.85
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%r15, %rdx
	callq	s_handle_read_exception
	movl	%eax, %r12d
	jmp	.LBB31_34
.LBB31_29:                              # %sw.default.i.36
	movq	-8(%rbx), %rax
.LBB31_30:                              # %for.cond.i.i.45
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB31_21
# BB#31:                                # %land.rhs.i.i.46
                                        #   in Loop: Header=BB31_30 Depth=1
	testb	%cl, %cl
	je	.LBB31_30
	jmp	.LBB31_22
.LBB31_18:                              # %sw.default.i
	movq	-8(%rbx), %rax
.LBB31_19:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB31_21
# BB#20:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB31_19 Depth=1
	testb	%cl, %cl
	je	.LBB31_19
	jmp	.LBB31_22
.LBB31_21:                              # %for.end.i.i
	movl	$-12, %r12d
	testb	%cl, %cl
	je	.LBB31_34
.LBB31_22:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r14, %rdi
	callq	gs_errorinfo_put_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB31_34
# BB#23:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %r12d
.LBB31_34:                              # %cleanup.85
	movl	%r12d, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end31:
	.size	zreadline_at, .Lfunc_end31-zreadline_at
	.cfi_endproc

	.align	16, 0x90
	.type	zreadstring_at,@function
zreadstring_at:                         # @zreadstring_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 80
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movzwl	(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$4624, %eax             # imm = 0x1210
	jne	.LBB32_1
# BB#3:                                 # %do.body
	leaq	-16(%rbx), %r14
	movzwl	-16(%rbx), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB32_4
# BB#6:                                 # %do.body.28
	movq	-8(%rbx), %r12
	movzwl	264(%r12), %ecx
	movl	-12(%rbx), %eax
	cmpl	%eax, %ecx
	je	.LBB32_13
# BB#7:                                 # %if.then.35
	testw	%cx, %cx
	jne	.LBB32_12
# BB#8:                                 # %land.lhs.true
	movzwl	266(%r12), %ecx
	cmpl	%eax, %ecx
	jne	.LBB32_12
# BB#9:                                 # %lor.lhs.false.i
	movl	$-7, %eax
	cmpq	$0, 304(%r12)
	je	.LBB32_24
# BB#10:                                # %if.end.i
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	sswitch
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB32_24
# BB#11:                                # %file_switch_to_read.exit.thread35
	movw	266(%r12), %ax
	movw	%ax, 264(%r12)
	movw	$0, 266(%r12)
	jmp	.LBB32_13
.LBB32_1:                               # %if.then
	movzbl	1(%rbx), %ecx
	movl	$-7, %eax
	cmpl	$18, %ecx
	je	.LBB32_24
# BB#2:                                 # %cond.true
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB32_24
.LBB32_4:                               # %if.then.13
	movzbl	1(%r14), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB32_24
# BB#5:                                 # %cond.true.21
	movq	%r14, %rdi
	callq	check_type_failed
	jmp	.LBB32_24
.LBB32_12:                              # %if.else
	movq	256(%r15), %r12
.LBB32_13:                              # %do.end.56
	movl	4(%rbx), %r13d
	movl	%ebp, %esi
	addq	8(%rbx), %rsi
	movl	%r13d, %edx
	subl	%ebp, %edx
	leaq	4(%rsp), %rcx
	movq	%r12, %rdi
	callq	sgets
	addl	4(%rsp), %ebp
	movl	%ebp, 4(%rsp)
	leal	4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB32_14
# BB#21:                                # %sw.bb.1.i
	movl	%ebp, %ecx
	movq	%rcx, 16(%rsp)
	movw	$2816, 8(%rsp)          # imm = 0xB00
	leaq	8(%rsp), %rcx
	movl	$1, %r8d
	movl	$zreadstring_continue, %r9d
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%r14, %rdx
	callq	s_handle_read_exception
	jmp	.LBB32_24
.LBB32_14:                              # %do.end.56
	incl	%eax
	cmpl	$2, %eax
	jae	.LBB32_15
# BB#22:                                # %sw.epilog
	movl	$-15, %eax
	testl	%r13d, %r13d
	je	.LBB32_24
# BB#23:                                # %if.end.67
	movl	%ebp, 4(%rbx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14)
	cmpl	%r13d, %ebp
	sete	%al
	movzbl	%al, %eax
	movw	%ax, 8(%rbx)
	movw	$256, (%rbx)            # imm = 0x100
	xorl	%eax, %eax
	jmp	.LBB32_24
.LBB32_15:                              # %sw.default.i
	movq	-8(%rbx), %rax
	.align	16, 0x90
.LBB32_16:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB32_18
# BB#17:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB32_16 Depth=1
	testb	%cl, %cl
	je	.LBB32_16
	jmp	.LBB32_19
.LBB32_18:                              # %for.end.i.i
	movl	$-12, %eax
	testb	%cl, %cl
	je	.LBB32_24
.LBB32_19:                              # %if.then.i.i
	addq	$28, %rsi
	movq	%r15, %rdi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB32_24
# BB#20:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
.LBB32_24:                              # %cleanup.78
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	zreadstring_at, .Lfunc_end32-zreadstring_at
	.cfi_endproc

	.align	16, 0x90
	.type	zwritecvp_at,@function
zwritecvp_at:                           # @zwritecvp_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp163:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp164:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp165:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp167:
	.cfi_def_cfa_offset 224
.Ltmp168:
	.cfi_offset %rbx, -56
.Ltmp169:
	.cfi_offset %r12, -48
.Ltmp170:
	.cfi_offset %r13, -40
.Ltmp171:
	.cfi_offset %r14, -32
.Ltmp172:
	.cfi_offset %r15, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r9d
	movq	%rsi, %rbx
	leaq	48(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	-32(%rbx), %r12
	movzwl	-32(%rbx), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$784, %eax              # imm = 0x310
	jne	.LBB33_1
# BB#3:                                 # %do.body.9
	movq	-24(%rbx), %r15
	movzwl	266(%r15), %eax
	movl	-28(%rbx), %ecx
	cmpl	%ecx, %eax
	je	.LBB33_8
# BB#4:                                 # %if.then.16
	movzwl	264(%r15), %edx
	movl	$-7, %eax
	cmpl	%ecx, %edx
	jne	.LBB33_37
# BB#5:                                 # %lor.lhs.false.i
	movq	%rdi, %r14
	cmpq	$0, 304(%r15)
	je	.LBB33_37
# BB#6:                                 # %if.end.i
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r9, %r13
	callq	sswitch
	movq	%r13, %r9
	movl	%eax, %ecx
	movl	$-12, %eax
	testl	%ecx, %ecx
	js	.LBB33_37
# BB#7:                                 # %file_switch_to_write.exit.thread58
	movw	264(%r15), %ax
	movw	%ax, 266(%r15)
	movw	$0, 264(%r15)
	movq	%r14, %rdi
.LBB33_8:                               # %do.end.25
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB33_9
# BB#10:                                # %if.end.34
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	leaq	-16(%rbx), %r13
	movl	8(%rbx), %r8d
	movq	8(%rdi), %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	leaq	48(%rsp), %rsi
	leaq	36(%rsp), %rcx
	movl	$100, %edx
	movq	%r13, %rdi
	movq	%r9, %r14
	callq	obj_cvp
	movl	%eax, %ebp
	cmpl	$-15, %ebp
	jne	.LBB33_13
# BB#11:                                # %if.then.42
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	40(%rsp), %rdx
	leaq	36(%rsp), %rcx
	movq	%r13, %rsi
	callq	obj_string_data
	movl	%eax, %ebp
	movl	36(%rsp), %ecx
	movl	$-15, %eax
	subl	%r14d, %ecx
	jb	.LBB33_37
# BB#12:                                # %if.end.50
	movl	%r14d, %eax
	addq	%rax, 40(%rsp)
	movl	%ecx, 36(%rsp)
.LBB33_13:                              # %if.end.52
	testl	%ebp, %ebp
	js	.LBB33_14
# BB#15:                                # %if.end.56
	movl	36(%rsp), %r13d
	movq	40(%rsp), %rsi
	leaq	152(%rsp), %rcx
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	sputs
	movl	%eax, %edx
	movl	%edx, %esi
	andl	$-2, %esi
	xorl	%ecx, %ecx
	cmpl	$-4, %esi
	cmovel	152(%rsp), %ecx
	movl	$-12, %eax
	leal	4(%rdx), %edi
	cmpl	$2, %edi
	jae	.LBB33_16
# BB#21:                                # %sw.bb
	subl	%r13d, %ecx
	addl	%r14d, %ecx
	addl	36(%rsp), %ecx
	movl	%ecx, 36(%rsp)
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jne	.LBB33_23
# BB#22:                                # %if.then.64
	addq	$-16, 624(%rdi)
.LBB33_23:                              # %if.end.65
	cmpl	$-4, %esi
	jne	.LBB33_24
# BB#30:                                # %sw.bb.1.i
	movl	%ecx, %eax
	movq	%rax, 160(%rsp)
	movw	$2816, 152(%rsp)        # imm = 0xB00
	leaq	152(%rsp), %rcx
	movl	$1, %r8d
	movl	$zwritecvp_continue, %r9d
	movl	%edx, %esi
	movq	%r12, %rdx
	callq	s_handle_write_exception
	jmp	.LBB33_37
.LBB33_1:                               # %if.then
	movzbl	1(%r12), %ecx
	movl	$-7, %eax
	cmpl	$3, %ecx
	je	.LBB33_37
# BB#2:                                 # %cond.true
	movq	%r12, %rdi
	callq	check_type_failed
	jmp	.LBB33_37
.LBB33_9:                               # %if.then.32
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB33_37
.LBB33_14:
	movl	%ebp, %eax
	jmp	.LBB33_37
.LBB33_16:                              # %if.end.56
	testl	%edx, %edx
	movl	$-12, %eax
	movl	20(%rsp), %edi          # 4-byte Reload
	jne	.LBB33_37
# BB#17:                                # %sw.epilog
	cmpl	$1, %ebp
	jne	.LBB33_36
# BB#18:                                # %if.then.70
	testl	%edi, %edi
	movq	24(%rsp), %rdx          # 8-byte Reload
	je	.LBB33_31
# BB#19:                                # %if.then.72
	movq	640(%rdx), %rax
	subq	624(%rdx), %rax
	cmpq	$15, %rax
	jle	.LBB33_20
.LBB33_31:                              # %if.end.84
	movq	520(%rdx), %rax
	leaq	16(%rax), %rcx
	testl	%edi, %edi
	movq	%rcx, 520(%rdx)
	movq	$zwritecvp_continue, 24(%rax)
	movq	520(%rdx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	je	.LBB33_32
# BB#33:                                # %do.body.104
	addq	$16, %rbx
	cmpq	640(%rdx), %rbx
	jbe	.LBB33_34
.LBB33_20:                              # %if.then.80
	movl	$1, 688(%rdx)
	movl	$-16, %eax
	jmp	.LBB33_37
.LBB33_24:                              # %sw.default.i
	movq	-24(%rbx), %rcx
	.align	16, 0x90
.LBB33_25:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movq	240(%rbx), %rcx
	movq	256(%rbx), %rsi
	testq	%rcx, %rcx
	movb	28(%rsi), %dl
	je	.LBB33_27
# BB#26:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB33_25 Depth=1
	testb	%dl, %dl
	je	.LBB33_25
	jmp	.LBB33_28
.LBB33_27:                              # %for.end.i.i
	testb	%dl, %dl
	je	.LBB33_37
.LBB33_28:                              # %if.then.i.i
	addq	$28, %rsi
	callq	gs_errorinfo_put_string
	testl	%eax, %eax
	js	.LBB33_37
# BB#29:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %eax
	jmp	.LBB33_37
.LBB33_36:                              # %if.end.134
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	624(%rdx), %rax
	leaq	-64(%rax), %rcx
	addq	$-48, %rax
	testl	%edi, %edi
	cmoveq	%rcx, %rax
	movq	%rax, 624(%rdx)
	xorl	%eax, %eax
	jmp	.LBB33_37
.LBB33_32:                              # %if.end.84.if.end.121_crit_edge
	movq	624(%rdx), %rbx
	jmp	.LBB33_35
.LBB33_34:                              # %if.else
	movq	%rbx, 624(%rdx)
.LBB33_35:                              # %if.end.121
	addl	36(%rsp), %r14d
	movq	%r14, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	movl	$5, %eax
.LBB33_37:                              # %cleanup.147
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	zwritecvp_at, .Lfunc_end33-zwritecvp_at
	.cfi_endproc

	.align	16, 0x90
	.type	zwritehexstring_at,@function
zwritehexstring_at:                     # @zwritehexstring_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp180:
	.cfi_def_cfa_offset 240
.Ltmp181:
	.cfi_offset %rbx, -56
.Ltmp182:
	.cfi_offset %r12, -48
.Ltmp183:
	.cfi_offset %r13, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	leaq	-16(%rbp), %r15
	movzwl	-16(%rbp), %eax
	andl	$16144, %eax            # imm = 0x3F10
	cmpl	$784, %eax              # imm = 0x310
	jne	.LBB34_1
# BB#4:                                 # %do.body.9
	movq	-8(%rbp), %r12
	movzwl	266(%r12), %ecx
	movl	-12(%rbp), %eax
	cmpl	%eax, %ecx
	je	.LBB34_9
# BB#5:                                 # %if.then.16
	movzwl	264(%r12), %ecx
	movl	$-7, %edx
	cmpl	%eax, %ecx
	jne	.LBB34_30
# BB#6:                                 # %lor.lhs.false.i
	cmpq	$0, 304(%r12)
	je	.LBB34_30
# BB#7:                                 # %if.end.i
	movl	$1, %esi
	movq	%r12, %rdi
	callq	sswitch
	movl	$-12, %edx
	testl	%eax, %eax
	js	.LBB34_30
# BB#8:                                 # %file_switch_to_write.exit.thread54
	movw	264(%r12), %ax
	movw	%ax, 266(%r12)
	movw	$0, 264(%r12)
.LBB34_9:                               # %do.end.25
	movzwl	(%rbp), %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$4640, %eax             # imm = 0x1220
	jne	.LBB34_10
# BB#12:                                # %if.end.44
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	4(%rbp), %r15d
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	je	.LBB34_29
# BB#13:                                # %while.body.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r14
	.align	16, 0x90
.LBB34_14:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_15 Depth 2
	cmpl	$64, %r15d
	movl	$64, %ebp
	cmovbl	%r15d, %ebp
	movl	%r15d, %eax
	notl	%eax
	cmpl	$-65, %eax
	movl	$-65, %ecx
	cmovbel	%ecx, %eax
	notl	%eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB34_15:                              # %do.body.54
                                        #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r13
	movzbl	(%r14,%r13), %ecx
	movq	%rcx, %rdx
	shrq	$4, %rdx
	movb	.L.str.29(%rdx), %dl
	movb	%dl, 32(%rsp,%r13,2)
	andl	$15, %ecx
	movb	.L.str.29(%rcx), %cl
	movb	%cl, 33(%rsp,%r13,2)
	leaq	1(%r13), %rcx
	cmpl	%ecx, %eax
	jne	.LBB34_15
# BB#16:                                # %do.end.65
                                        #   in Loop: Header=BB34_14 Depth=1
	leal	(%rbp,%rbp), %edx
	subl	%ebx, %edx
	movl	%ebx, %eax
	leaq	32(%rsp,%rax), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	leaq	168(%rsp), %rcx
	callq	sputs
	movl	168(%rsp), %ecx
	testl	%eax, %eax
	jne	.LBB34_17
# BB#28:                                # %cleanup.91
                                        #   in Loop: Header=BB34_14 Depth=1
	leaq	1(%r14,%r13), %r14
	xorl	%ebx, %ebx
	subl	%ebp, %r15d
	jne	.LBB34_14
.LBB34_29:                              # %while.end
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$-32, 624(%rax)
	xorl	%edx, %edx
	jmp	.LBB34_30
.LBB34_1:                               # %if.then
	movzbl	1(%r15), %eax
	movl	$-7, %edx
	cmpl	$3, %eax
	je	.LBB34_30
# BB#2:                                 # %cond.true
	movq	%r15, %rdi
	jmp	.LBB34_3
.LBB34_10:                              # %if.then.32
	movzbl	1(%rbp), %eax
	movl	$-7, %edx
	cmpl	$18, %eax
	je	.LBB34_30
# BB#11:                                # %cond.true.39
	movq	%rbp, %rdi
.LBB34_3:                               # %cleanup.98
	callq	check_type_failed
	movl	%eax, %edx
.LBB34_30:                              # %cleanup.98
	movl	%edx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_17:                              # %do.end.65
	leal	4(%rax), %edx
	cmpl	$1, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	ja	.LBB34_18
# BB#19:                                # %sw.bb.74
	movl	%eax, %edx
	andl	$-2, %edx
	leaq	(%rcx,%rbx), %rcx
	cmpl	$-4, %edx
	cmovneq	%rbx, %rcx
	leaq	32(%rsp), %rsi
	subq	%rsi, %rcx
	movq	%rcx, %rsi
	shrq	%rsi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	addq	%rsi, 8(%rbp)
	movl	%ecx, %esi
	shrl	%esi
	subl	%esi, %r15d
	cmpl	$-4, %edx
	movl	%r15d, 4(%rbp)
	jne	.LBB34_20
# BB#27:                                # %sw.bb.1.i
	andl	$1, %ecx
	movq	%rcx, 176(%rsp)
	movw	$2816, 168(%rsp)        # imm = 0xB00
	leaq	168(%rsp), %rcx
	movl	$1, %r8d
	movl	$zwritehexstring_continue, %r9d
	movl	%eax, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	s_handle_write_exception
	movl	%eax, %edx
	jmp	.LBB34_30
.LBB34_18:
	movl	$-12, %edx
	jmp	.LBB34_30
.LBB34_20:                              # %sw.default.i
	movq	-8(%rbp), %rax
.LBB34_21:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	240(%rbx), %rax
	movq	256(%rbx), %rsi
	testq	%rax, %rax
	movb	28(%rsi), %cl
	je	.LBB34_25
# BB#22:                                # %land.rhs.i.i
                                        #   in Loop: Header=BB34_21 Depth=1
	testb	%cl, %cl
	je	.LBB34_21
	jmp	.LBB34_23
.LBB34_25:                              # %for.end.i.i
	testb	%cl, %cl
	je	.LBB34_26
.LBB34_23:                              # %if.then.i.i
	addq	$28, %rsi
	callq	gs_errorinfo_put_string
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB34_30
# BB#24:                                # %if.end.i.i
	movq	256(%rbx), %rax
	movb	$0, 28(%rax)
	movl	$-12, %edx
	jmp	.LBB34_30
.LBB34_26:
	movl	$-12, %edx
	jmp	.LBB34_30
.Lfunc_end34:
	.size	zwritehexstring_at, .Lfunc_end34-zwritehexstring_at
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"w"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"1bytesavailable"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1closefile"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1echo"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.filename"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.fileposition"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1fileposition"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0flush"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1flushfile"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1.isprocfilter"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"2.peekstring"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1print"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"1read"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2readhexstring"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"2readline"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"2readstring"
	.size	.L.str.15, 12

	.type	zfileio1_op_defs,@object # @zfileio1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfileio1_op_defs
	.align	16
zfileio1_op_defs:
	.quad	.L.str.1
	.quad	zbytesavailable
	.quad	.L.str.2
	.quad	zclosefile
	.quad	.L.str.3
	.quad	zecho
	.quad	.L.str.4
	.quad	zfilename
	.quad	.L.str.5
	.quad	zxfileposition
	.quad	.L.str.6
	.quad	zfileposition
	.quad	.L.str.7
	.quad	zflush
	.quad	.L.str.8
	.quad	zflushfile
	.quad	.L.str.9
	.quad	zisprocfilter
	.quad	.L.str.10
	.quad	zpeekstring
	.quad	.L.str.11
	.quad	zprint
	.quad	.L.str.12
	.quad	zread
	.quad	.L.str.13
	.quad	zreadhexstring
	.quad	.L.str.14
	.quad	zreadline
	.quad	.L.str.15
	.quad	zreadstring
	.zero	16
	.size	zfileio1_op_defs, 256

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"1resetfile"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"2setfileposition"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"2.unread"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"2write"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"3.writecvp"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"2writehexstring"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"2writestring"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"3%zreadhexstring_continue"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"3%zreadline_continue"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"3%zreadstring_continue"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"4%zwritecvp_continue"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"3%zwritehexstring_continue"
	.size	.L.str.27, 27

	.type	zfileio2_op_defs,@object # @zfileio2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfileio2_op_defs
	.align	16
zfileio2_op_defs:
	.quad	.L.str.16
	.quad	zresetfile
	.quad	.L.str.17
	.quad	zsetfileposition
	.quad	.L.str.18
	.quad	zunread
	.quad	.L.str.19
	.quad	zwrite
	.quad	.L.str.20
	.quad	zwritecvp
	.quad	.L.str.21
	.quad	zwritehexstring
	.quad	.L.str.22
	.quad	zwritestring
	.quad	.L.str.23
	.quad	zreadhexstring_continue
	.quad	.L.str.24
	.quad	zreadline_continue
	.quad	.L.str.25
	.quad	zreadstring_continue
	.quad	.L.str.26
	.quad	zwritecvp_continue
	.quad	.L.str.27
	.quad	zwritehexstring_continue
	.zero	16
	.size	zfileio2_op_defs, 208

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"filename"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"0123456789abcdef"
	.size	.L.str.29, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
