	.text
	.file	"buffer.bc"
	.globl	eol_to_string
	.align	16, 0x90
	.type	eol_to_string,@function
eol_to_string:                          # @eol_to_string
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$4, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB0_6
# BB#8:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	movabsq	$.L.str, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %sw.bb.1
	movabsq	$.L.str.1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_3:                                # %sw.bb.2
	movabsq	$.L.str.2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                # %sw.bb.3
	movabsq	$.L.str.3, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_5:                                # %sw.bb.4
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %sw.default
	callq	abort
.LBB0_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	eol_to_string, .Lfunc_end0-eol_to_string
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_1
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5

	.text
	.globl	option_string_to_eol
	.align	16, 0x90
	.type	option_string_to_eol,@function
option_string_to_eol:                   # @option_string_to_eol
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
	movabsq	$eol_args, %rdx
	movabsq	$eol_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movl	eol_types(,%rcx,4), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	option_string_to_eol, .Lfunc_end1-option_string_to_eol
	.cfi_endproc

	.globl	buffer_stream_set
	.align	16, 0x90
	.type	buffer_stream_set,@function
buffer_stream_set:                      # @buffer_stream_set
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %r9d
	movq	%rcx, %rdx
	callq	buffer_internal_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	buffer_stream_set, .Lfunc_end2-buffer_stream_set
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_internal_set,@function
buffer_internal_set:                    # @buffer_internal_set
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
	subq	$48, %rsp
	movb	%r8b, %al
	xorl	%r8d, %r8d
	movabsq	$xmalloc, %r10
	movabsq	$free, %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movl	%r9d, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-8(%rbp), %rcx
	movq	$0, 16(%rcx)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movb	-33(%rbp), %al
	movq	-8(%rbp), %rcx
	andb	$1, %al
	movb	%al, 32(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 40(%rcx)
	movl	-40(%rbp), %r9d
	movq	-8(%rbp), %rcx
	movl	%r9d, 48(%rcx)
	movq	-8(%rbp), %rcx
	movb	$0, 52(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 56(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 64(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 72(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 80(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 88(%rcx)
	movq	-8(%rbp), %rcx
	addq	$96, %rcx
	movq	%rcx, %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%r10, %rcx
	movq	%r11, %r8
	callq	_obstack_begin
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	buffer_internal_set, .Lfunc_end3-buffer_internal_set
	.cfi_endproc

	.globl	buffer_pipe_set
	.align	16, 0x90
	.type	buffer_pipe_set,@function
buffer_pipe_set:                        # @buffer_pipe_set
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %r9d
	movq	%rcx, %rdx
	callq	buffer_internal_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	buffer_pipe_set, .Lfunc_end4-buffer_pipe_set
	.cfi_endproc

	.globl	buffer_string_set
	.align	16, 0x90
	.type	buffer_string_set,@function
buffer_string_set:                      # @buffer_string_set
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movl	-20(%rbp), %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	buffer_internal_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	buffer_string_set, .Lfunc_end5-buffer_string_set
	.cfi_endproc

	.globl	buffer_buffer_set
	.align	16, 0x90
	.type	buffer_buffer_set,@function
buffer_buffer_set:                      # @buffer_buffer_set
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r9d
	movq	%r8, %rsi
	movl	%eax, %r8d
	callq	buffer_internal_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	buffer_buffer_set, .Lfunc_end6-buffer_buffer_set
	.cfi_endproc

	.globl	buffer_self_print
	.align	16, 0x90
	.type	buffer_self_print,@function
buffer_self_print:                      # @buffer_self_print
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.7, %rcx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movb	32(%rdx), %r8b
	testb	$1, %r8b
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB7_4:                                # %if.end.6
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movq	-8(%rbp), %rax
	movq	64(%rax), %r8
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rdx
	cmpq	$0, 80(%rdx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB7_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB7_6:                                # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	buffer_self_print, .Lfunc_end7-buffer_self_print
	.cfi_endproc

	.globl	buffer_release
	.align	16, 0x90
	.type	buffer_release,@function
buffer_release:                         # @buffer_release
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	testb	$1, 52(%rdi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	free
.LBB8_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	buffer_release, .Lfunc_end8-buffer_release
	.cfi_endproc

	.globl	buffer_set_lower_case
	.align	16, 0x90
	.type	buffer_set_lower_case,@function
buffer_set_lower_case:                  # @buffer_set_lower_case
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rdi
	andb	$1, %al
	movb	%al, 52(%rdi)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	buffer_set_lower_case, .Lfunc_end9-buffer_set_lower_case
	.cfi_endproc

	.globl	buffer_get
	.align	16, 0x90
	.type	buffer_get,@function
buffer_get:                             # @buffer_get
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB10_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	buffer_string_get_line
	andb	$1, %al
	movb	%al, -9(%rbp)
.LBB10_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true.2
	testb	$1, -9(%rbp)
	jne	.LBB10_6
# BB#5:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	buffer_stream_get_line
	andb	$1, %al
	movb	%al, -9(%rbp)
.LBB10_6:                               # %if.end.7
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB10_8
# BB#7:                                 # %if.then.15
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	_obstack_newchunk
.LBB10_8:                               # %if.end.16
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$0, (%rcx)
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_10
# BB#9:                                 # %if.then.25
	movq	-48(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB10_10:                              # %if.end.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$0, %rdx
	movq	-48(%rbp), %rsi
	movslq	48(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-48(%rbp), %rsi
	movl	48(%rsi), %eax
	xorl	$-1, %eax
	movslq	%eax, %rsi
	andq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-48(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB10_12
# BB#11:                                # %if.then.46
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB10_12:                              # %if.end.49
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rax)
	movq	-8(%rbp), %rax
	cmpq	$2, 80(%rax)
	jb	.LBB10_15
# BB#13:                                # %land.lhs.true.56
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	subq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$12, %edx
	jne	.LBB10_15
# BB#14:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	80(%rax), %rcx
	movq	%rcx, %rdx
	addq	$-1, %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movb	$0, -1(%rax,%rcx)
.LBB10_15:                              # %if.end.66
	movq	-8(%rbp), %rax
	testb	$1, 52(%rax)
	je	.LBB10_23
# BB#16:                                # %if.then.68
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	ja	.LBB10_18
# BB#17:                                # %if.then.73
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB10_18:                              # %if.end.77
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	$0, -72(%rbp)
.LBB10_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	ja	.LBB10_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	callq	tolower
	movb	%al, %dl
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rsi
	movb	%dl, (%rsi,%rcx)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB10_19
.LBB10_22:                              # %for.end
	jmp	.LBB10_24
.LBB10_23:                              # %if.else
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB10_24:                              # %if.end.95
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	buffer_get, .Lfunc_end10-buffer_get
	.cfi_endproc

	.align	16, 0x90
	.type	buffer_string_get_line,@function
buffer_string_get_line:                 # @buffer_string_get_line
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB11_3
# BB#2:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rcx), %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	jmp	.LBB11_4
.LBB11_3:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB11_4:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	je	.LBB11_47
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB11_6
	jmp	.LBB11_49
.LBB11_49:                              # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB11_24
	jmp	.LBB11_42
.LBB11_6:                               # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB11_21
# BB#51:                                # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_7:                               # %sw.bb.6
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_43
.LBB11_8:                               # %sw.bb.7
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB11_10
# BB#9:                                 # %cond.true.12
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rcx), %esi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	jmp	.LBB11_11
.LBB11_10:                              # %cond.false.18
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rcx)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB11_11:                              # %cond.end.21
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$13, %eax
	je	.LBB11_13
# BB#12:                                # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 16(%rax)
.LBB11_13:                              # %if.end
	jmp	.LBB11_21
.LBB11_14:                              # %sw.bb.26
	jmp	.LBB11_21
.LBB11_15:                              # %sw.bb.27
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB11_17
# BB#16:                                # %cond.true.32
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rcx), %esi
	movl	%esi, -88(%rbp)         # 4-byte Spill
	jmp	.LBB11_18
.LBB11_17:                              # %cond.false.38
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rcx)
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB11_18:                              # %cond.end.41
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$13, %eax
	je	.LBB11_20
# BB#19:                                # %if.then.45
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB11_43
.LBB11_20:                              # %if.end.48
	jmp	.LBB11_21
.LBB11_21:                              # %sw.epilog
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB11_23
# BB#22:                                # %if.then.51
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	_obstack_newchunk
.LBB11_23:                              # %if.end.52
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	movb	$1, -1(%rbp)
	jmp	.LBB11_48
.LBB11_24:                              # %sw.bb.55
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB11_39
# BB#50:                                # %sw.bb.55
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_25:                              # %sw.bb.57
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_43
.LBB11_26:                              # %sw.bb.58
	movl	$10, -20(%rbp)
	jmp	.LBB11_39
.LBB11_27:                              # %sw.bb.59
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB11_29
# BB#28:                                # %cond.true.64
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rcx), %esi
	movl	%esi, -108(%rbp)        # 4-byte Spill
	jmp	.LBB11_30
.LBB11_29:                              # %cond.false.70
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rcx)
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB11_30:                              # %cond.end.73
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$10, %eax
	je	.LBB11_32
# BB#31:                                # %if.then.77
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 16(%rax)
.LBB11_32:                              # %if.end.80
	movl	$10, -20(%rbp)
	jmp	.LBB11_39
.LBB11_33:                              # %sw.bb.81
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB11_35
# BB#34:                                # %cond.true.86
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax,%rcx), %esi
	movl	%esi, -112(%rbp)        # 4-byte Spill
	jmp	.LBB11_36
.LBB11_35:                              # %cond.false.92
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rdx
	addq	$1, %rdx
	movq	%rdx, 16(%rcx)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB11_36:                              # %cond.end.95
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	cmpl	$10, %eax
	je	.LBB11_38
# BB#37:                                # %if.then.99
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB11_43
.LBB11_38:                              # %if.end.102
	movl	$10, -20(%rbp)
.LBB11_39:                              # %sw.epilog.103
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB11_41
# BB#40:                                # %if.then.111
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	_obstack_newchunk
.LBB11_41:                              # %if.end.112
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	movb	$1, -1(%rbp)
	jmp	.LBB11_48
.LBB11_42:                              # %sw.default
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_43
.LBB11_43:                              # %string_plain_char
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB11_45
# BB#44:                                # %if.then.123
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	_obstack_newchunk
.LBB11_45:                              # %if.end.124
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
# BB#46:                                # %sw.epilog.128
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_47:                              # %while.end
	movb	$0, -1(%rbp)
.LBB11_48:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	buffer_string_get_line, .Lfunc_end11-buffer_string_get_line
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_26
	.quad	.LBB11_25
	.quad	.LBB11_33
	.quad	.LBB11_25
	.quad	.LBB11_27
.LJTI11_1:
	.quad	.LBB11_7
	.quad	.LBB11_14
	.quad	.LBB11_7
	.quad	.LBB11_15
	.quad	.LBB11_8

	.text
	.align	16, 0x90
	.type	buffer_stream_get_line,@function
buffer_stream_get_line:                 # @buffer_stream_get_line
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	je	.LBB12_32
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$10, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB12_3
	jmp	.LBB12_34
.LBB12_34:                              # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB12_15
	jmp	.LBB12_27
.LBB12_3:                               # %sw.bb
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB12_12
# BB#36:                                # %sw.bb
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_4:                               # %sw.bb.1
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_28
.LBB12_5:                               # %sw.bb.2
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$13, %eax
	je	.LBB12_7
# BB#6:                                 # %if.then
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	ungetc
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB12_7:                               # %if.end
	jmp	.LBB12_12
.LBB12_8:                               # %sw.bb.8
	jmp	.LBB12_12
.LBB12_9:                               # %sw.bb.9
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$13, %eax
	je	.LBB12_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	ungetc
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB12_28
.LBB12_11:                              # %if.end.16
	jmp	.LBB12_12
.LBB12_12:                              # %sw.epilog
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB12_14
# BB#13:                                # %if.then.18
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	_obstack_newchunk
.LBB12_14:                              # %if.end.19
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	movb	$1, -1(%rbp)
	jmp	.LBB12_33
.LBB12_15:                              # %sw.bb.21
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$4, %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB12_24
# BB#35:                                # %sw.bb.21
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_16:                              # %sw.bb.23
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_28
.LBB12_17:                              # %sw.bb.24
	movl	$10, -20(%rbp)
	jmp	.LBB12_24
.LBB12_18:                              # %sw.bb.25
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$10, %eax
	je	.LBB12_20
# BB#19:                                # %if.then.30
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	ungetc
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB12_20:                              # %if.end.33
	movl	$10, -20(%rbp)
	jmp	.LBB12_24
.LBB12_21:                              # %sw.bb.34
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$10, %eax
	je	.LBB12_23
# BB#22:                                # %if.then.39
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	ungetc
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB12_28
.LBB12_23:                              # %if.end.42
	movl	$10, -20(%rbp)
.LBB12_24:                              # %sw.epilog.43
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-40(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB12_26
# BB#25:                                # %if.then.51
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	_obstack_newchunk
.LBB12_26:                              # %if.end.52
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
	movb	$1, -1(%rbp)
	jmp	.LBB12_33
.LBB12_27:                              # %sw.default
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_28
.LBB12_28:                              # %stream_plain_char
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB12_30
# BB#29:                                # %if.then.63
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	_obstack_newchunk
.LBB12_30:                              # %if.end.64
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 24(%rdx)
	movb	%cl, (%rsi)
# BB#31:                                # %sw.epilog.68
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_32:                              # %while.end
	movb	$0, -1(%rbp)
.LBB12_33:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	buffer_stream_get_line, .Lfunc_end12-buffer_stream_get_line
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_17
	.quad	.LBB12_16
	.quad	.LBB12_21
	.quad	.LBB12_16
	.quad	.LBB12_18
.LJTI12_1:
	.quad	.LBB12_4
	.quad	.LBB12_8
	.quad	.LBB12_4
	.quad	.LBB12_9
	.quad	.LBB12_5

	.text
	.globl	buffer_sample_get
	.align	16, 0x90
	.type	buffer_sample_get,@function
buffer_sample_get:                      # @buffer_sample_get
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	xwfopen
	movl	$512, %ecx              # imm = 0x200
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	callq	xmalloc
	movq	%rax, -48(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$512, -32(%rbp)         # imm = 0x200
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jae	.LBB13_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, %eax
	setne	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB13_3:                               # %land.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_4
	jmp	.LBB13_6
.LBB13_4:                               # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-36(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_1
.LBB13_6:                               # %for.end
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	buffer_sample_get, .Lfunc_end13-buffer_sample_get
	.cfi_endproc

	.globl	buffer_save
	.align	16, 0x90
	.type	buffer_save,@function
buffer_save:                            # @buffer_save
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	xwfopen
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
.LBB14_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB14_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -36(%rbp)         # 4-byte Spill
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_2
.LBB14_5:                               # %for.end
	jmp	.LBB14_6
.LBB14_6:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_8
# BB#7:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	streams_copy
.LBB14_8:                               # %if.end.6
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -40(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	buffer_save, .Lfunc_end14-buffer_save
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\r"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\\n"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\\r\\n"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\\n\\r"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"any type"
	.size	.L.str.4, 9

	.type	eol_args,@object        # @eol_args
	.section	.rodata,"a",@progbits
	.align	16
eol_args:
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	0
	.size	eol_args, 88

	.type	eol_types,@object       # @eol_types
	.align	16
eol_types:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.size	eol_types, 40

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"A string buffer.  Bufoffset %u\n"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"A stream buffer (%s).\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pipe"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Len = %d, Lower case = %d, Line = %d\n"
	.size	.L.str.9, 38

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Content = `%s'\n"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"r"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"mac"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"n"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unix"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"nr"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"rn"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pc"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"auto"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"any"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"4x4"
	.size	.L.str.20, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
