	.text
	.file	"stream.bc"
	.globl	stream_ropen
	.align	16, 0x90
	.type	stream_ropen,@function
stream_ropen:                           # @stream_ropen
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
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_stream_ropen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	stream_ropen, .Lfunc_end0-stream_ropen
	.cfi_endproc

	.align	16, 0x90
	.type	_stream_ropen,@function
_stream_ropen:                          # @_stream_ropen
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
	subq	$32, %rsp
	movb	%sil, %al
	movl	$16, %esi
	movl	%esi, %ecx
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movb	-9(%rbp), %dl
	movq	-24(%rbp), %rax
	andb	$1, %dl
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	testb	$1, (%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	xrpopen
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_7
.LBB1_2:                                # %if.else
	cmpq	$0, -8(%rbp)
	je	.LBB1_5
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB1_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	callq	xrfopen
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.11
	movq	stdin, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.13
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_stream_ropen, .Lfunc_end1-_stream_ropen
	.cfi_endproc

	.globl	stream_wopen
	.align	16, 0x90
	.type	stream_wopen,@function
stream_wopen:                           # @stream_wopen
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
	subq	$16, %rsp
	movb	%sil, %al
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	_stream_wopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	stream_wopen, .Lfunc_end2-stream_wopen
	.cfi_endproc

	.align	16, 0x90
	.type	_stream_wopen,@function
_stream_wopen:                          # @_stream_wopen
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
	movb	%sil, %al
	movl	$16, %esi
	movl	%esi, %ecx
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movb	-9(%rbp), %r8b
	movq	-24(%rbp), %rax
	andb	$1, %r8b
	movb	%r8b, (%rax)
	movq	-24(%rbp), %rax
	testb	$1, (%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	xwpopen
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	cmpq	$0, -8(%rbp)
	je	.LBB3_5
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	callq	fopen_backup
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.11
	movq	stdout, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.13
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_stream_wopen, .Lfunc_end3-_stream_wopen
	.cfi_endproc

	.globl	stream_wopen_backup
	.align	16, 0x90
	.type	stream_wopen_backup,@function
stream_wopen_backup:                    # @stream_wopen_backup
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movl	-16(%rbp), %edx
	andb	$1, %al
	movzbl	%al, %esi
	callq	_stream_wopen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	stream_wopen_backup, .Lfunc_end4-stream_wopen_backup
	.cfi_endproc

	.globl	stream_perl_open_backup
	.align	16, 0x90
	.type	stream_perl_open_backup,@function
stream_perl_open_backup:                # @stream_perl_open_backup
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_2
# BB#1:                                 # %cond.true
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$127, %edx
	movabsq	$.L__PRETTY_FUNCTION__.stream_perl_open_backup, %rcx
	callq	__assert_fail
.LBB5_3:                                # %cond.end
	jmp	.LBB5_4
.LBB5_4:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	quotearg
	movabsq	$.L.str.2, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %do.end
	movq	-16(%rbp), %rax
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strspn
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	%rsi, (%rax)
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$62, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	je	.LBB5_9
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$124, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB5_10
	jmp	.LBB5_8
.LBB5_8:                                # %sw.bb
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_stream_wopen
	movq	%rax, -8(%rbp)
	jmp	.LBB5_13
.LBB5_9:                                # %sw.bb.5
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %edx
	callq	_stream_wopen
	movq	%rax, -8(%rbp)
	jmp	.LBB5_13
.LBB5_10:                               # %sw.default
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	decl	%ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdi
	movzbl	(%rdi,%rax), %ecx
	subl	$124, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jne	.LBB5_12
	jmp	.LBB5_11
.LBB5_11:                               # %sw.bb.10
	movslq	-44(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movl	-44(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	callq	strncpy
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	_stream_ropen
	movq	%rax, -8(%rbp)
	jmp	.LBB5_13
.LBB5_12:                               # %sw.default.16
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	_stream_ropen
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	stream_perl_open_backup, .Lfunc_end5-stream_perl_open_backup
	.cfi_endproc

	.globl	stream_close
	.align	16, 0x90
	.type	stream_close,@function
stream_close:                           # @stream_close
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	testb	$1, (%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fclose
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	pclose
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB6_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	stream_close, .Lfunc_end6-stream_close
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"perl_command"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"stream.c"
	.size	.L.str.1, 9

	.type	.L__PRETTY_FUNCTION__.stream_perl_open_backup,@object # @__PRETTY_FUNCTION__.stream_perl_open_backup
.L__PRETTY_FUNCTION__.stream_perl_open_backup:
	.asciz	"struct stream *stream_perl_open_backup(const char *, enum backup_type, const char **)"
	.size	.L__PRETTY_FUNCTION__.stream_perl_open_backup, 86

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"perl-open (%s)\n"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\t >|"
	.size	.L.str.3, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
